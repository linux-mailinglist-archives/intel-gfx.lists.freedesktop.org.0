Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0976546F5
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Dec 2022 21:03:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEA4910E57A;
	Thu, 22 Dec 2022 20:02:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2968210E57A;
 Thu, 22 Dec 2022 20:02:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 21F12AADE2;
 Thu, 22 Dec 2022 20:02:56 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4333059149692534488=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Thu, 22 Dec 2022 20:02:56 -0000
Message-ID: <167173937608.14838.3821222244111566615@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221222120048.8740-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221222120048.8740-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_vblank_stuff?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============4333059149692534488==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: vblank stuff
URL   : https://patchwork.freedesktop.org/series/112170/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12523 -> Patchwork_112170v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_112170v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_112170v1, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/index.html

Participating hosts (44 -> 47)
------------------------------

  Additional (3): fi-hsw-4770 bat-rpls-2 fi-tgl-dsi 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_112170v1:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-adl-ddr5:        [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-adl-ddr5/igt@core_hotunplug@unbind-rebind.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-adl-ddr5/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-guc:         [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-8700k:       [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html
    - fi-skl-6600u:       [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-skl-6600u/igt@core_hotunplug@unbind-rebind.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-skl-6600u/igt@core_hotunplug@unbind-rebind.html
    - fi-icl-u2:          [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html
    - fi-rkl-guc:         [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-soraka:      [PASS][13] -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-kbl-soraka/igt@core_hotunplug@unbind-rebind.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-kbl-soraka/igt@core_hotunplug@unbind-rebind.html
    - bat-dg1-6:          [PASS][15] -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg1-6/igt@core_hotunplug@unbind-rebind.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg1-6/igt@core_hotunplug@unbind-rebind.html
    - bat-adlp-4:         [PASS][17] -> [INCOMPLETE][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adlp-4/igt@core_hotunplug@unbind-rebind.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-4/igt@core_hotunplug@unbind-rebind.html
    - fi-rkl-11600:       [PASS][19] -> [INCOMPLETE][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html
    - bat-dg1-5:          [PASS][21] -> [INCOMPLETE][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg1-5/igt@core_hotunplug@unbind-rebind.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg1-5/igt@core_hotunplug@unbind-rebind.html
    - fi-glk-j4005:       [PASS][23] -> [INCOMPLETE][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-glk-j4005/igt@core_hotunplug@unbind-rebind.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-glk-j4005/igt@core_hotunplug@unbind-rebind.html
    - fi-skl-6700k2:      [PASS][25] -> [INCOMPLETE][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html
    - fi-cfl-8109u:       [PASS][27] -> [INCOMPLETE][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-8809g:       [PASS][29] -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html

  * igt@debugfs_test@read_all_entries:
    - fi-skl-guc:         [PASS][31] -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-skl-guc/igt@debugfs_test@read_all_entries.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-skl-guc/igt@debugfs_test@read_all_entries.html

  * igt@i915_pm_backlight@basic-brightness:
    - fi-skl-6600u:       NOTRUN -> [INCOMPLETE][33]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-skl-6600u/igt@i915_pm_backlight@basic-brightness.html
    - fi-icl-u2:          NOTRUN -> [INCOMPLETE][34]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-icl-u2/igt@i915_pm_backlight@basic-brightness.html
    - fi-kbl-soraka:      NOTRUN -> [INCOMPLETE][35]
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-kbl-soraka/igt@i915_pm_backlight@basic-brightness.html
    - bat-adlp-4:         NOTRUN -> [INCOMPLETE][36]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-4/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rpm@basic-rte:
    - fi-kbl-8809g:       [PASS][37] -> [FAIL][38] +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-kbl-8809g/igt@i915_pm_rpm@basic-rte.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-kbl-8809g/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@execlists:
    - fi-bsw-nick:        [PASS][39] -> [INCOMPLETE][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-bsw-nick/igt@i915_selftest@live@execlists.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@sanitycheck:
    - fi-kbl-7567u:       [PASS][41] -> [DMESG-WARN][42] +41 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html

  * igt@kms_busy@basic@flip:
    - fi-cfl-8700k:       [PASS][43] -> [FAIL][44] +45 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-cfl-8700k/igt@kms_busy@basic@flip.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-8700k/igt@kms_busy@basic@flip.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor@legacy:
    - fi-rkl-11600:       [PASS][45] -> [FAIL][46] +47 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-rkl-11600/igt@kms_cursor_legacy@basic-flip-before-cursor@legacy.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-rkl-11600/igt@kms_cursor_legacy@basic-flip-before-cursor@legacy.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor@toggle:
    - fi-icl-u2:          [PASS][47] -> [FAIL][48] +75 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor@toggle.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor@toggle.html

  * igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a1:
    - fi-cfl-guc:         [PASS][49] -> [FAIL][50] +45 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a1.html

  * igt@kms_flip@basic-flip-vs-dpms@c-dp1:
    - fi-apl-guc:         [PASS][51] -> [FAIL][52] +44 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html

  * igt@kms_flip@basic-flip-vs-modeset@b-hdmi-a2:
    - bat-dg1-5:          [PASS][53] -> [FAIL][54] +57 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg1-5/igt@kms_flip@basic-flip-vs-modeset@b-hdmi-a2.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg1-5/igt@kms_flip@basic-flip-vs-modeset@b-hdmi-a2.html

  * igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a2:
    - fi-adl-ddr5:        [PASS][55] -> [FAIL][56] +57 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-adl-ddr5/igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a2.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-adl-ddr5/igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a2.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:
    - fi-kbl-soraka:      [PASS][57] -> [FAIL][58] +51 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html

  * igt@kms_flip@basic-plain-flip@a-hdmi-a1:
    - fi-skl-6700k2:      [PASS][59] -> [FAIL][60] +74 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-skl-6700k2/igt@kms_flip@basic-plain-flip@a-hdmi-a1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-skl-6700k2/igt@kms_flip@basic-plain-flip@a-hdmi-a1.html

  * igt@kms_flip@basic-plain-flip@b-hdmi-a2:
    - fi-glk-j4005:       [PASS][61] -> [FAIL][62] +47 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-glk-j4005/igt@kms_flip@basic-plain-flip@b-hdmi-a2.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-glk-j4005/igt@kms_flip@basic-plain-flip@b-hdmi-a2.html

  * igt@kms_flip@basic-plain-flip@c-hdmi-a2:
    - bat-dg1-6:          [PASS][63] -> [FAIL][64] +57 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg1-6/igt@kms_flip@basic-plain-flip@c-hdmi-a2.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg1-6/igt@kms_flip@basic-plain-flip@c-hdmi-a2.html

  * igt@kms_force_connector_basic@force-connector-state:
    - fi-kbl-7567u:       [PASS][65] -> [FAIL][66] +3 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck@pipe-b-dp-2:
    - fi-cfl-8109u:       [PASS][67] -> [FAIL][68] +57 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck@pipe-b-dp-2.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck@pipe-b-dp-2.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-edp-1:
    - fi-skl-6600u:       [PASS][69] -> [FAIL][70] +51 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-skl-6600u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-edp-1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-skl-6600u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-edp-1.html

  * igt@kms_pipe_crc_basic@read-crc@pipe-b-hdmi-a-1:
    - fi-rkl-guc:         [PASS][71] -> [FAIL][72] +47 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-rkl-guc/igt@kms_pipe_crc_basic@read-crc@pipe-b-hdmi-a-1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-rkl-guc/igt@kms_pipe_crc_basic@read-crc@pipe-b-hdmi-a-1.html

  * igt@kms_pipe_crc_basic@read-crc@pipe-d-edp-1:
    - bat-adlp-4:         [PASS][73] -> [FAIL][74] +55 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adlp-4/igt@kms_pipe_crc_basic@read-crc@pipe-d-edp-1.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-4/igt@kms_pipe_crc_basic@read-crc@pipe-d-edp-1.html

  
#### Warnings ####

  * igt@kms_chamelium@dp-crc-fast:
    - bat-adlp-4:         [SKIP][75] ([fdo#111827]) -> [FAIL][76] +7 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html
    - bat-dg1-5:          [SKIP][77] ([fdo#111827]) -> [FAIL][78] +7 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg1-5/igt@kms_chamelium@dp-crc-fast.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg1-5/igt@kms_chamelium@dp-crc-fast.html
    - fi-skl-6700k2:      [SKIP][79] ([fdo#109271]) -> [FAIL][80] +4 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-skl-6700k2/igt@kms_chamelium@dp-crc-fast.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-skl-6700k2/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-adl-ddr5:        [SKIP][81] ([fdo#111827]) -> [FAIL][82] +7 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-adl-ddr5/igt@kms_chamelium@dp-edid-read.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-adl-ddr5/igt@kms_chamelium@dp-edid-read.html
    - fi-cfl-guc:         [SKIP][83] ([fdo#109271] / [fdo#111827]) -> [FAIL][84] +7 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-cfl-guc/igt@kms_chamelium@dp-edid-read.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-guc/igt@kms_chamelium@dp-edid-read.html
    - fi-cfl-8700k:       [SKIP][85] ([fdo#109271] / [fdo#111827]) -> [FAIL][86] +7 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-cfl-8700k/igt@kms_chamelium@dp-edid-read.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-8700k/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-kbl-7567u:       [SKIP][87] ([fdo#109271] / [fdo#111827]) -> [FAIL][88] +8 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-kbl-7567u/igt@kms_chamelium@dp-hpd-fast.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-kbl-7567u/igt@kms_chamelium@dp-hpd-fast.html
    - fi-kbl-8809g:       [SKIP][89] ([fdo#109271] / [fdo#111827]) -> [FAIL][90] +7 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-kbl-8809g/igt@kms_chamelium@dp-hpd-fast.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-kbl-8809g/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-skl-6600u:       [SKIP][91] ([fdo#109271] / [fdo#111827]) -> [FAIL][92] +7 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-skl-6600u/igt@kms_chamelium@hdmi-crc-fast.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-skl-6600u/igt@kms_chamelium@hdmi-crc-fast.html
    - fi-apl-guc:         [SKIP][93] ([fdo#109271] / [fdo#111827]) -> [FAIL][94] +7 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-apl-guc/igt@kms_chamelium@hdmi-crc-fast.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-apl-guc/igt@kms_chamelium@hdmi-crc-fast.html
    - fi-rkl-guc:         [SKIP][95] ([fdo#111827]) -> [FAIL][96] +7 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-rkl-guc/igt@kms_chamelium@hdmi-crc-fast.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-rkl-guc/igt@kms_chamelium@hdmi-crc-fast.html
    - bat-dg1-6:          [SKIP][97] ([fdo#111827]) -> [FAIL][98] +7 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg1-6/igt@kms_chamelium@hdmi-crc-fast.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg1-6/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-glk-j4005:       [SKIP][99] ([fdo#109271] / [fdo#111827]) -> [FAIL][100] +7 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-glk-j4005/igt@kms_chamelium@hdmi-edid-read.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-glk-j4005/igt@kms_chamelium@hdmi-edid-read.html
    - fi-rkl-11600:       [SKIP][101] ([fdo#111827]) -> [FAIL][102] +7 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-rkl-11600/igt@kms_chamelium@hdmi-edid-read.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-rkl-11600/igt@kms_chamelium@hdmi-edid-read.html
    - fi-cfl-8109u:       [SKIP][103] ([fdo#109271] / [fdo#111827]) -> [FAIL][104] +7 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-cfl-8109u/igt@kms_chamelium@hdmi-edid-read.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-8109u/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-icl-u2:          [SKIP][105] ([fdo#111827]) -> [FAIL][106] +7 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html
    - fi-kbl-soraka:      [SKIP][107] ([fdo#109271] / [fdo#111827]) -> [FAIL][108] +7 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-skl-6700k2:      [SKIP][109] ([fdo#109271]) -> [INCOMPLETE][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-skl-6700k2/igt@kms_setmode@basic-clone-single-crtc.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-skl-6700k2/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-cfl-8109u:       [SKIP][111] ([fdo#109271]) -> [INCOMPLETE][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-cfl-8109u/igt@kms_setmode@basic-clone-single-crtc.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-8109u/igt@kms_setmode@basic-clone-single-crtc.html
    - fi-icl-u2:          [SKIP][113] ([i915#3555]) -> [INCOMPLETE][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@core_hotunplug@unbind-rebind:
    - {fi-ehl-2}:         [PASS][115] -> [INCOMPLETE][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-ehl-2/igt@core_hotunplug@unbind-rebind.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-ehl-2/igt@core_hotunplug@unbind-rebind.html
    - {bat-dg2-9}:        [PASS][117] -> [INCOMPLETE][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg2-9/igt@core_hotunplug@unbind-rebind.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg2-9/igt@core_hotunplug@unbind-rebind.html
    - {bat-adlp-6}:       [PASS][119] -> [INCOMPLETE][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adlp-6/igt@core_hotunplug@unbind-rebind.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-6/igt@core_hotunplug@unbind-rebind.html
    - {bat-jsl-3}:        [PASS][121] -> [INCOMPLETE][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-jsl-3/igt@core_hotunplug@unbind-rebind.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-jsl-3/igt@core_hotunplug@unbind-rebind.html
    - {bat-dg2-11}:       [PASS][123] -> [INCOMPLETE][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg2-11/igt@core_hotunplug@unbind-rebind.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg2-11/igt@core_hotunplug@unbind-rebind.html
    - {fi-jsl-1}:         [PASS][125] -> [INCOMPLETE][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-jsl-1/igt@core_hotunplug@unbind-rebind.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-jsl-1/igt@core_hotunplug@unbind-rebind.html
    - {bat-adlp-9}:       [PASS][127] -> [INCOMPLETE][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adlp-9/igt@core_hotunplug@unbind-rebind.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-9/igt@core_hotunplug@unbind-rebind.html
    - {bat-adln-1}:       [PASS][129] -> [INCOMPLETE][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adln-1/igt@core_hotunplug@unbind-rebind.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adln-1/igt@core_hotunplug@unbind-rebind.html
    - {fi-tgl-dsi}:       NOTRUN -> [INCOMPLETE][131]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-tgl-dsi/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - {bat-rpls-1}:       [DMESG-WARN][132] ([i915#6687]) -> [DMESG-WARN][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_pm_backlight@basic-brightness:
    - {bat-adln-1}:       NOTRUN -> [INCOMPLETE][134]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adln-1/igt@i915_pm_backlight@basic-brightness.html
    - {fi-ehl-2}:         NOTRUN -> [INCOMPLETE][135]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-ehl-2/igt@i915_pm_backlight@basic-brightness.html
    - {bat-adlp-6}:       NOTRUN -> [INCOMPLETE][136]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-6/igt@i915_pm_backlight@basic-brightness.html
    - {bat-jsl-3}:        NOTRUN -> [INCOMPLETE][137]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-jsl-3/igt@i915_pm_backlight@basic-brightness.html
    - {fi-jsl-1}:         NOTRUN -> [INCOMPLETE][138]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-jsl-1/igt@i915_pm_backlight@basic-brightness.html

  * igt@i915_pm_rpm@basic-pci-d3-state:
    - {bat-dg2-8}:        [SKIP][139] ([i915#7498]) -> [FAIL][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg2-8/igt@i915_pm_rpm@basic-pci-d3-state.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg2-8/igt@i915_pm_rpm@basic-pci-d3-state.html
    - {bat-dg2-9}:        [SKIP][141] ([i915#7498]) -> [FAIL][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg2-9/igt@i915_pm_rpm@basic-pci-d3-state.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg2-9/igt@i915_pm_rpm@basic-pci-d3-state.html

  * igt@i915_pm_rpm@module-reload:
    - {bat-kbl-2}:        [PASS][143] -> [FAIL][144] +3 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-kbl-2/igt@i915_pm_rpm@module-reload.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-kbl-2/igt@i915_pm_rpm@module-reload.html
    - {bat-dg2-8}:        [PASS][145] -> [FAIL][146] +2 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg2-8/igt@i915_pm_rpm@module-reload.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg2-8/igt@i915_pm_rpm@module-reload.html

  * igt@i915_selftest@live@client:
    - {bat-dg2-8}:        [PASS][147] -> [DMESG-WARN][148] +46 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg2-8/igt@i915_selftest@live@client.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg2-8/igt@i915_selftest@live@client.html
    - {bat-adlm-1}:       [PASS][149] -> [DMESG-WARN][150] +41 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adlm-1/igt@i915_selftest@live@client.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlm-1/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@gt_engines:
    - {bat-rpls-2}:       NOTRUN -> [DMESG-WARN][151] +39 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-rpls-2/igt@i915_selftest@live@gt_engines.html

  * igt@i915_selftest@live@gt_heartbeat:
    - {bat-dg2-oem1}:     [PASS][152] -> [DMESG-WARN][153] +43 similar issues
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg2-oem1/igt@i915_selftest@live@gt_heartbeat.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg2-oem1/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@requests:
    - {bat-kbl-2}:        [PASS][154] -> [DMESG-WARN][155] +41 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-kbl-2/igt@i915_selftest@live@requests.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-kbl-2/igt@i915_selftest@live@requests.html

  * igt@i915_selftest@live@uncore:
    - {bat-dg1-7}:        [PASS][156] -> [DMESG-WARN][157] +47 similar issues
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg1-7/igt@i915_selftest@live@uncore.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg1-7/igt@i915_selftest@live@uncore.html

  * igt@i915_selftest@live@workarounds:
    - {bat-rpls-1}:       [PASS][158] -> [DMESG-WARN][159] +39 similar issues
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-rpls-1/igt@i915_selftest@live@workarounds.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-rpls-1/igt@i915_selftest@live@workarounds.html

  * igt@kms_busy@basic@modeset:
    - {fi-ehl-2}:         [PASS][160] -> [FAIL][161] +51 similar issues
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-ehl-2/igt@kms_busy@basic@modeset.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-ehl-2/igt@kms_busy@basic@modeset.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - {bat-rpls-1}:       NOTRUN -> [FAIL][162]
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-rpls-1/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-crc-fast:
    - {bat-jsl-3}:        [SKIP][163] ([fdo#111827]) -> [FAIL][164] +7 similar issues
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-jsl-3/igt@kms_chamelium@dp-crc-fast.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-jsl-3/igt@kms_chamelium@dp-crc-fast.html
    - {bat-dg1-7}:        [SKIP][165] ([fdo#111827]) -> [FAIL][166] +8 similar issues
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg1-7/igt@kms_chamelium@dp-crc-fast.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg1-7/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-edid-read:
    - {fi-ehl-2}:         [SKIP][167] ([fdo#111827]) -> [FAIL][168] +7 similar issues
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-ehl-2/igt@kms_chamelium@dp-edid-read.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-ehl-2/igt@kms_chamelium@dp-edid-read.html
    - {bat-dg2-9}:        [SKIP][169] ([fdo#111827]) -> [FAIL][170] +7 similar issues
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg2-9/igt@kms_chamelium@dp-edid-read.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg2-9/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@dp-hpd-fast:
    - {bat-adln-1}:       [SKIP][171] ([fdo#111827]) -> [FAIL][172] +7 similar issues
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adln-1/igt@kms_chamelium@dp-hpd-fast.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adln-1/igt@kms_chamelium@dp-hpd-fast.html
    - {fi-tgl-dsi}:       NOTRUN -> [FAIL][173] +65 similar issues
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-tgl-dsi/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_chamelium@hdmi-edid-read:
    - {bat-dg2-8}:        [SKIP][174] ([fdo#111827]) -> [FAIL][175] +8 similar issues
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg2-8/igt@kms_chamelium@hdmi-edid-read.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg2-8/igt@kms_chamelium@hdmi-edid-read.html
    - {bat-adlm-1}:       [SKIP][176] ([fdo#111827]) -> [FAIL][177] +8 similar issues
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adlm-1/igt@kms_chamelium@hdmi-edid-read.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlm-1/igt@kms_chamelium@hdmi-edid-read.html
    - {fi-jsl-1}:         [SKIP][178] ([fdo#111827]) -> [FAIL][179] +7 similar issues
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-jsl-1/igt@kms_chamelium@hdmi-edid-read.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-jsl-1/igt@kms_chamelium@hdmi-edid-read.html
    - {bat-rpls-1}:       [SKIP][180] ([fdo#111827]) -> [FAIL][181] +7 similar issues
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-rpls-1/igt@kms_chamelium@hdmi-edid-read.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-rpls-1/igt@kms_chamelium@hdmi-edid-read.html
    - {bat-adlp-9}:       [SKIP][182] ([fdo#111827]) -> [FAIL][183] +7 similar issues
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adlp-9/igt@kms_chamelium@hdmi-edid-read.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-9/igt@kms_chamelium@hdmi-edid-read.html
    - {bat-dg2-oem1}:     [SKIP][184] ([fdo#111827]) -> [FAIL][185] +8 similar issues
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg2-oem1/igt@kms_chamelium@hdmi-edid-read.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg2-oem1/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - {bat-kbl-2}:        [SKIP][186] ([fdo#109271] / [fdo#111827]) -> [FAIL][187] +8 similar issues
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-kbl-2/igt@kms_chamelium@hdmi-hpd-fast.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-kbl-2/igt@kms_chamelium@hdmi-hpd-fast.html
    - {bat-adlp-6}:       [SKIP][188] ([fdo#111827]) -> [FAIL][189] +7 similar issues
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adlp-6/igt@kms_chamelium@hdmi-hpd-fast.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-6/igt@kms_chamelium@hdmi-hpd-fast.html
    - {bat-dg2-11}:       [SKIP][190] ([fdo#111827]) -> [FAIL][191] +7 similar issues
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg2-11/igt@kms_chamelium@hdmi-hpd-fast.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg2-11/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_chamelium@vga-hpd-fast:
    - {bat-rpls-2}:       NOTRUN -> [FAIL][192] +12 similar issues
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-rpls-2/igt@kms_chamelium@vga-hpd-fast.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor@varying-size:
    - {bat-adlp-6}:       [PASS][193] -> [FAIL][194] +56 similar issues
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adlp-6/igt@kms_cursor_legacy@basic-flip-before-cursor@varying-size.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-6/igt@kms_cursor_legacy@basic-flip-before-cursor@varying-size.html

  * igt@kms_flip@basic-flip-vs-dpms@b-edp1:
    - {bat-jsl-3}:        [PASS][195] -> [FAIL][196] +47 similar issues
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@c-dp2:
    - {bat-dg2-11}:       [PASS][197] -> [FAIL][198] +54 similar issues
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg2-11/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp2.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg2-11/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp2.html

  * igt@kms_force_connector_basic@force-connector-state:
    - {bat-adlm-1}:       [PASS][199] -> [FAIL][200] +3 similar issues
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adlm-1/igt@kms_force_connector_basic@force-connector-state.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlm-1/igt@kms_force_connector_basic@force-connector-state.html
    - {bat-rpls-1}:       [PASS][201] -> [FAIL][202] +3 similar issues
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html
    - {bat-dg1-7}:        [PASS][203] -> [FAIL][204] +3 similar issues
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg1-7/igt@kms_force_connector_basic@force-connector-state.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg1-7/igt@kms_force_connector_basic@force-connector-state.html
    - {bat-dg2-oem1}:     [PASS][205] -> [FAIL][206]
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg2-oem1/igt@kms_force_connector_basic@force-connector-state.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg2-oem1/igt@kms_force_connector_basic@force-connector-state.html

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-dp-1:
    - {bat-adlp-9}:       [PASS][207] -> [FAIL][208] +48 similar issues
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adlp-9/igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-dp-1.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-9/igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-dp-1.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-dp-1:
    - {bat-adlp-9}:       NOTRUN -> [FAIL][209] +3 similar issues
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-dp-1.html

  * igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-edp-1:
    - {bat-adln-1}:       [PASS][210] -> [FAIL][211] +51 similar issues
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adln-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-edp-1.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adln-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-edp-1.html

  * igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1:
    - {fi-jsl-1}:         [PASS][212] -> [FAIL][213] +51 similar issues
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-jsl-1/igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-jsl-1/igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1.html

  * igt@kms_pipe_crc_basic@read-crc@pipe-d-dp-3:
    - {bat-dg2-9}:        [PASS][214] -> [FAIL][215] +51 similar issues
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg2-9/igt@kms_pipe_crc_basic@read-crc@pipe-d-dp-3.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg2-9/igt@kms_pipe_crc_basic@read-crc@pipe-d-dp-3.html

  * igt@kms_psr@sprite_plane_onoff:
    - {bat-jsl-3}:        [FAIL][216] ([i915#3003]) -> [FAIL][217] +3 similar issues
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-jsl-3/igt@kms_psr@sprite_plane_onoff.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-jsl-3/igt@kms_psr@sprite_plane_onoff.html

  
Known issues
------------

  Here are the changes found in Patchwork_112170v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-apl-guc:         [PASS][218] -> [INCOMPLETE][219] ([i915#7073])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_gttfill@basic:
    - fi-pnv-d510:        [PASS][220] -> [FAIL][221] ([i915#7229])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html

  * igt@gem_softpin@allocator-basic-reserve:
    - fi-hsw-4770:        NOTRUN -> [SKIP][222] ([fdo#109271]) +11 similar issues
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-hsw-4770/igt@gem_softpin@allocator-basic-reserve.html

  * igt@i915_module_load@reload:
    - fi-bsw-n3050:       [PASS][223] -> [DMESG-WARN][224] ([i915#1982])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-bsw-n3050/igt@i915_module_load@reload.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-bsw-n3050/igt@i915_module_load@reload.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-hsw-4770:        NOTRUN -> [SKIP][225] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size:
    - bat-adlp-4:         [PASS][226] -> [FAIL][227] ([i915#6984]) +2 similar issues
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adlp-4/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-4/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions:
    - fi-cfl-guc:         [PASS][228] -> [FAIL][229] ([i915#4289]) +1 similar issue
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-cfl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html
    - fi-cfl-8109u:       [PASS][230] -> [FAIL][231] ([i915#4289]) +1 similar issue
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-cfl-8109u/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-8109u/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html
    - fi-apl-guc:         [PASS][232] -> [FAIL][233] ([i915#4289]) +1 similar issue
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-apl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-apl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html
    - fi-cfl-8700k:       [PASS][234] -> [FAIL][235] ([i915#4289]) +1 similar issue
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-cfl-8700k/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-8700k/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size:
    - bat-adlp-4:         [PASS][236] -> [FAIL][237] ([i915#4289]) +1 similar issue
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adlp-4/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-4/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-hsw-4770:        NOTRUN -> [SKIP][238] ([fdo#109271] / [i915#1072]) +3 similar issues
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html

  * igt@runner@aborted:
    - bat-adlp-4:         NOTRUN -> [FAIL][239] ([i915#4312])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-4/igt@runner@aborted.html
    - bat-dg1-5:          NOTRUN -> [FAIL][240] ([i915#4312])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg1-5/igt@runner@aborted.html
    - fi-glk-j4005:       NOTRUN -> [FAIL][241] ([i915#4312])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-glk-j4005/igt@runner@aborted.html
    - fi-rkl-11600:       NOTRUN -> [FAIL][242] ([i915#4312])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-rkl-11600/igt@runner@aborted.html
    - fi-adl-ddr5:        NOTRUN -> [FAIL][243] ([i915#4312])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-adl-ddr5/igt@runner@aborted.html
    - fi-cfl-guc:         NOTRUN -> [FAIL][244] ([i915#4312])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-guc/igt@runner@aborted.html
    - fi-skl-6700k2:      NOTRUN -> [FAIL][245] ([i915#4312])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-skl-6700k2/igt@runner@aborted.html
    - fi-cfl-8109u:       NOTRUN -> [FAIL][246] ([i915#4312])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-8109u/igt@runner@aborted.html
    - fi-skl-6600u:       NOTRUN -> [FAIL][247] ([i915#4312])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-skl-6600u/igt@runner@aborted.html
    - fi-icl-u2:          NOTRUN -> [FAIL][248] ([i915#4312])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-icl-u2/igt@runner@aborted.html
    - fi-apl-guc:         NOTRUN -> [FAIL][249] ([i915#4312])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-apl-guc/igt@runner@aborted.html
    - fi-rkl-guc:         NOTRUN -> [FAIL][250] ([i915#4312])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-rkl-guc/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][251] ([i915#4312])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-skl-guc/igt@runner@aborted.html
    - fi-kbl-soraka:      NOTRUN -> [FAIL][252] ([i915#4312] / [i915#4991])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-kbl-soraka/igt@runner@aborted.html
    - bat-dg1-6:          NOTRUN -> [FAIL][253] ([i915#4312])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg1-6/igt@runner@aborted.html
    - fi-cfl-8700k:       NOTRUN -> [FAIL][254] ([i915#4312])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-8700k/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#3003]: https://gitlab.freedesktop.org/drm/intel/issues/3003
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4258]: https://gitlab.freedesktop.org/drm/intel/issues/4258
  [i915#4289]: https://gitlab.freedesktop.org/drm/intel/issues/4289
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6687]: https://gitlab.freedesktop.org/drm/intel/issues/6687
  [i915#6984]: https://gitlab.freedesktop.org/drm/intel/issues/6984
  [i915#7073]: https://gitlab.freedesktop.org/drm/intel/issues/7073
  [i915#7229]: https://gitlab.freedesktop.org/drm/intel/issues/7229
  [i915#7336]: https://gitlab.freedesktop.org/drm/intel/issues/7336
  [i915#7456]: https://gitlab.freedesktop.org/drm/intel/issues/7456
  [i915#7498]: https://gitlab.freedesktop.org/drm/intel/issues/7498
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561


Build changes
-------------

  * Linux: CI_DRM_12523 -> Patchwork_112170v1

  CI-20190529: 20190529
  CI_DRM_12523: c4df39be2756d7450630cae7016c036727d6e652 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7102: bacfdc84a9c02556c5441deb21e3a3f18a07347d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_112170v1: c4df39be2756d7450630cae7016c036727d6e652 @ git://anongit.freedesktop.org/gfx-ci/linux


### Linux commits

ea661dd7f499 drm/i915: Reject wm levels that exceed vblank time
38041452128c drm/i915: Extract skl_wm_latency()
bb6f206a092a drm/i915/psr: Add the latency reporting chicken bit for pipe D
e6f6fd01160b drm/i915/psr: Fix the delayed vblank w/a
7b5b7f3700cf drm/i915/vrr: Fix "window2" handling

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/index.html

--===============4333059149692534488==
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
<tr><td><b>Series:</b></td><td>drm/i915: vblank stuff</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/112170/">https://patchwork.freedesktop.org/series/112170/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12523 -&gt; Patchwork_112170v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_112170v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_112170v1, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/index.html</p>
<h2>Participating hosts (44 -&gt; 47)</h2>
<p>Additional (3): fi-hsw-4770 bat-rpls-2 fi-tgl-dsi </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_112170v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-adl-ddr5/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-adl-ddr5/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-8700k/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-skl-6600u/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-skl-6600u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-icl-u2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-rkl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-kbl-soraka/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-kbl-soraka/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg1-6/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg1-6/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adlp-4/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-4/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg1-5/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg1-5/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-glk-j4005/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-glk-j4005/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-skl-6700k2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-8109u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-kbl-8809g/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-skl-guc/igt@debugfs_test@read_all_entries.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-skl-guc/igt@debugfs_test@read_all_entries.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-skl-6600u/igt@i915_pm_backlight@basic-brightness.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-icl-u2/igt@i915_pm_backlight@basic-brightness.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-kbl-soraka/igt@i915_pm_backlight@basic-brightness.html">INCOMPLETE</a></p>
</li>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-4/igt@i915_pm_backlight@basic-brightness.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-kbl-8809g/igt@i915_pm_rpm@basic-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-kbl-8809g/igt@i915_pm_rpm@basic-rte.html">FAIL</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-bsw-nick/igt@i915_selftest@live@execlists.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-bsw-nick/igt@i915_selftest@live@execlists.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@sanitycheck:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-kbl-7567u/igt@i915_selftest@live@sanitycheck.html">DMESG-WARN</a> +41 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-cfl-8700k/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-8700k/igt@kms_busy@basic@flip.html">FAIL</a> +45 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor@legacy:</p>
<ul>
<li>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-rkl-11600/igt@kms_cursor_legacy@basic-flip-before-cursor@legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-rkl-11600/igt@kms_cursor_legacy@basic-flip-before-cursor@legacy.html">FAIL</a> +47 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor@toggle:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor@toggle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-icl-u2/igt@kms_cursor_legacy@basic-flip-before-cursor@toggle.html">FAIL</a> +75 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a1:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-guc/igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a1.html">FAIL</a> +45 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-dp1:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-apl-guc/igt@kms_flip@basic-flip-vs-dpms@c-dp1.html">FAIL</a> +44 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-hdmi-a2:</p>
<ul>
<li>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg1-5/igt@kms_flip@basic-flip-vs-modeset@b-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg1-5/igt@kms_flip@basic-flip-vs-modeset@b-hdmi-a2.html">FAIL</a> +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a2:</p>
<ul>
<li>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-adl-ddr5/igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-adl-ddr5/igt@kms_flip@basic-flip-vs-modeset@d-hdmi-a2.html">FAIL</a> +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-wf_vblank@b-edp1.html">FAIL</a> +51 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@a-hdmi-a1:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-skl-6700k2/igt@kms_flip@basic-plain-flip@a-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-skl-6700k2/igt@kms_flip@basic-plain-flip@a-hdmi-a1.html">FAIL</a> +74 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-hdmi-a2:</p>
<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-glk-j4005/igt@kms_flip@basic-plain-flip@b-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-glk-j4005/igt@kms_flip@basic-plain-flip@b-hdmi-a2.html">FAIL</a> +47 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-hdmi-a2:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg1-6/igt@kms_flip@basic-plain-flip@c-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg1-6/igt@kms_flip@basic-plain-flip@c-hdmi-a2.html">FAIL</a> +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-kbl-7567u/igt@kms_force_connector_basic@force-connector-state.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck@pipe-b-dp-2:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck@pipe-b-dp-2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck@pipe-b-dp-2.html">FAIL</a> +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-edp-1:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-skl-6600u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-skl-6600u/igt@kms_pipe_crc_basic@hang-read-crc@pipe-c-edp-1.html">FAIL</a> +51 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc@pipe-b-hdmi-a-1:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-rkl-guc/igt@kms_pipe_crc_basic@read-crc@pipe-b-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-rkl-guc/igt@kms_pipe_crc_basic@read-crc@pipe-b-hdmi-a-1.html">FAIL</a> +47 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc@pipe-d-edp-1:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adlp-4/igt@kms_pipe_crc_basic@read-crc@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-4/igt@kms_pipe_crc_basic@read-crc@pipe-d-edp-1.html">FAIL</a> +55 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>
<p>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-4/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> +7 similar issues</p>
</li>
<li>
<p>bat-dg1-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg1-5/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg1-5/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> +7 similar issues</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-skl-6700k2/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-skl-6700k2/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-read:</p>
<ul>
<li>
<p>fi-adl-ddr5:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-adl-ddr5/igt@kms_chamelium@dp-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-adl-ddr5/igt@kms_chamelium@dp-edid-read.html">FAIL</a> +7 similar issues</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-cfl-guc/igt@kms_chamelium@dp-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-guc/igt@kms_chamelium@dp-edid-read.html">FAIL</a> +7 similar issues</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-cfl-8700k/igt@kms_chamelium@dp-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-8700k/igt@kms_chamelium@dp-edid-read.html">FAIL</a> +7 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-kbl-7567u/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-kbl-7567u/igt@kms_chamelium@dp-hpd-fast.html">FAIL</a> +8 similar issues</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-kbl-8809g/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-kbl-8809g/igt@kms_chamelium@dp-hpd-fast.html">FAIL</a> +7 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>
<p>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-skl-6600u/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-skl-6600u/igt@kms_chamelium@hdmi-crc-fast.html">FAIL</a> +7 similar issues</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-apl-guc/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-apl-guc/igt@kms_chamelium@hdmi-crc-fast.html">FAIL</a> +7 similar issues</p>
</li>
<li>
<p>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-rkl-guc/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-rkl-guc/igt@kms_chamelium@hdmi-crc-fast.html">FAIL</a> +7 similar issues</p>
</li>
<li>
<p>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg1-6/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg1-6/igt@kms_chamelium@hdmi-crc-fast.html">FAIL</a> +7 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-glk-j4005/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-glk-j4005/igt@kms_chamelium@hdmi-edid-read.html">FAIL</a> +7 similar issues</p>
</li>
<li>
<p>fi-rkl-11600:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-rkl-11600/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-rkl-11600/igt@kms_chamelium@hdmi-edid-read.html">FAIL</a> +7 similar issues</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-cfl-8109u/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-8109u/igt@kms_chamelium@hdmi-edid-read.html">FAIL</a> +7 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-icl-u2/igt@kms_chamelium@hdmi-hpd-fast.html">FAIL</a> +7 similar issues</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-kbl-soraka/igt@kms_chamelium@hdmi-hpd-fast.html">FAIL</a> +7 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-skl-6700k2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-skl-6700k2/igt@kms_setmode@basic-clone-single-crtc.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-cfl-8109u/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-8109u/igt@kms_setmode@basic-clone-single-crtc.html">INCOMPLETE</a></p>
</li>
<li>
<p>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-icl-u2/igt@kms_setmode@basic-clone-single-crtc.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-ehl-2/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-ehl-2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg2-9/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg2-9/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adlp-6/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-6/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-jsl-3}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-jsl-3/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-jsl-3/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg2-11/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg2-11/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-jsl-1/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-jsl-1/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-adlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adlp-9/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-9/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adln-1/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adln-1/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-tgl-dsi/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6687">i915#6687</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@basic-brightness:</p>
<ul>
<li>
<p>{bat-adln-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adln-1/igt@i915_pm_backlight@basic-brightness.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-ehl-2}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-ehl-2/igt@i915_pm_backlight@basic-brightness.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-adlp-6}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-6/igt@i915_pm_backlight@basic-brightness.html">INCOMPLETE</a></p>
</li>
<li>
<p>{bat-jsl-3}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-jsl-3/igt@i915_pm_backlight@basic-brightness.html">INCOMPLETE</a></p>
</li>
<li>
<p>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-jsl-1/igt@i915_pm_backlight@basic-brightness.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-pci-d3-state:</p>
<ul>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg2-8/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7498">i915#7498</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg2-8/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a></p>
</li>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg2-9/igt@i915_pm_rpm@basic-pci-d3-state.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7498">i915#7498</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg2-9/igt@i915_pm_rpm@basic-pci-d3-state.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@module-reload:</p>
<ul>
<li>
<p>{bat-kbl-2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-kbl-2/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-kbl-2/igt@i915_pm_rpm@module-reload.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg2-8/igt@i915_pm_rpm@module-reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg2-8/igt@i915_pm_rpm@module-reload.html">FAIL</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg2-8/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg2-8/igt@i915_selftest@live@client.html">DMESG-WARN</a> +46 similar issues</p>
</li>
<li>
<p>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adlm-1/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlm-1/igt@i915_selftest@live@client.html">DMESG-WARN</a> +41 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>{bat-rpls-2}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-rpls-2/igt@i915_selftest@live@gt_engines.html">DMESG-WARN</a> +39 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>{bat-dg2-oem1}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg2-oem1/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg2-oem1/igt@i915_selftest@live@gt_heartbeat.html">DMESG-WARN</a> +43 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@requests:</p>
<ul>
<li>{bat-kbl-2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-kbl-2/igt@i915_selftest@live@requests.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-kbl-2/igt@i915_selftest@live@requests.html">DMESG-WARN</a> +41 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@uncore:</p>
<ul>
<li>{bat-dg1-7}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg1-7/igt@i915_selftest@live@uncore.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg1-7/igt@i915_selftest@live@uncore.html">DMESG-WARN</a> +47 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-rpls-1/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-rpls-1/igt@i915_selftest@live@workarounds.html">DMESG-WARN</a> +39 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-ehl-2/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-ehl-2/igt@kms_busy@basic@modeset.html">FAIL</a> +51 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>{bat-rpls-1}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-rpls-1/igt@kms_chamelium@common-hpd-after-suspend.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>
<p>{bat-jsl-3}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-jsl-3/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-jsl-3/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> +7 similar issues</p>
</li>
<li>
<p>{bat-dg1-7}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg1-7/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg1-7/igt@kms_chamelium@dp-crc-fast.html">FAIL</a> +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-read:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-ehl-2/igt@kms_chamelium@dp-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-ehl-2/igt@kms_chamelium@dp-edid-read.html">FAIL</a> +7 similar issues</p>
</li>
<li>
<p>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg2-9/igt@kms_chamelium@dp-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg2-9/igt@kms_chamelium@dp-edid-read.html">FAIL</a> +7 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>
<p>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adln-1/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adln-1/igt@kms_chamelium@dp-hpd-fast.html">FAIL</a> +7 similar issues</p>
</li>
<li>
<p>{fi-tgl-dsi}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-tgl-dsi/igt@kms_chamelium@dp-hpd-fast.html">FAIL</a> +65 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>
<p>{bat-dg2-8}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg2-8/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg2-8/igt@kms_chamelium@hdmi-edid-read.html">FAIL</a> +8 similar issues</p>
</li>
<li>
<p>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adlm-1/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlm-1/igt@kms_chamelium@hdmi-edid-read.html">FAIL</a> +8 similar issues</p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-jsl-1/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-jsl-1/igt@kms_chamelium@hdmi-edid-read.html">FAIL</a> +7 similar issues</p>
</li>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-rpls-1/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-rpls-1/igt@kms_chamelium@hdmi-edid-read.html">FAIL</a> +7 similar issues</p>
</li>
<li>
<p>{bat-adlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adlp-9/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-9/igt@kms_chamelium@hdmi-edid-read.html">FAIL</a> +7 similar issues</p>
</li>
<li>
<p>{bat-dg2-oem1}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg2-oem1/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg2-oem1/igt@kms_chamelium@hdmi-edid-read.html">FAIL</a> +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>
<p>{bat-kbl-2}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-kbl-2/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-kbl-2/igt@kms_chamelium@hdmi-hpd-fast.html">FAIL</a> +8 similar issues</p>
</li>
<li>
<p>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adlp-6/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-6/igt@kms_chamelium@hdmi-hpd-fast.html">FAIL</a> +7 similar issues</p>
</li>
<li>
<p>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg2-11/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg2-11/igt@kms_chamelium@hdmi-hpd-fast.html">FAIL</a> +7 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-fast:</p>
<ul>
<li>{bat-rpls-2}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-rpls-2/igt@kms_chamelium@vga-hpd-fast.html">FAIL</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor@varying-size:</p>
<ul>
<li>{bat-adlp-6}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adlp-6/igt@kms_cursor_legacy@basic-flip-before-cursor@varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-6/igt@kms_cursor_legacy@basic-flip-before-cursor@varying-size.html">FAIL</a> +56 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-edp1:</p>
<ul>
<li>{bat-jsl-3}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-jsl-3/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">FAIL</a> +47 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@c-dp2:</p>
<ul>
<li>{bat-dg2-11}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg2-11/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg2-11/igt@kms_flip@basic-flip-vs-wf_vblank@c-dp2.html">FAIL</a> +54 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>
<p>{bat-adlm-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adlm-1/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlm-1/igt@kms_force_connector_basic@force-connector-state.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>{bat-rpls-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-rpls-1/igt@kms_force_connector_basic@force-connector-state.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>{bat-dg1-7}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg1-7/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg1-7/igt@kms_force_connector_basic@force-connector-state.html">FAIL</a> +3 similar issues</p>
</li>
<li>
<p>{bat-dg2-oem1}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg2-oem1/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg2-oem1/igt@kms_force_connector_basic@force-connector-state.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-dp-1:</p>
<ul>
<li>{bat-adlp-9}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adlp-9/igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-dp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-9/igt@kms_pipe_crc_basic@hang-read-crc@pipe-d-dp-1.html">FAIL</a> +48 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-dp-1:</p>
<ul>
<li>{bat-adlp-9}:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-9/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-a-dp-1.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-edp-1:</p>
<ul>
<li>{bat-adln-1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adln-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adln-1/igt@kms_pipe_crc_basic@read-crc-frame-sequence@pipe-b-edp-1.html">FAIL</a> +51 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-jsl-1/igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-jsl-1/igt@kms_pipe_crc_basic@read-crc@pipe-b-edp-1.html">FAIL</a> +51 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc@pipe-d-dp-3:</p>
<ul>
<li>{bat-dg2-9}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-dg2-9/igt@kms_pipe_crc_basic@read-crc@pipe-d-dp-3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg2-9/igt@kms_pipe_crc_basic@read-crc@pipe-d-dp-3.html">FAIL</a> +51 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>{bat-jsl-3}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-jsl-3/igt@kms_psr@sprite_plane_onoff.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3003">i915#3003</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-jsl-3/igt@kms_psr@sprite_plane_onoff.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_112170v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-apl-guc/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7073">i915#7073</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7229">i915#7229</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-basic-reserve:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-hsw-4770/igt@gem_softpin@allocator-basic-reserve.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-bsw-n3050/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-bsw-n3050/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-hsw-4770/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adlp-4/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-4/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6984">i915#6984</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-cfl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4289">i915#4289</a>) +1 similar issue</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-cfl-8109u/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-8109u/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4289">i915#4289</a>) +1 similar issue</p>
</li>
<li>
<p>fi-apl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-apl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-apl-guc/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4289">i915#4289</a>) +1 similar issue</p>
</li>
<li>
<p>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/fi-cfl-8700k/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-8700k/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4289">i915#4289</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>bat-adlp-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12523/bat-adlp-4/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-4/igt@kms_cursor_legacy@basic-flip-before-cursor@atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4289">i915#4289</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-hsw-4770:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-hsw-4770/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>bat-adlp-4:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-adlp-4/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>bat-dg1-5:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg1-5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-glk-j4005/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-rkl-11600:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-rkl-11600/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-adl-ddr5:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-adl-ddr5/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-skl-6600u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-icl-u2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-icl-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-apl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-apl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4991">i915#4991</a>)</p>
</li>
<li>
<p>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/bat-dg1-6/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cfl-8700k:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_112170v1/fi-cfl-8700k/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12523 -&gt; Patchwork_112170v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12523: c4df39be2756d7450630cae7016c036727d6e652 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_7102: bacfdc84a9c02556c5441deb21e3a3f18a07347d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_112170v1: c4df39be2756d7450630cae7016c036727d6e652 @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<h3>Linux commits</h3>
<p>ea661dd7f499 drm/i915: Reject wm levels that exceed vblank time<br />
38041452128c drm/i915: Extract skl_wm_latency()<br />
bb6f206a092a drm/i915/psr: Add the latency reporting chicken bit for pipe D<br />
e6f6fd01160b drm/i915/psr: Fix the delayed vblank w/a<br />
7b5b7f3700cf drm/i915/vrr: Fix "window2" handling</p>

</body>
</html>

--===============4333059149692534488==--
