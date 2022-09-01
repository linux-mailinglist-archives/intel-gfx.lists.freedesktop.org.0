Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13F235A96C6
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 14:29:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E45BD10E6E9;
	Thu,  1 Sep 2022 12:29:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id F190010E6EC;
 Thu,  1 Sep 2022 12:29:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E8C48AADD6;
 Thu,  1 Sep 2022 12:29:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3834924386821529013=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nirmoy Das" <nirmoy.das@intel.com>
Date: Thu, 01 Sep 2022 12:29:19 -0000
Message-ID: <166203535991.11919.716514572350579237@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220831161841.20033-1-nirmoy.das@intel.com>
In-Reply-To: <20220831161841.20033-1-nirmoy.das@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/ttm=3A_Abort_suspend_on_i915=5Fttm=5Fbackup_failure_=28re?=
 =?utf-8?b?djIp?=
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

--===============3834924386821529013==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/ttm: Abort suspend on i915_ttm_backup failure (rev2)
URL   : https://patchwork.freedesktop.org/series/107877/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12057_full -> Patchwork_107877v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_107877v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_107877v2_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 12)
------------------------------

  Missing    (1): shard-rkl 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_107877v2_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_busy@close-race:
    - shard-snb:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-snb6/igt@gem_busy@close-race.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-snb6/igt@gem_busy@close-race.html

  
Known issues
------------

  Here are the changes found in Patchwork_107877v2_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) -> ([FAIL][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51]) ([i915#4392])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk9/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk9/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk8/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk8/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk5/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk5/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk3/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk3/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk2/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk3/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk3/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk6/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk7/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk7/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk7/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk8/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk8/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk8/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk9/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk9/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][52] -> [FAIL][53] ([i915#5784])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-tglb6/igt@gem_eio@kms.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-tglb5/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-iclb:         [PASS][54] -> [SKIP][55] ([i915#4525]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb3/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][56] -> [FAIL][57] ([i915#2842])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-glk:          [PASS][58] -> [FAIL][59] ([i915#2842]) +1 similar issue
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk9/igt@gem_exec_fair@basic-none@vcs0.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk6/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [PASS][60] -> [FAIL][61] ([i915#2842])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-kbl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#4613])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl1/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#4613])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [PASS][64] -> [DMESG-WARN][65] ([i915#5566] / [i915#716])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk5/igt@gen9_exec_parse@allowed-single.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk7/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][66] -> [FAIL][67] ([i915#454])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@live@hangcheck:
    - shard-iclb:         [PASS][68] -> [DMESG-WARN][69] ([i915#2867]) +6 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb8/igt@i915_selftest@live@hangcheck.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb6/igt@i915_selftest@live@hangcheck.html
    - shard-snb:          [PASS][70] -> [INCOMPLETE][71] ([i915#3921])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-snb4/igt@i915_selftest@live@hangcheck.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-snb4/igt@i915_selftest@live@hangcheck.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#3886]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][73] ([fdo#109271]) +35 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl1/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#3886])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl1/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [fdo#111827])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium@hdmi-frame-dump:
    - shard-kbl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [fdo#111827])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl1/igt@kms_chamelium@hdmi-frame-dump.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          NOTRUN -> [TIMEOUT][77] ([i915#1319])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_content_protection@atomic.html

  * igt@kms_cursor_legacy@cursor-vs-flip@toggle:
    - shard-iclb:         [PASS][78] -> [FAIL][79] ([i915#5072]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@toggle.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@toggle.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][80] -> [FAIL][81] ([i915#79])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][82] -> [FAIL][83] ([i915#2122])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-apl:          [PASS][84] -> [DMESG-WARN][85] ([i915#180]) +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-kbl:          [PASS][86] -> [DMESG-WARN][87] ([i915#180]) +6 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([i915#3555]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][89] ([i915#2672]) +8 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([i915#2672] / [i915#3555])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:
    - shard-apl:          NOTRUN -> [SKIP][91] ([fdo#109271]) +37 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
    - shard-kbl:          [PASS][92] -> [FAIL][93] ([i915#1188])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-kbl7/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][94] ([i915#265])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
    - shard-iclb:         [PASS][95] -> [SKIP][96] ([i915#5235]) +2 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb7/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#658])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][98] -> [SKIP][99] ([fdo#109441]) +2 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb5/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm:
    - shard-iclb:         [PASS][100] -> [SKIP][101] ([fdo#109278])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb8/igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb6/igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#533])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@sysfs_clients@recycle-many:
    - shard-kbl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#2994])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl1/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@sema-10:
    - shard-apl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#2994])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@sysfs_clients@sema-10.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@legacy-engines-hang@blt:
    - {shard-dg1}:        [FAIL][105] ([i915#4883]) -> [PASS][106] +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-dg1-16/igt@gem_ctx_persistence@legacy-engines-hang@blt.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-dg1-13/igt@gem_ctx_persistence@legacy-engines-hang@blt.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-apl:          [TIMEOUT][107] ([i915#3063]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl6/igt@gem_eio@in-flight-contexts-10ms.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl8/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [SKIP][109] ([i915#4525]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_endless@dispatch@vcs1:
    - shard-tglb:         [INCOMPLETE][111] ([i915#3778]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-tglb1/igt@gem_exec_endless@dispatch@vcs1.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-tglb2/igt@gem_exec_endless@dispatch@vcs1.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][113] ([i915#2842]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - {shard-tglu}:       [FAIL][115] ([i915#2842]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-tglu-2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-tglu-2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [FAIL][117] ([i915#2842]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_reloc@basic-wc-gtt-active:
    - shard-apl:          [DMESG-WARN][119] ([i915#5904] / [i915#62]) -> [PASS][120] +31 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl3/igt@gem_exec_reloc@basic-wc-gtt-active.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl8/igt@gem_exec_reloc@basic-wc-gtt-active.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - {shard-dg1}:        [DMESG-WARN][121] ([i915#4936]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][123] ([i915#454]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb5/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - {shard-dg1}:        [SKIP][125] ([i915#1397]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-dg1-15/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-dg1-19/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@i915_pm_rps@engine-order:
    - shard-kbl:          [FAIL][127] ([i915#6537]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-kbl1/igt@i915_pm_rps@engine-order.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@i915_pm_rps@engine-order.html

  * igt@kms_cursor_legacy@cursor-vs-flip@varying-size:
    - shard-iclb:         [FAIL][129] ([i915#5072]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@varying-size.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@varying-size.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [FAIL][131] ([i915#4767]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][133] ([i915#2122]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][135] ([i915#79]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
    - shard-apl:          [FAIL][137] ([i915#1188]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl3/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html

  * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
    - shard-apl:          [DMESG-WARN][139] ([i915#180]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
    - shard-kbl:          [FAIL][141] ([i915#1188]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html

  * igt@kms_plane_lowres@tiling-x@pipe-a-dp-1:
    - shard-apl:          [SKIP][143] ([fdo#109271]) -> [PASS][144] +3 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl3/igt@kms_plane_lowres@tiling-x@pipe-a-dp-1.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl8/igt@kms_plane_lowres@tiling-x@pipe-a-dp-1.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
    - shard-apl:          [DMESG-WARN][145] ([i915#165] / [i915#62]) -> [PASS][146] +1 similar issue
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl3/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl8/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html

  * igt@kms_prime@basic-crc-vgem@second-to-first:
    - shard-apl:          [DMESG-WARN][147] ([i915#1982] / [i915#5904] / [i915#62]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl3/igt@kms_prime@basic-crc-vgem@second-to-first.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl8/igt@kms_prime@basic-crc-vgem@second-to-first.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][149] ([fdo#109441]) -> [PASS][150] +3 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_rotation_crc@sprite-rotation-180:
    - shard-glk:          [FAIL][151] ([i915#1888] / [i915#5852]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk2/igt@kms_rotation_crc@sprite-rotation-180.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk9/igt@kms_rotation_crc@sprite-rotation-180.html

  * igt@kms_vblank@pipe-a-ts-continuation-idle-hang:
    - shard-apl:          [DMESG-WARN][153] ([i915#180] / [i915#5904] / [i915#62]) -> [PASS][154] +99 similar issues
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-idle-hang.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-idle-hang.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-kbl:          [INCOMPLETE][155] ([i915#3614] / [i915#4939] / [i915#6598]) -> [PASS][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@perf_pmu@busy-double-start@vcs1:
    - {shard-dg1}:        [FAIL][157] ([i915#4349]) -> [PASS][158]
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-dg1-15/igt@perf_pmu@busy-double-start@vcs1.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-dg1-16/igt@perf_pmu@busy-double-start@vcs1.html

  
#### Warnings ####

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [FAIL][159] ([i915#5784]) -> [TIMEOUT][160] ([i915#3063])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-tglb1/igt@gem_eio@unwedge-stress.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-tglb7/igt@gem_eio@unwedge-stress.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-basic:
    - shard-apl:          [DMESG-FAIL][161] ([fdo#108145] / [i915#180] / [i915#62]) -> [FAIL][162] ([fdo#108145] / [i915#265]) +1 similar issue
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl2/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html

  * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
    - shard-iclb:         [SKIP][163] ([i915#658]) -> [SKIP][164] ([i915#2920])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb1/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-iclb:         [SKIP][165] ([i915#2920]) -> [SKIP][166] ([fdo#111068] / [i915#658]) +1 similar issue
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][167], [FAIL][168], [FAIL][169]) ([i915#3002] / [i915#4312] / [i915#5257] / [i915#6599]) -> ([FAIL][170], [FAIL][171], [FAIL][172], [FAIL][173]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#6599])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl7/igt@runner@aborted.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl1/igt@runner@aborted.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl6/igt@runner@aborted.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl6/igt@runner@aborted.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl6/igt@runner@aborted.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl3/igt@runner@aborted.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@runner@aborted.html
    - shard-kbl:          ([FAIL][174], [FAIL][175]) ([i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][176], [FAIL][177], [FAIL][178], [FAIL][179], [FAIL][180], [FAIL][181]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-kbl4/igt@runner@aborted.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-kbl4/igt@runner@aborted.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl4/igt@runner@aborted.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@runner@aborted.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@runner@aborted.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@runner@aborted.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@runner@aborted.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
  [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2867]: https://gitlab.freedesktop.org/drm/intel/issues/2867
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3614]: https://gitlab.freedesktop.org/drm/intel/issues/3614
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3778]: https://gitlab.freedesktop.org/drm/intel/issues/3778
  [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4078]: https://gitlab.freedesktop.org/drm/intel/issues/4078
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4349]: https://gitlab.freedesktop.org/drm/intel/issues/4349
  [i915#4392]: https://gitlab.freedesktop.org/drm/intel/issues/4392
  [i915#4494]: https://gitlab.freedesktop.org/drm/intel/issues/4494
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4883]: https://gitlab.freedesktop.org/drm/intel/issues/4883
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#4941]: https://gitlab.freedesktop.org/drm/intel/issues/4941
  [i915#4957]: https://gitlab.freedesktop.org/drm/intel/issues/4957
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5072]: https://gitlab.freedesktop.org/drm/intel/issues/5072
  [i915#5122]: https://gitlab.freedesktop.org/drm/intel/issues/5122
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5182]: https://gitlab.freedesktop.org/drm/intel/issues/5182
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5852]: https://gitlab.freedesktop.org/drm/intel/issues/5852
  [i915#5904]: https://gitlab.freedesktop.org/drm/intel/issues/5904
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#62]: https://gitlab.freedesktop.org/drm/intel/issues/62
  [i915#6230]: https://gitlab.freedesktop.org/drm/intel/issues/6230
  [i915#6335]: https://gitlab.freedesktop.org/drm/intel/issues/6335
  [i915#6537]: https://gitlab.freedesktop.org/drm/intel/issues/6537
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6590]: https://gitlab.freedesktop.org/drm/intel/issues/6590
  [i915#6598]: https://gitlab.freedesktop.org/drm/intel/issues/6598
  [i915#6599]: https://gitlab.freedesktop.org/drm/intel/issues/6599
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12057 -> Patchwork_107877v2

  CI-20190529: 20190529
  CI_DRM_12057: 2f15a899e2f2d3078fc1d5917114de9ece53a1d7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6639: ba61c48dba71d5597d7297a07dc3e307665f961b @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_107877v2: 2f15a899e2f2d3078fc1d5917114de9ece53a1d7 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/index.html

--===============3834924386821529013==
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
<tr><td><b>Series:</b></td><td>drm/i915/ttm: Abort suspend on i915_ttm_back=
up failure (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/107877/">https://patchwork.freedesktop.org/series/107877/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107877v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_107877v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12057_full -&gt; Patchwork_107877v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_107877v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_107877v2_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (13 -&gt; 12)</h2>
<p>Missing    (1): shard-rkl </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
107877v2_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_busy@close-race:<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-snb6/igt@gem_busy@close-race.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-snb=
6/igt@gem_busy@close-race.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_107877v2_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12057/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12057/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12057/shard-glk8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/sha=
rd-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12057/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk7/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12057/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12057/shard-glk6/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057=
/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12057/shard-glk5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-gl=
k3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk3/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2057/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12057/shard-glk2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-glk1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shar=
d-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_12057/shard-glk1/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk1/boot.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107=
877v2/shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_107877v2/shard-glk1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_107877v2/shard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/sh=
ard-glk2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_107877v2/shard-glk3/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk3/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
7877v2/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_107877v2/shard-glk5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_107877v2/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/sh=
ard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_107877v2/shard-glk7/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk7/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
7877v2/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_107877v2/shard-glk8/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk8/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_107877v2/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk9/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/sh=
ard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_107877v2/shard-glk9/boot.html">PASS</a>) (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/4392">i915#4392</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-tglb6/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-tglb5/igt@=
gem_eio@kms.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-iclb1/igt@gem_exec_balancer@parallel-bb-first.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
07877v2/shard-iclb3/igt@gem_exec_balancer@parallel-bb-first.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i915#4525=
</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
07877v2/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-glk9/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2=
/shard-glk6/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107=
877v2/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107877v2/shard-kbl1/igt@gem_lmem_swapping@heavy-mul=
ti.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@gem_lmem_swapping@heavy-ver=
ify-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-glk5/igt@gen9_exec_parse@allowed-single.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v=
2/shard-glk7/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</=
a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-ic=
lb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/454">i915#454</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12057/shard-iclb8/igt@i915_selftest@live@hangcheck.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/=
shard-iclb6/igt@i915_selftest@live@hangcheck.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2867">i915#2867</a>) +6=
 similar issues</p>
</li>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12057/shard-snb4/igt@i915_selftest@live@hangcheck.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/s=
hard-snb4/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_ccs@pipe-b-crc-primary-=
rotation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107877v2/shard-kbl1/igt@kms_ccs@pipe-c-bad-aux-stri=
de-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a>) +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107877v2/shard-kbl1/igt@kms_ccs@pipe-c-ccs-on-anoth=
er-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_chamelium@hdmi-edid-cha=
nge-during-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-frame-dump:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107877v2/shard-kbl1/igt@kms_chamelium@hdmi-frame-du=
mp.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_content_protection@atom=
ic.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip@toggle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@toggle.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_107877v2/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@toggle.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5072">i=
915#5072</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ab-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptib=
le@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_107877v2/shard-glk7/igt@kms_flip@2x-flip-vs-e=
xpired-vblank-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-glk9/igt@kms_flip@2x-plain-flip-ts-check@ac-hdmi-a1-hdm=
i-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_107877v2/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check@ac-hdm=
i-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_107877v2/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_107877v2/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/180">i915#180</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling@p=
ipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107877v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytileccs-downscaling@pipe-a-default-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#355=
5</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107877v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-default-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107877v2/shard-iclb5/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_frontbuffer_tracking@ps=
r-2p-scndscrn-spr-indfb-draw-render.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +37 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-kbl7/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
7877v2/shard-kbl7/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_plane_alpha_blend@pipe-=
c-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-iclb7/igt@kms_plane_scaling@planes-downscale-factor-0-5=
@pipe-a-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_107877v2/shard-iclb2/igt@kms_plane_scaling@planes-dow=
nscale-factor-0-5@pipe-a-edp-1.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/5235">i915#5235</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_psr2_su@frontbuffer-xrg=
b8888.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shar=
d-iclb5/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-iclb8/igt@kms_vblank@pipe-a-ts-continuation-modeset-rpm=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_107877v2/shard-iclb6/igt@kms_vblank@pipe-a-ts-continuation-modeset=
-rpm.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@kms_vblank@pipe-d-wait-idle=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107877v2/shard-kbl1/igt@sysfs_clients@recycle-many.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@sysfs_clients@sema-10.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang@blt:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-dg1-16/igt@gem_ctx_persistence@legacy-engines-hang@blt.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4883">i915#4883</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_107877v2/shard-dg1-13/igt@gem_ctx_persistence@legacy-engines-=
hang@blt.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-apl6/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#=
3063</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_107877v2/shard-apl8/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-iclb8/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525=
">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_107877v2/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence=
.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@vcs1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-tglb1/igt@gem_exec_endless@dispatch@vcs1.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3778">i9=
15#3778</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_107877v2/shard-tglb2/igt@gem_exec_endless@dispatch@vcs1.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
07877v2/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-tglu-2/igt@gem_exec_fair@basic-none-share@rcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i9=
15#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_107877v2/shard-tglu-2/igt@gem_exec_fair@basic-none-share@rcs0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-apl7/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_107877v2/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt-active:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-apl3/igt@gem_exec_reloc@basic-wc-gtt-active.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5904"=
>i915#5904</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/62">i915#62</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_107877v2/shard-apl8/igt@gem_exec_reloc@basic-wc-gtt-active.html"=
>PASS</a> +31 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-dg1-16/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4936"=
>i915#4936</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_107877v2/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-iclb3/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard=
-iclb5/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-dg1-15/igt@i915_pm_rpm@modeset-lpsp-stress.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#1=
397</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_107877v2/shard-dg1-19/igt@i915_pm_rpm@modeset-lpsp-stress.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-kbl1/igt@i915_pm_rps@engine-order.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/6537">i915#6537</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v=
2/shard-kbl7/igt@i915_pm_rps@engine-order.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip@varying-size:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@varying-size=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/5072">i915#5072</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_107877v2/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip@va=
rying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877=
v2/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi=
-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-glk1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interru=
ptible@ac-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk5/igt@kms_flip@2x=
-flip-vs-absolute-wf_vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptib=
le@ac-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/79">i915#79</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_107877v2/shard-glk7/igt@kms_flip@2x-flip-vs=
-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-apl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915=
#1188</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_107877v2/shard-apl3/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12057/shard-apl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html">DM=
ESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/18=
0">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_107877v2/shard-apl7/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.ht=
ml">PASS</a></p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_12057/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i9=
15#1188</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_107877v2/shard-kbl4/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html">=
PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-x@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-apl3/igt@kms_plane_lowres@tiling-x@pipe-a-dp-1.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_107877v2/shard-apl8/igt@kms_plane_lowres@tiling-x@pipe-a-dp-1.html"=
>PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-y:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-apl3/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/165">i915#165</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/62">i915#62</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_107877v2/shard-apl8/igt@kms_plane_multiple@atomic-pipe-b-ti=
ling-y.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-vgem@second-to-first:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-apl3/igt@kms_prime@basic-crc-vgem@second-to-first.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/1982">i915#1982</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5904">i915#5904</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/62">i915#62</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107877v2/shard-apl8/igt@kms_prime@basic-crc-vgem@sec=
ond-to-first.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10944=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
107877v2/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> +3 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-glk2/igt@kms_rotation_crc@sprite-rotation-180.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888">i91=
5#1888</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/585=
2">i915#5852</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_107877v2/shard-glk9/igt@kms_rotation_crc@sprite-rotation-180.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-idle-hang:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-apl3/igt@kms_vblank@pipe-a-ts-continuation-idle-hang.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/5904">i915#5904</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/62">i915#62</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_107877v2/shard-apl8/igt@kms_vblank@pipe-a-ts-contin=
uation-idle-hang.html">PASS</a> +99 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-kbl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html=
">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3614">i915#3614</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4939">i915#4939</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/6598">i915#6598</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_107877v2/shard-kbl1/igt@kms_vblank@pipe-b-ts-co=
ntinuation-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vcs1:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-dg1-15/igt@perf_pmu@busy-double-start@vcs1.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4349">i915#4=
349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_107877v2/shard-dg1-16/igt@perf_pmu@busy-double-start@vcs1.html">PASS</a><=
/li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-tglb1/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2=
/shard-tglb7/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3063</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-basic:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-basic.html"=
>DMESG-FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/62">i915#62</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_107877v2/shard-apl2/igt@kms_plane_alpha_blend@pipe-c=
-alpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-iclb1/igt@kms_psr2_sf@overlay-plane-move-continuous-exc=
eed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_107877v2/shard-iclb2/igt@kms_psr2_sf@overlay-plane=
-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-s=
f.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_107877v2/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-c=
ontinuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-apl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_12057/shard-apl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6599">i915#6599=
</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
107877v2/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl6/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_107877v2/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-apl7/igt@=
runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5257">i915#5257</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/6599">i915#6599</a>)</p>
</li>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12057/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12057/shard-kbl4/igt@runner@abo=
rted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/4312">i915#4312</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/5257">i915#5257</a>) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl4/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
107877v2/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_107877v2/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107877v2/shard-kbl7/igt@=
runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_107877v2/shard-kbl7/igt@runner@aborted.html">FAIL</a>) (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#30=
02</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i=
915#4312</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5=
257">i915#5257</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12057 -&gt; Patchwork_107877v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12057: 2f15a899e2f2d3078fc1d5917114de9ece53a1d7 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6639: ba61c48dba71d5597d7297a07dc3e307665f961b @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_107877v2: 2f15a899e2f2d3078fc1d5917114de9ece53a1d7 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============3834924386821529013==--
