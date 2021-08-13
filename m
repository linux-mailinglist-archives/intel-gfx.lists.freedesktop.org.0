Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 32F4F3EB142
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Aug 2021 09:17:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 424416E54C;
	Fri, 13 Aug 2021 07:17:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CB45C6E544;
 Fri, 13 Aug 2021 07:17:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C2C88A008A;
 Fri, 13 Aug 2021 07:17:25 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5297546005030625466=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Christoph Hellwig" <hch@infradead.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Aug 2021 07:17:25 -0000
Message-ID: <162883904577.17680.11083871158962293819@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <YRYRwG5jscfl54pj@infradead.org>
In-Reply-To: <YRYRwG5jscfl54pj@infradead.org>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5_timeouts_delaying_boot_under_GVT?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============5297546005030625466==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915 timeouts delaying boot under GVT
URL   : https://patchwork.freedesktop.org/series/93652/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10481 -> Patchwork_20811
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20811 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20811, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20811:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_busy@basic@modeset:
    - fi-snb-2520m:       [PASS][1] -> [FAIL][2] +8 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-snb-2520m/igt@kms_busy@basic@modeset.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-snb-2520m/igt@kms_busy@basic@modeset.html
    - fi-hsw-4770:        [PASS][3] -> [FAIL][4] +10 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-hsw-4770/igt@kms_busy@basic@modeset.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-hsw-4770/igt@kms_busy@basic@modeset.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - fi-ivb-3770:        [PASS][5] -> [DMESG-WARN][6] +11 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-ivb-3770/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-ivb-3770/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - fi-snb-2520m:       [PASS][7] -> [DMESG-WARN][8] +10 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-snb-2520m/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-snb-2520m/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - fi-elk-e7500:       [PASS][9] -> [DMESG-WARN][10] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-elk-e7500/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-elk-e7500/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a2:
    - fi-skl-guc:         [PASS][11] -> [FAIL][12] +19 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-skl-guc/igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a2.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-skl-guc/igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a2.html

  * igt@kms_flip@basic-flip-vs-dpms@a-vga1:
    - fi-ivb-3770:        [PASS][13] -> [FAIL][14] +7 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-ivb-3770/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-ivb-3770/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html
    - fi-pnv-d510:        [PASS][15] -> [FAIL][16] +6 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-pnv-d510/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-pnv-d510/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html

  * igt@kms_flip@basic-flip-vs-dpms@b-dp1:
    - fi-tgl-1115g4:      [PASS][17] -> [FAIL][18] +24 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html

  * igt@kms_flip@basic-flip-vs-dpms@b-dsi1:
    - fi-glk-dsi:         [PASS][19] -> [FAIL][20] +9 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-glk-dsi/igt@kms_flip@basic-flip-vs-dpms@b-dsi1.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-glk-dsi/igt@kms_flip@basic-flip-vs-dpms@b-dsi1.html

  * igt@kms_flip@basic-flip-vs-dpms@b-edp1:
    - fi-bsw-kefka:       [PASS][21] -> [FAIL][22] +4 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html

  * igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1:
    - fi-cfl-8700k:       [PASS][23] -> [FAIL][24] +10 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html

  * igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2:
    - fi-bdw-5557u:       [PASS][25] -> [FAIL][26] +10 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-bdw-5557u/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-bdw-5557u/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html

  * igt@kms_flip@basic-flip-vs-dpms@b-vga1:
    - fi-ilk-650:         [PASS][27] -> [FAIL][28] +7 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms@b-vga1.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms@b-vga1.html

  * igt@kms_flip@basic-flip-vs-dpms@c-dsi1:
    - fi-bxt-dsi:         [PASS][29] -> [FAIL][30] +9 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-bxt-dsi/igt@kms_flip@basic-flip-vs-dpms@c-dsi1.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-bxt-dsi/igt@kms_flip@basic-flip-vs-dpms@c-dsi1.html

  * igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a2:
    - fi-icl-u2:          [PASS][31] -> [FAIL][32] +27 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-icl-u2/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a2.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-icl-u2/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a2.html

  * igt@kms_flip@basic-flip-vs-modeset@a-edp1:
    - fi-cml-u2:          [PASS][33] -> [FAIL][34] +9 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-cml-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-cml-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html

  * igt@kms_flip@basic-flip-vs-modeset@a-vga1:
    - fi-elk-e7500:       [PASS][35] -> [FAIL][36] +12 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-elk-e7500/igt@kms_flip@basic-flip-vs-modeset@a-vga1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-elk-e7500/igt@kms_flip@basic-flip-vs-modeset@a-vga1.html

  * igt@kms_flip@basic-flip-vs-modeset@b-dp1:
    - fi-kbl-x1275:       [PASS][37] -> [FAIL][38] +10 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html

  * igt@kms_flip@basic-flip-vs-modeset@b-dvi-d1:
    - fi-bwr-2160:        [PASS][39] -> [FAIL][40] +8 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-bwr-2160/igt@kms_flip@basic-flip-vs-modeset@b-dvi-d1.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-bwr-2160/igt@kms_flip@basic-flip-vs-modeset@b-dvi-d1.html

  * igt@kms_flip@basic-flip-vs-modeset@b-hdmi-a1:
    - fi-cfl-guc:         [PASS][41] -> [FAIL][42] +10 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-cfl-guc/igt@kms_flip@basic-flip-vs-modeset@b-hdmi-a1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-cfl-guc/igt@kms_flip@basic-flip-vs-modeset@b-hdmi-a1.html

  * igt@kms_flip@basic-flip-vs-modeset@b-lvds1:
    - fi-snb-2520m:       [PASS][43] -> [DMESG-FAIL][44] +3 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-snb-2520m/igt@kms_flip@basic-flip-vs-modeset@b-lvds1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-snb-2520m/igt@kms_flip@basic-flip-vs-modeset@b-lvds1.html

  * igt@kms_flip@basic-flip-vs-modeset@c-dp1:
    - fi-kbl-7500u:       [PASS][45] -> [FAIL][46] +19 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-kbl-7500u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-kbl-7500u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html

  * igt@kms_flip@basic-flip-vs-modeset@c-dp2:
    - fi-cfl-8109u:       [PASS][47] -> [FAIL][48] +19 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp2.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp2.html

  * igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a1:
    - fi-rkl-guc:         [PASS][49] -> [FAIL][50] +10 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-rkl-guc/igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-rkl-guc/igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a1.html

  * igt@kms_flip@basic-flip-vs-modeset@c-vga1:
    - fi-ivb-3770:        [PASS][51] -> [DMESG-FAIL][52] +4 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-ivb-3770/igt@kms_flip@basic-flip-vs-modeset@c-vga1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-ivb-3770/igt@kms_flip@basic-flip-vs-modeset@c-vga1.html

  * igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1:
    - fi-ilk-650:         [PASS][53] -> [DMESG-WARN][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-ilk-650/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-ilk-650/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html

  * igt@kms_flip@basic-plain-flip@b-dp1:
    - fi-ilk-650:         [PASS][55] -> [DMESG-FAIL][56] +4 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-ilk-650/igt@kms_flip@basic-plain-flip@b-dp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-ilk-650/igt@kms_flip@basic-plain-flip@b-dp1.html

  * igt@kms_flip@basic-plain-flip@b-dp2:
    - fi-skl-6700k2:      [PASS][57] -> [FAIL][58] +28 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-skl-6700k2/igt@kms_flip@basic-plain-flip@b-dp2.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-skl-6700k2/igt@kms_flip@basic-plain-flip@b-dp2.html

  * igt@kms_flip@basic-plain-flip@c-edp1:
    - fi-icl-y:           [PASS][59] -> [FAIL][60] +9 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-icl-y/igt@kms_flip@basic-plain-flip@c-edp1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-icl-y/igt@kms_flip@basic-plain-flip@c-edp1.html
    - fi-kbl-soraka:      [PASS][61] -> [FAIL][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-kbl-soraka/igt@kms_flip@basic-plain-flip@c-edp1.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-kbl-soraka/igt@kms_flip@basic-plain-flip@c-edp1.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_flip@basic-flip-vs-dpms@c-edp1:
    - {fi-ehl-2}:         [PASS][63] -> [FAIL][64] +9 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-ehl-2/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-ehl-2/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html

  * igt@kms_flip@basic-flip-vs-modeset@b-edp1:
    - {fi-jsl-1}:         [PASS][65] -> [FAIL][66] +7 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-jsl-1/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-jsl-1/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html

  * igt@kms_force_connector_basic@force-connector-state:
    - {fi-hsw-gt1}:       [PASS][67] -> [DMESG-WARN][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-hsw-gt1/igt@kms_force_connector_basic@force-connector-state.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-hsw-gt1/igt@kms_force_connector_basic@force-connector-state.html

  * igt@prime_vgem@basic-fence-flip:
    - {fi-tgl-dsi}:       [PASS][69] -> [FAIL][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-tgl-dsi/igt@prime_vgem@basic-fence-flip.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-tgl-dsi/igt@prime_vgem@basic-fence-flip.html

  
Known issues
------------

  Here are the changes found in Patchwork_20811 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@i915_selftest@live@workarounds:
    - fi-rkl-guc:         [PASS][71] -> [DMESG-FAIL][72] ([i915#3928])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-rkl-guc/igt@i915_selftest@live@workarounds.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-rkl-guc/igt@i915_selftest@live@workarounds.html

  * igt@kms_flip@basic-flip-vs-dpms@b-edp1:
    - fi-kbl-soraka:      [PASS][73] -> [FAIL][74] ([i915#275]) +4 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:
    - fi-ilk-650:         [PASS][75] -> [DMESG-WARN][76] ([i915#164]) +18 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-ilk-650/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-ilk-650/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html

  * igt@runner@aborted:
    - fi-rkl-guc:         NOTRUN -> [FAIL][77] ([i915#3928])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-rkl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - fi-tgl-1115g4:      [FAIL][78] ([i915#1888]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#164]: https://gitlab.freedesktop.org/drm/intel/issues/164
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#275]: https://gitlab.freedesktop.org/drm/intel/issues/275
  [i915#3717]: https://gitlab.freedesktop.org/drm/intel/issues/3717
  [i915#3928]: https://gitlab.freedesktop.org/drm/intel/issues/3928


Participating hosts (39 -> 34)
------------------------------

  Missing    (5): fi-hsw-4200u fi-bsw-cyan fi-apl-guc bat-jsl-1 fi-bdw-samus 


Build changes
-------------

  * Linux: CI_DRM_10481 -> Patchwork_20811

  CI-20190529: 20190529
  CI_DRM_10481: 7a2a60f961bd7bcc00aacb1d590a2b11ff2a93bd @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6175: c91f99c74b966f635d7e2eb898bf0f78383d281b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_20811: d888bd9f64eb6694764028ff682781e605bad9cf @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d888bd9f64eb i915 timeouts delaying boot under GVT

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/index.html

--===============5297546005030625466==
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
<tr><td><b>Series:</b></td><td>i915 timeouts delaying boot under GVT</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/93652/">https://patchwork.freedesktop.org/series/93652/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10481 -&gt; Patchwork_20811</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20811 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20811, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20811:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-snb-2520m/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-snb-2520m/igt@kms_busy@basic@modeset.html">FAIL</a> +8 similar issues</p>
</li>
<li>
<p>fi-hsw-4770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-hsw-4770/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-hsw-4770/igt@kms_busy@basic@modeset.html">FAIL</a> +10 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-ivb-3770/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-ivb-3770/igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size.html">DMESG-WARN</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-snb-2520m/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-snb-2520m/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">DMESG-WARN</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-elk-e7500/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-elk-e7500/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">DMESG-WARN</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a2:</p>
<ul>
<li>fi-skl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-skl-guc/igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-skl-guc/igt@kms_flip@basic-flip-vs-dpms@a-hdmi-a2.html">FAIL</a> +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@a-vga1:</p>
<ul>
<li>
<p>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-ivb-3770/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-ivb-3770/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html">FAIL</a> +7 similar issues</p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-pnv-d510/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-pnv-d510/igt@kms_flip@basic-flip-vs-dpms@a-vga1.html">FAIL</a> +6 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dp1:</p>
<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-tgl-1115g4/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html">FAIL</a> +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-dsi1:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-glk-dsi/igt@kms_flip@basic-flip-vs-dpms@b-dsi1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-glk-dsi/igt@kms_flip@basic-flip-vs-dpms@b-dsi1.html">FAIL</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-edp1:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-bsw-kefka/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">FAIL</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-cfl-8700k/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a1.html">FAIL</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2:</p>
<ul>
<li>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-bdw-5557u/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-bdw-5557u/igt@kms_flip@basic-flip-vs-dpms@b-hdmi-a2.html">FAIL</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-vga1:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms@b-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-ilk-650/igt@kms_flip@basic-flip-vs-dpms@b-vga1.html">FAIL</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-dsi1:</p>
<ul>
<li>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-bxt-dsi/igt@kms_flip@basic-flip-vs-dpms@c-dsi1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-bxt-dsi/igt@kms_flip@basic-flip-vs-dpms@c-dsi1.html">FAIL</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a2:</p>
<ul>
<li>fi-icl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-icl-u2/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-icl-u2/igt@kms_flip@basic-flip-vs-dpms@c-hdmi-a2.html">FAIL</a> +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-edp1:</p>
<ul>
<li>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-cml-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-cml-u2/igt@kms_flip@basic-flip-vs-modeset@a-edp1.html">FAIL</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@a-vga1:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-elk-e7500/igt@kms_flip@basic-flip-vs-modeset@a-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-elk-e7500/igt@kms_flip@basic-flip-vs-modeset@a-vga1.html">FAIL</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-dp1:</p>
<ul>
<li>fi-kbl-x1275:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-kbl-x1275/igt@kms_flip@basic-flip-vs-modeset@b-dp1.html">FAIL</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-dvi-d1:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-bwr-2160/igt@kms_flip@basic-flip-vs-modeset@b-dvi-d1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-bwr-2160/igt@kms_flip@basic-flip-vs-modeset@b-dvi-d1.html">FAIL</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-hdmi-a1:</p>
<ul>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-cfl-guc/igt@kms_flip@basic-flip-vs-modeset@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-cfl-guc/igt@kms_flip@basic-flip-vs-modeset@b-hdmi-a1.html">FAIL</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-lvds1:</p>
<ul>
<li>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-snb-2520m/igt@kms_flip@basic-flip-vs-modeset@b-lvds1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-snb-2520m/igt@kms_flip@basic-flip-vs-modeset@b-lvds1.html">DMESG-FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-dp1:</p>
<ul>
<li>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-kbl-7500u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-kbl-7500u/igt@kms_flip@basic-flip-vs-modeset@c-dp1.html">FAIL</a> +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-dp2:</p>
<ul>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-cfl-8109u/igt@kms_flip@basic-flip-vs-modeset@c-dp2.html">FAIL</a> +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a1:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-rkl-guc/igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-rkl-guc/igt@kms_flip@basic-flip-vs-modeset@c-hdmi-a1.html">FAIL</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@c-vga1:</p>
<ul>
<li>fi-ivb-3770:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-ivb-3770/igt@kms_flip@basic-flip-vs-modeset@c-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-ivb-3770/igt@kms_flip@basic-flip-vs-modeset@c-vga1.html">DMESG-FAIL</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-ilk-650/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-ilk-650/igt@kms_flip@basic-flip-vs-wf_vblank@a-vga1.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-dp1:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-ilk-650/igt@kms_flip@basic-plain-flip@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-ilk-650/igt@kms_flip@basic-plain-flip@b-dp1.html">DMESG-FAIL</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@b-dp2:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-skl-6700k2/igt@kms_flip@basic-plain-flip@b-dp2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-skl-6700k2/igt@kms_flip@basic-plain-flip@b-dp2.html">FAIL</a> +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip@c-edp1:</p>
<ul>
<li>
<p>fi-icl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-icl-y/igt@kms_flip@basic-plain-flip@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-icl-y/igt@kms_flip@basic-plain-flip@c-edp1.html">FAIL</a> +9 similar issues</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-kbl-soraka/igt@kms_flip@basic-plain-flip@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-kbl-soraka/igt@kms_flip@basic-plain-flip@c-edp1.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@c-edp1:</p>
<ul>
<li>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-ehl-2/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-ehl-2/igt@kms_flip@basic-flip-vs-dpms@c-edp1.html">FAIL</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset@b-edp1:</p>
<ul>
<li>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-jsl-1/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-jsl-1/igt@kms_flip@basic-flip-vs-modeset@b-edp1.html">FAIL</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>{fi-hsw-gt1}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-hsw-gt1/igt@kms_force_connector_basic@force-connector-state.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-hsw-gt1/igt@kms_force_connector_basic@force-connector-state.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-tgl-dsi/igt@prime_vgem@basic-fence-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-tgl-dsi/igt@prime_vgem@basic-fence-flip.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20811 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-rkl-guc/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms@b-edp1:</p>
<ul>
<li>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-dpms@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/275">i915#275</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-ilk-650/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-ilk-650/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/164">i915#164</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-rkl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3928">i915#3928</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@gem_exec_suspend@basic-s3:<ul>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10481/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20811/fi-tgl-1115g4/igt@gem_exec_suspend@basic-s3.html">PASS</a></li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 34)</h2>
<p>Missing    (5): fi-hsw-4200u fi-bsw-cyan fi-apl-guc bat-jsl-1 fi-bdw-samus </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10481 -&gt; Patchwork_20811</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10481: 7a2a60f961bd7bcc00aacb1d590a2b11ff2a93bd @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6175: c91f99c74b966f635d7e2eb898bf0f78383d281b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_20811: d888bd9f64eb6694764028ff682781e605bad9cf @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d888bd9f64eb i915 timeouts delaying boot under GVT</p>

</body>
</html>

--===============5297546005030625466==--
