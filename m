Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7FF5BD9BC
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 03:59:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F85310E1D7;
	Tue, 20 Sep 2022 01:59:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5654F10E1D7;
 Tue, 20 Sep 2022 01:59:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3CEF5AADD7;
 Tue, 20 Sep 2022 01:59:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1050581746654463455=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Li Zhong" <floridsleeves@gmail.com>
Date: Tue, 20 Sep 2022 01:59:01 -0000
Message-ID: <166363914120.2842.458916156994689150@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220918220731.1026200-1-floridsleeves@gmail.com>
In-Reply-To: <20220918220731.1026200-1-floridsleeves@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJp?=
 =?utf-8?q?vers/gpu/drm/i915/gt=3A_Check_the_return_value_of_i915=5Factive?=
 =?utf-8?q?=5Facquire=28=29?=
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

--===============1050581746654463455==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drivers/gpu/drm/i915/gt: Check the return value of i915_active_acquire()
URL   : https://patchwork.freedesktop.org/series/108734/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12158_full -> Patchwork_108734v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_108734v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_108734v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_108734v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb2/igt@gem_exec_whisper@basic-queues-forked-all.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-iclb4/igt@gem_exec_whisper@basic-queues-forked-all.html

  
Known issues
------------

  Here are the changes found in Patchwork_108734v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-snb:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [FAIL][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52]) ([i915#4338])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb4/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb2/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb2/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb2/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb2/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb7/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb6/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb5/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb5/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb5/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb5/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb5/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb5/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb4/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb4/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb4/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb4/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb2/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb7/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb7/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb7/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb7/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb7/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb6/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb6/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb6/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb6/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb5/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb5/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb5/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb4/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb4/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb4/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb4/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb2/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb2/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb2/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb2/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_allocator@two-level-inception-interruptible:
    - shard-tglb:         [PASS][53] -> [INCOMPLETE][54] ([i915#6453])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-tglb3/igt@api_intel_allocator@two-level-inception-interruptible.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-tglb5/igt@api_intel_allocator@two-level-inception-interruptible.html

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [PASS][55] -> [SKIP][56] ([i915#4525]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb1/igt@gem_exec_balancer@parallel.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-iclb7/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][57] -> [FAIL][58] ([i915#2842])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][59] -> [FAIL][60] ([i915#2842])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_flush@basic-uc-set-default:
    - shard-apl:          [PASS][61] -> [DMESG-FAIL][62] ([i915#6864])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl8/igt@gem_exec_flush@basic-uc-set-default.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-apl6/igt@gem_exec_flush@basic-uc-set-default.html

  * igt@gem_softpin@evict-single-offset:
    - shard-iclb:         [PASS][63] -> [FAIL][64] ([i915#4171])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb1/igt@gem_softpin@evict-single-offset.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-iclb7/igt@gem_softpin@evict-single-offset.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][65] ([i915#4991])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-apl2/igt@gem_userptr_blits@input-checking.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271]) +57 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-apl2/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][67] -> [FAIL][68] ([i915#3989] / [i915#454])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-iclb7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [PASS][69] -> [SKIP][70] ([i915#4281])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb8/igt@i915_pm_dc@dc9-dpms.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#3886]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-apl2/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_color_chamelium@ctm-red-to-blue:
    - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-apl2/igt@kms_color_chamelium@ctm-red-to-blue.html

  * igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size:
    - shard-iclb:         [PASS][73] -> [FAIL][74] ([i915#5072])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb1/igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-glk:          [PASS][75] -> [FAIL][76] ([i915#2346])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][77] ([fdo#109271])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-glk5/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][78] -> [FAIL][79] ([i915#2122])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-glk7/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:
    - shard-glk:          [PASS][80] -> [FAIL][81] ([i915#79])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@d-edp1:
    - shard-tglb:         [PASS][82] -> [INCOMPLETE][83] ([i915#6021])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-tglb5/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-tglb5/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][84] ([i915#3555]) +2 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][85] ([i915#2587] / [i915#2672]) +2 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][86] ([i915#2672]) +6 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
    - shard-apl:          [PASS][87] -> [DMESG-WARN][88] ([i915#180]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-apl8/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1:
    - shard-iclb:         [PASS][89] -> [SKIP][90] ([i915#5235]) +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
    - shard-apl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#658])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-apl2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [PASS][92] -> [SKIP][93] ([fdo#109441]) +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-iclb4/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#533])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-apl2/igt@kms_vblank@pipe-d-wait-idle.html

  
#### Possible fixes ####

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglb:         [FAIL][95] ([i915#6268]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-tglb3/igt@gem_ctx_exec@basic-nohangcheck.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-tglb3/igt@gem_ctx_exec@basic-nohangcheck.html
    - {shard-tglu}:       [FAIL][97] ([i915#6268]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-tglu-1/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - {shard-tglu}:       [FAIL][99] ([i915#2842]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-tglu-6/igt@gem_exec_fair@basic-none-share@rcs0.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-tglu-3/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [FAIL][101] ([i915#2842]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [DMESG-WARN][103] ([i915#180]) -> [PASS][104] +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl3/igt@gem_workarounds@suspend-resume.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-apl2/igt@gem_workarounds@suspend-resume.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-iclb:         [FAIL][105] ([i915#3989]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb8/igt@i915_pm_dc@dc5-psr.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-iclb3/igt@i915_pm_dc@dc5-psr.html

  * igt@kms_frontbuffer_tracking@fbc-badstride:
    - shard-snb:          [SKIP][107] ([fdo#109271]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb4/igt@kms_frontbuffer_tracking@fbc-badstride.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb5/igt@kms_frontbuffer_tracking@fbc-badstride.html

  * igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1:
    - shard-glk:          [FAIL][109] ([i915#1888]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk6/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-glk9/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [SKIP][111] ([fdo#109441]) -> [PASS][112] +2 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb6/igt@kms_psr@psr2_sprite_blt.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_vblank@pipe-b-accuracy-idle:
    - shard-glk:          [FAIL][113] ([i915#43]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-glk6/igt@kms_vblank@pipe-b-accuracy-idle.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-glk9/igt@kms_vblank@pipe-b-accuracy-idle.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][115] ([i915#658]) -> [SKIP][116] ([i915#588])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-idle@vcs0:
    - shard-iclb:         [FAIL][117] ([i915#2684]) -> [WARN][118] ([i915#2684])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
    - shard-iclb:         [SKIP][119] ([i915#658]) -> [SKIP][120] ([i915#2920])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb6/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-iclb:         [SKIP][121] ([fdo#111068] / [i915#658]) -> [SKIP][122] ([i915#2920])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb4/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-iclb:         [SKIP][123] ([i915#2920]) -> [SKIP][124] ([i915#658])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-iclb4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6599]) -> ([FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6599])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl6/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl1/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl8/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl3/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-apl3/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-apl6/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-apl8/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-apl2/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-apl6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109314]: https://bugs.freedesktop.org/show_bug.cgi?id=109314
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3804]: https://gitlab.freedesktop.org/drm/intel/issues/3804
  [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3989]: https://gitlab.freedesktop.org/drm/intel/issues/3989
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#43]: https://gitlab.freedesktop.org/drm/intel/issues/43
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4338]: https://gitlab.freedesktop.org/drm/intel/issues/4338
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5072]: https://gitlab.freedesktop.org/drm/intel/issues/5072
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#6021]: https://gitlab.freedesktop.org/drm/intel/issues/6021
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6117]: https://gitlab.freedesktop.org/drm/intel/issues/6117
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6334]: https://gitlab.freedesktop.org/drm/intel/issues/6334
  [i915#6344]: https://gitlab.freedesktop.org/drm/intel/issues/6344
  [i915#6433]: https://gitlab.freedesktop.org/drm/intel/issues/6433
  [i915#6453]: https://gitlab.freedesktop.org/drm/intel/issues/6453
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599
  [i915#6864]: https://gitlab.freedesktop.org/drm/intel/issues/6864
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12158 -> Patchwork_108734v1

  CI-20190529: 20190529
  CI_DRM_12158: 3bde74f15d452bf788ecab8933ee802b2ee9e673 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6656: 24100c4e181c50e3678aeca9c641b8a43555ad73 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_108734v1: 3bde74f15d452bf788ecab8933ee802b2ee9e673 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/index.html

--===============1050581746654463455==
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
<tr><td><b>Series:</b></td><td>drivers/gpu/drm/i915/gt: Check the return va=
lue of i915_active_acquire()</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/108734/">https://patchwork.freedesktop.org/series/108734/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_108734v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_108734v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12158_full -&gt; Patchwork_108734v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_108734v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_108734v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
108734v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_exec_whisper@basic-queues-forked-all:<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-iclb2/igt@gem_exec_whisper@basic-queues-forked-all.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_108734v1/shard-iclb4/igt@gem_exec_whisper@basic-queues-forked-all.html"=
>INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_108734v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12158/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb2/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb2/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12158/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12158/shard-snb2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/sha=
rd-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12158/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb7/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12158/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12158/shard-snb6/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158=
/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12158/shard-snb6/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-sn=
b5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb5/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2158/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12158/shard-snb4/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-snb4/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shar=
d-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12158/shard-snb4/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb2/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108=
734v1/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_108734v1/shard-snb7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_108734v1/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb7/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/sh=
ard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_108734v1/shard-snb6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
8734v1/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_108734v1/shard-snb6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb5/=
boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_108734v1/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/sh=
ard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_108734v1/shard-snb5/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
8734v1/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_108734v1/shard-snb4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_108734v1/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/sh=
ard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_108734v1/shard-snb2/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-snb2/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4338=
">i915#4338</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_allocator@two-level-inception-interruptible:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-tglb3/igt@api_intel_allocator@two-level-inception-inter=
ruptible.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_108734v1/shard-tglb5/igt@api_intel_allocator@two-level-inc=
eption-interruptible.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/6453">i915#6453</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-iclb1/igt@gem_exec_balancer@parallel.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/s=
hard-iclb7/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525</a>) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
08734v1/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108=
734v1/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-set-default:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-apl8/igt@gem_exec_flush@basic-uc-set-default.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
8734v1/shard-apl6/igt@gem_exec_flush@basic-uc-set-default.html">DMESG-FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6864">i915#=
6864</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-single-offset:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-iclb1/igt@gem_softpin@evict-single-offset.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10873=
4v1/shard-iclb7/igt@gem_softpin@evict-single-offset.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4171">i915#4171</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108734v1/shard-apl2/igt@gem_userptr_blits@input-che=
cking.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4991">i915#4991</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108734v1/shard-apl2/igt@gen7_exec_parse@oacontrol-t=
racking.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a>) +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-iclb1/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-icl=
b7/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/3989">i915#3989</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-iclb8/igt@i915_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-ic=
lb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4281">i915#4281</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108734v1/shard-apl2/igt@kms_ccs@pipe-a-bad-aux-stri=
de-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@ctm-red-to-blue:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108734v1/shard-apl2/igt@kms_color_chamelium@ctm-red=
-to-blue.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip@atomic-transitions-varying-size:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-iclb1/igt@kms_cursor_legacy@cursor-vs-flip@atomic-trans=
itions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_108734v1/shard-iclb7/igt@kms_cursor_legacy@curs=
or-vs-flip@atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/5072">i915#5072</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_108734v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atom=
ic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108734v1/shard-glk5/igt@kms_dither@fb-8bpc-vs-panel=
-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptib=
le@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_108734v1/shard-glk7/igt@kms_flip@2x-plain-fli=
p-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_108734v1/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html"=
>FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i=
915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@d-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-tglb5/igt@kms_flip@flip-vs-suspend-interruptible@d-edp1=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_108734v1/shard-tglb5/igt@kms_flip@flip-vs-suspend-interruptible@d-=
edp1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/6021">i915#6021</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-32bpp-linear-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108734v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-linear-to-32bpp-linear-downscaling@pipe-a-default-mode.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555=
</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pi=
pe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108734v1/shard-iclb6/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108734v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</=
a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-apl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_108734v1/shard-apl8/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">=
i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pi=
pe-a-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-iclb6/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-5@pipe-a-edp-1.html">PASS</a> -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-iclb2/igt@kms_plan=
e_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a-edp-1.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235=
">i915#5235</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108734v1/shard-apl2/igt@kms_psr2_sf@cursor-plane-mo=
ve-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-iclb2/igt@kms_psr@psr2_sprite_plane_onoff.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10873=
4v1/shard-iclb4/igt@kms_psr@psr2_sprite_plane_onoff.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108734v1/shard-apl2/igt@kms_vblank@pipe-d-wait-idle=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/533">i915#533</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12158/shard-tglb3/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
08734v1/shard-tglb3/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></p>
</li>
<li>
<p>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12158/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#626=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
108734v1/shard-tglu-1/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-tglu-6/igt@gem_exec_fair@basic-none-share@rcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i9=
15#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_108734v1/shard-tglu-3/igt@gem_exec_fair@basic-none-share@rcs0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-apl1/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_108734v1/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-apl3/igt@gem_workarounds@suspend-resume.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_108734v1/shard-apl2/igt@gem_workarounds@suspend-resume.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-iclb8/igt@i915_pm_dc@dc5-psr.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3989">i915#3989</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/sha=
rd-iclb3/igt@i915_pm_dc@dc5-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-badstride:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-snb4/igt@kms_frontbuffer_tracking@fbc-badstride.html">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">=
fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_108734v1/shard-snb5/igt@kms_frontbuffer_tracking@fbc-badstride.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-glk6/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888=
">i915#1888</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_108734v1/shard-glk9/igt@kms_plane_lowres@tiling-y@pipe-c-hdmi-a-1=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-iclb6/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10873=
4v1/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> +2 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-accuracy-idle:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-glk6/igt@kms_vblank@pipe-b-accuracy-idle.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/43">i915#43</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1087=
34v1/shard-glk9/igt@kms_vblank@pipe-b-accuracy-idle.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-iclb6/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
08734v1/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_108734v1/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle@vcs0.html">WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-iclb6/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6=
58">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_108734v1/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuou=
s-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-iclb4/igt@kms_psr2_sf@overlay-plane-update-continuous-s=
f.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_108734v1/shard-iclb2/igt@kms_psr2_sf@overlay-plane-=
update-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12158/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_108734v1/shard-iclb4/igt@kms_psr2_sf@primary-plane-upd=
ate-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12158/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl1/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12158/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12158/shard-apl3/igt@runner@abort=
ed.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/5257">i915#5257</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/6599">i915#6599</a>) -&gt; (<a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-apl3/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_108734v1/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1/shard-ap=
l8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_108734v1/shard-apl2/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108734v1=
/shard-apl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>)<=
/li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12158 -&gt; Patchwork_108734v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12158: 3bde74f15d452bf788ecab8933ee802b2ee9e673 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6656: 24100c4e181c50e3678aeca9c641b8a43555ad73 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_108734v1: 3bde74f15d452bf788ecab8933ee802b2ee9e673 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1050581746654463455==--
