Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBE8988DE1
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Sep 2024 07:15:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B9F710E03E;
	Sat, 28 Sep 2024 05:15:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8404310E03E;
 Sat, 28 Sep 2024 05:15:29 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3722764611920676001=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_Reduce_SHPD=5FFILTER=5FCNT_?=
 =?utf-8?q?value_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 28 Sep 2024 05:15:29 -0000
Message-ID: <172750052952.1131025.14425698085774770414@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240923031007.1058072-2-suraj.kandpal@intel.com>
In-Reply-To: <20240923031007.1058072-2-suraj.kandpal@intel.com>
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

--===============3722764611920676001==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Reduce SHPD_FILTER_CNT value (rev3)
URL   : https://patchwork.freedesktop.org/series/138743/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_15451_full -> Patchwork_138743v3_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_138743v3_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_138743v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 8)
------------------------------

  Missing    (1): shard-glk-0 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_138743v3_full:

### CI changes ###

#### Possible regressions ####

  * boot:
    - shard-dg1:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [FAIL][47], [PASS][48], [PASS][49], [PASS][50])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-17/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-16/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-13/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-13/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-16/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-16/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-15/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-15/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-15/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-14/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-17/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-17/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-18/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-19/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-19/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-18/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-18/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-13/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-12/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-17/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-12/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-14/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-18/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-12/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-14/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-19/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-15/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-16/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-16/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-16/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-17/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-17/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-17/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-18/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-18/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-18/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-18/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-19/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-19/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-19/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-12/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-12/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-12/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-13/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-13/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-13/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-14/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-14/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-15/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-15/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@kms_big_joiner@invalid-modeset-force-joiner:
    - shard-dg2:          [PASS][51] -> [SKIP][52] +1 other test skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_big_joiner@invalid-modeset-force-joiner.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-6/igt@kms_big_joiner@invalid-modeset-force-joiner.html
    - shard-rkl:          NOTRUN -> [SKIP][53] +5 other tests skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-1/igt@kms_big_joiner@invalid-modeset-force-joiner.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc:
    - shard-tglu:         NOTRUN -> [SKIP][54] +22 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_color@ctm-signed:
    - shard-tglu:         [PASS][55] -> [SKIP][56] +32 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-5/igt@kms_color@ctm-signed.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_color@ctm-signed.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][57] +2 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  
#### Warnings ####

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglu:         [SKIP][58] ([i915#5286]) -> [SKIP][59] +3 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-tglu:         [SKIP][60] ([i915#12042]) -> [SKIP][61] +1 other test skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-6/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs:
    - shard-tglu:         [SKIP][62] ([i915#6095]) -> [SKIP][63] +5 other tests skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-5/igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs.html

  * igt@kms_content_protection@mei-interface:
    - shard-tglu:         [SKIP][64] ([i915#6944] / [i915#9424]) -> [SKIP][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-6/igt@kms_content_protection@mei-interface.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@type1:
    - shard-tglu:         [SKIP][66] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424]) -> [SKIP][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-5/igt@kms_content_protection@type1.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-tglu:         [SKIP][68] ([i915#11453]) -> [SKIP][69] +1 other test skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-5/igt@kms_cursor_crc@cursor-random-512x512.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-tglu:         [SKIP][70] ([i915#4103]) -> [SKIP][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-tglu:         [SKIP][72] ([i915#9067]) -> [SKIP][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_display_modes@mst-extended-mode-negative:
    - shard-tglu:         [SKIP][74] ([i915#8588]) -> [SKIP][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-5/igt@kms_display_modes@mst-extended-mode-negative.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_display_modes@mst-extended-mode-negative.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-tglu:         [SKIP][76] ([i915#1849]) -> [SKIP][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][78] ([i915#5354]) -> [SKIP][79] +14 other tests skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area:
    - shard-dg1:          [SKIP][80] ([i915#4423]) -> [SKIP][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-12/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-16/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area.html

  * igt@kms_scaling_modes@scaling-mode-none:
    - shard-tglu:         [SKIP][82] ([i915#3555]) -> [SKIP][83] +4 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-5/igt@kms_scaling_modes@scaling-mode-none.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_scaling_modes@scaling-mode-none.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@sriov_basic@enable-vfs-bind-unbind-each:
    - {shard-tglu-1}:     NOTRUN -> [SKIP][84] +4 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-1/igt@sriov_basic@enable-vfs-bind-unbind-each.html

  
New tests
---------

  New tests have been introduced between CI_DRM_15451_full and Patchwork_138743v3_full:

### New IGT tests (16) ###

  * igt@kms_lease@cursor-implicit-plane@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.34] s

  * igt@kms_lease@cursor-implicit-plane@pipe-b-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.23] s

  * igt@kms_lease@cursor-implicit-plane@pipe-c-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_lease@cursor-implicit-plane@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_lease@lease-revoke@pipe-a-hdmi-a-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.06] s

  * igt@kms_lease@lease-revoke@pipe-b-hdmi-a-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.04, 0.05] s

  * igt@kms_lease@lease-revoke@pipe-c-hdmi-a-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.04, 0.06] s

  * igt@kms_lease@lease-revoke@pipe-d-hdmi-a-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.05, 0.06] s

  * igt@kms_lease@lessee-list@pipe-a-hdmi-a-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.00] s

  * igt@kms_lease@lessee-list@pipe-b-hdmi-a-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.00] s

  * igt@kms_lease@lessee-list@pipe-c-hdmi-a-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.00] s

  * igt@kms_lease@lessee-list@pipe-d-hdmi-a-3:
    - Statuses : 2 pass(s)
    - Exec time: [0.00] s

  * igt@kms_lease@setcrtc-implicit-plane@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.36] s

  * igt@kms_lease@setcrtc-implicit-plane@pipe-b-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.27] s

  * igt@kms_lease@setcrtc-implicit-plane@pipe-c-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_lease@setcrtc-implicit-plane@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  

Known issues
------------

  Here are the changes found in Patchwork_138743v3_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@debugfs_test@basic-hwmon:
    - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#9318])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-5/igt@debugfs_test@basic-hwmon.html

  * igt@drm_fdinfo@most-busy-idle-check-all:
    - shard-rkl:          [PASS][86] -> [FAIL][87] ([i915#12179])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all.html

  * igt@drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-rkl:          [PASS][88] -> [FAIL][89] ([i915#7742])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@drm_fdinfo@virtual-busy-hang-all:
    - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#8414])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-mtlp-7/igt@drm_fdinfo@virtual-busy-hang-all.html

  * igt@drm_fdinfo@virtual-idle:
    - shard-rkl:          [PASS][91] -> [FAIL][92] ([i915#11900] / [i915#7742])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-3/igt@drm_fdinfo@virtual-idle.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-4/igt@drm_fdinfo@virtual-idle.html

  * igt@fbdev@info:
    - shard-dg2:          [PASS][93] -> [SKIP][94] ([i915#1849] / [i915#2582])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@fbdev@info.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@fbdev@info.html
    - shard-tglu:         NOTRUN -> [SKIP][95] ([i915#1849] / [i915#2582])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@fbdev@info.html

  * igt@fbdev@nullptr:
    - shard-tglu:         [PASS][96] -> [SKIP][97] ([i915#2582])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-5/igt@fbdev@nullptr.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@fbdev@nullptr.html

  * igt@fbdev@unaligned-write:
    - shard-dg2:          [PASS][98] -> [SKIP][99] ([i915#2582]) +1 other test skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-4/igt@fbdev@unaligned-write.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@fbdev@unaligned-write.html

  * igt@fbdev@write:
    - shard-tglu:         NOTRUN -> [SKIP][100] ([i915#2582])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@fbdev@write.html

  * igt@gem_busy@close-race:
    - shard-tglu:         NOTRUN -> [FAIL][101] ([i915#12297])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@gem_busy@close-race.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-tglu:         NOTRUN -> [SKIP][102] ([i915#9323])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-6/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#3555] / [i915#9323]) +1 other test skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#9323])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-7/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#7697])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-5/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-set-pat:
    - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#8562])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-5/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-rkl:          [PASS][107] -> [FAIL][108] ([i915#12065])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-3/igt@gem_ctx_engines@invalid-engines.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-4/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_ctx_persistence@hang:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#8555])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-4/igt@gem_ctx_persistence@hang.html
    - shard-dg1:          NOTRUN -> [SKIP][110] ([i915#8555])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-17/igt@gem_ctx_persistence@hang.html

  * igt@gem_ctx_sseu@engines:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#280])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-2/igt@gem_ctx_sseu@engines.html

  * igt@gem_eio@hibernate:
    - shard-rkl:          NOTRUN -> [ABORT][112] ([i915#7975] / [i915#8213])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-6/igt@gem_eio@hibernate.html

  * igt@gem_exec_balancer@hog:
    - shard-dg1:          NOTRUN -> [SKIP][113] ([i915#4812])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-15/igt@gem_exec_balancer@hog.html
    - shard-mtlp:         NOTRUN -> [SKIP][114] ([i915#4812])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-mtlp-2/igt@gem_exec_balancer@hog.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#4525]) +2 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-2/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_big@single:
    - shard-tglu:         NOTRUN -> [ABORT][116] ([i915#11713])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-6/igt@gem_exec_big@single.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-tglu:         NOTRUN -> [SKIP][117] ([i915#6344])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_fair@basic-none-vip:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#3539] / [i915#4852])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-4/igt@gem_exec_fair@basic-none-vip.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-rkl:          [PASS][119] -> [FAIL][120] ([i915#2842]) +1 other test fail
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fence@concurrent:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#4812])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@gem_exec_fence@concurrent.html

  * igt@gem_exec_flush@basic-uc-pro-default:
    - shard-dg1:          NOTRUN -> [SKIP][122] ([i915#3539] / [i915#4852]) +2 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-17/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_reloc@basic-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#3281])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@gem_exec_reloc@basic-gtt.html

  * igt@gem_exec_reloc@basic-scanout@vcs1:
    - shard-tglu:         NOTRUN -> [SKIP][124] ([i915#3639]) +5 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@gem_exec_reloc@basic-scanout@vcs1.html

  * igt@gem_exec_reloc@basic-write-read:
    - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#3281]) +11 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-3/igt@gem_exec_reloc@basic-write-read.html

  * igt@gem_exec_reloc@basic-write-wc-active:
    - shard-dg1:          NOTRUN -> [SKIP][126] ([i915#3281])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-15/igt@gem_exec_reloc@basic-write-wc-active.html
    - shard-mtlp:         NOTRUN -> [SKIP][127] ([i915#3281])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-mtlp-2/igt@gem_exec_reloc@basic-write-wc-active.html

  * igt@gem_exec_schedule@pi-common@vcs0:
    - shard-rkl:          NOTRUN -> [FAIL][128] ([i915#12296]) +9 other tests fail
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-3/igt@gem_exec_schedule@pi-common@vcs0.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#7276])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-2/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_huc_copy@huc-copy:
    - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#2190])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-5/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#4613]) +2 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-2/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-tglu:         NOTRUN -> [SKIP][132] ([i915#4613]) +1 other test skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          NOTRUN -> [TIMEOUT][133] ([i915#5493]) +1 other test timeout
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@gem_lmem_swapping@smem-oom@lmem0.html
    - shard-dg1:          NOTRUN -> [TIMEOUT][134] ([i915#5493]) +1 other test timeout
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][135] ([i915#12193])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-15/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_lmem_swapping@verify-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][136] ([i915#4565])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-15/igt@gem_lmem_swapping@verify-ccs@lmem0.html

  * igt@gem_mmap@basic-small-bo:
    - shard-dg1:          NOTRUN -> [SKIP][137] ([i915#4083])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-15/igt@gem_mmap@basic-small-bo.html

  * igt@gem_mmap_gtt@close-race:
    - shard-dg1:          NOTRUN -> [SKIP][138] ([i915#4077])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-17/igt@gem_mmap_gtt@close-race.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#3282]) +2 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-1/igt@gem_partial_pwrite_pread@writes-after-reads-display.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#4270]) +2 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-7/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-tglu:         NOTRUN -> [SKIP][141] ([i915#4270])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#4270])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-1/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#8411]) +1 other test skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-1/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#3282] / [i915#3297])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-2/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#3297])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-4/igt@gem_userptr_blits@readonly-pwrite-unsync.html
    - shard-dg1:          NOTRUN -> [SKIP][146] ([i915#3297])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-17/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gem_userptr_blits@relocations:
    - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#3281] / [i915#3297])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-3/igt@gem_userptr_blits@relocations.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#3297]) +1 other test skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-1/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-tglu:         NOTRUN -> [SKIP][149] ([i915#3297])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen7_exec_parse@basic-allowed:
    - shard-dg2:          NOTRUN -> [SKIP][150]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-1/igt@gen7_exec_parse@basic-allowed.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-tglu:         NOTRUN -> [SKIP][151] +16 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-6/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#2527]) +4 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-3/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_module_load@load:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#6227])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-1/igt@i915_module_load@load.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#8399])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-3/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][155] ([i915#8399])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
    - shard-dg1:          [PASS][156] -> [FAIL][157] ([i915#3591])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-mtlp:         NOTRUN -> [SKIP][158] +1 other test skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-mtlp-2/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_power@sanity:
    - shard-mtlp:         [PASS][159] -> [SKIP][160] ([i915#7984])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-mtlp-6/igt@i915_power@sanity.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-mtlp-2/igt@i915_power@sanity.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-tglu:         NOTRUN -> [SKIP][161] ([i915#5723])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [PASS][162] -> [ABORT][163] ([i915#12216]) +1 other test abort
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-mtlp-4/igt@i915_selftest@live@workarounds.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-mtlp-1/igt@i915_selftest@live@workarounds.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][164] ([i915#8709]) +7 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-7/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#8709]) +11 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-4/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-dg1:          NOTRUN -> [SKIP][166] ([i915#9531])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-16/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [FAIL][167] ([i915#11808])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-5/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#5286]) +7 other tests skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-1/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [PASS][169] -> [FAIL][170] ([i915#5138])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#3638]) +3 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-3/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-glk:          NOTRUN -> [SKIP][172] +3 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-glk7/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#4538] / [i915#5190])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
    - shard-dg1:          NOTRUN -> [SKIP][174] ([i915#4538]) +1 other test skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-17/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][175] +34 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#6095]) +84 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-17/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html

  * igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-d-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][177] ([i915#10307] / [i915#6095]) +141 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-3/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-d-hdmi-a-2.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][178] ([i915#6095]) +4 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-mtlp-7/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-edp-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#12042])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#6095]) +85 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][181] ([i915#6095]) +24 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-5/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc:
    - shard-dg2:          NOTRUN -> [SKIP][182] ([i915#9197])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][183] ([i915#10307] / [i915#10434] / [i915#6095]) +6 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-4/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#11616] / [i915#7213]) +3 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-4/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#4087]) +3 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-6/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html

  * igt@kms_chamelium_edid@dp-edid-change-during-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#7828]) +1 other test skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-4/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html

  * igt@kms_chamelium_frames@dp-crc-single:
    - shard-dg1:          NOTRUN -> [SKIP][187] ([i915#7828]) +1 other test skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-15/igt@kms_chamelium_frames@dp-crc-single.html
    - shard-mtlp:         NOTRUN -> [SKIP][188] ([i915#7828]) +1 other test skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-mtlp-2/igt@kms_chamelium_frames@dp-crc-single.html

  * igt@kms_chamelium_hpd@vga-hpd-after-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][189] ([i915#7828]) +1 other test skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_chamelium_hpd@vga-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][190] ([i915#7828]) +13 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-3/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_content_protection@atomic:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#7118] / [i915#9424])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-5/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#3116])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-2/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@lic-type-0:
    - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#9424])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-6/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@lic-type-0@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [TIMEOUT][194] ([i915#7173])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-10/igt@kms_content_protection@lic-type-0@pipe-a-dp-3.html

  * igt@kms_content_protection@srm:
    - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#7118])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-5/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-dg1:          NOTRUN -> [SKIP][196] ([i915#11453])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-16/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#3555]) +11 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#11453]) +2 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-snb:          NOTRUN -> [SKIP][199] +84 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-snb2/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
    - shard-tglu:         NOTRUN -> [SKIP][200] ([i915#11453])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-6/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-tglu:         NOTRUN -> [SKIP][201] ([i915#4103])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][202] ([i915#4103]) +1 other test skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg1:          NOTRUN -> [SKIP][203] ([i915#4103] / [i915#4213])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-16/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dp_aux_dev:
    - shard-dg2:          [PASS][204] -> [SKIP][205] ([i915#1257])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_dp_aux_dev.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-6/igt@kms_dp_aux_dev.html
    - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#1257])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-1/igt@kms_dp_aux_dev.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][207] ([i915#3955])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-3/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
    - shard-tglu:         NOTRUN -> [SKIP][208] ([i915#3637]) +5 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][209] ([i915#4839]) +1 other test incomplete
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-glk1/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@kms_flip@flip-vs-fences:
    - shard-tglu:         [PASS][210] -> [SKIP][211] ([i915#3637]) +5 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-6/igt@kms_flip@flip-vs-fences.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_flip@flip-vs-fences.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-tglu:         [PASS][212] -> [FAIL][213] ([i915#2122]) +1 other test fail
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-7/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][214] ([i915#2672] / [i915#3555]) +5 other tests skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [SKIP][215] ([i915#2672]) +5 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][216] ([i915#3555]) +3 other tests skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html
    - shard-dg2:          NOTRUN -> [SKIP][217] ([i915#3555])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][218] ([i915#2672] / [i915#3555])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode:
    - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#2672]) +1 other test skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode:
    - shard-tglu:         NOTRUN -> [SKIP][220] ([i915#2587] / [i915#2672]) +2 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:
    - shard-dg2:          [PASS][221] -> [SKIP][222] ([i915#5354]) +8 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-1p-rte:
    - shard-tglu:         [PASS][223] -> [SKIP][224] ([i915#1849]) +9 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-2/igt@kms_frontbuffer_tracking@fbc-1p-rte.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-rte.html
    - shard-dg2:          [PASS][225] -> [FAIL][226] ([i915#6880])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-rte.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-rte.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:
    - shard-snb:          [PASS][227] -> [SKIP][228] +2 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][229] ([i915#10433] / [i915#3458])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
    - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#3023]) +34 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-tglu:         NOTRUN -> [SKIP][231] ([i915#1849]) +15 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
    - shard-dg1:          NOTRUN -> [SKIP][232] ([i915#3458]) +3 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][233] ([i915#3458]) +1 other test skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][234] ([i915#5354]) +2 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html
    - shard-dg1:          NOTRUN -> [SKIP][235] +4 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][236] ([i915#1825]) +50 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html
    - shard-mtlp:         NOTRUN -> [SKIP][237] ([i915#1825]) +2 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-rkl:          NOTRUN -> [SKIP][238] ([i915#3555] / [i915#8228]) +2 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-5/igt@kms_hdr@invalid-metadata-sizes.html
    - shard-mtlp:         NOTRUN -> [SKIP][239] ([i915#3555] / [i915#8228])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-mtlp-7/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_invalid_mode@int-max-clock:
    - shard-dg2:          [PASS][240] -> [SKIP][241] ([i915#3555]) +2 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-5/igt@kms_invalid_mode@int-max-clock.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_invalid_mode@int-max-clock.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          NOTRUN -> [SKIP][242] ([i915#6301])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-7/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_plane@plane-panning-top-left:
    - shard-dg2:          [PASS][243] -> [SKIP][244] ([i915#8825])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_plane@plane-panning-top-left.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_plane@plane-panning-top-left.html
    - shard-tglu:         NOTRUN -> [SKIP][245] ([i915#8825])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_plane@plane-panning-top-left.html

  * igt@kms_plane@plane-position-hole:
    - shard-tglu:         [PASS][246] -> [SKIP][247] ([i915#8825]) +1 other test skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-2/igt@kms_plane@plane-position-hole.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_plane@plane-position-hole.html

  * igt@kms_plane_alpha_blend@constant-alpha-max:
    - shard-tglu:         [PASS][248] -> [SKIP][249] ([i915#7294]) +1 other test skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-5/igt@kms_plane_alpha_blend@constant-alpha-max.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_plane_alpha_blend@constant-alpha-max.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          [PASS][250] -> [SKIP][251] ([i915#6953] / [i915#8152] / [i915#9423]) +1 other test skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:
    - shard-tglu:         [PASS][252] -> [SKIP][253] ([i915#8152]) +4 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-2/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][254] ([i915#12247]) +13 other tests skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:
    - shard-tglu:         [PASS][255] -> [SKIP][256] ([i915#3555] / [i915#8152])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b:
    - shard-tglu:         [PASS][257] -> [SKIP][258] ([i915#12247]) +8 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format:
    - shard-dg2:          [PASS][259] -> [SKIP][260] ([i915#8152] / [i915#9423])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d:
    - shard-dg2:          [PASS][261] -> [SKIP][262] ([i915#8152])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling:
    - shard-dg2:          [PASS][263] -> [SKIP][264] ([i915#3555] / [i915#8152] / [i915#9423]) +1 other test skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_plane_scaling@planes-scaler-unity-scaling.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling.html
    - shard-tglu:         NOTRUN -> [SKIP][265] ([i915#3555] / [i915#8152])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_plane_scaling@planes-scaler-unity-scaling.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a:
    - shard-dg2:          [PASS][266] -> [SKIP][267] ([i915#12247]) +11 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][268] ([i915#12247]) +2 other tests skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-c.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d:
    - shard-dg2:          [PASS][269] -> [SKIP][270] ([i915#12247] / [i915#8152]) +2 other tests skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d.html
    - shard-tglu:         NOTRUN -> [SKIP][271] ([i915#12247] / [i915#8152])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:
    - shard-rkl:          NOTRUN -> [SKIP][272] ([i915#12247] / [i915#6953])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html
    - shard-dg1:          NOTRUN -> [SKIP][273] ([i915#12247] / [i915#6953])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-15/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html
    - shard-mtlp:         NOTRUN -> [SKIP][274] ([i915#12247] / [i915#6953])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-mtlp-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b:
    - shard-dg1:          NOTRUN -> [SKIP][275] ([i915#12247]) +3 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-15/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b.html
    - shard-mtlp:         NOTRUN -> [SKIP][276] ([i915#12247]) +3 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-mtlp-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@pipe-b.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-tglu:         NOTRUN -> [SKIP][277] ([i915#9812])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_dc@dc5-psr:
    - shard-rkl:          NOTRUN -> [SKIP][278] ([i915#9685]) +1 other test skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-3/igt@kms_pm_dc@dc5-psr.html

  * igt@kms_pm_rpm@drm-resources-equal:
    - shard-dg2:          [PASS][279] -> [SKIP][280] ([i915#3547])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_pm_rpm@drm-resources-equal.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_pm_rpm@drm-resources-equal.html
    - shard-tglu:         NOTRUN -> [SKIP][281] ([i915#3547] / [i915#9519])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_pm_rpm@drm-resources-equal.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg2:          NOTRUN -> [SKIP][282] ([i915#9519])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [PASS][283] -> [SKIP][284] ([i915#9519])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
    - shard-rkl:          [PASS][285] -> [SKIP][286] ([i915#9519])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-rkl:          NOTRUN -> [SKIP][287] ([i915#6524]) +2 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-7/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-dg1:          NOTRUN -> [SKIP][288] ([i915#6524])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-17/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_properties@crtc-properties-atomic:
    - shard-dg2:          [PASS][289] -> [SKIP][290] ([i915#11521])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-4/igt@kms_properties@crtc-properties-atomic.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_properties@crtc-properties-atomic.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-rkl:          NOTRUN -> [SKIP][291] ([i915#9683])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-3/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@fbc-psr2-cursor-blt:
    - shard-dg1:          NOTRUN -> [SKIP][292] ([i915#1072] / [i915#9732]) +2 other tests skip
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-17/igt@kms_psr@fbc-psr2-cursor-blt.html

  * igt@kms_psr@fbc-psr2-cursor-plane-move:
    - shard-tglu:         NOTRUN -> [SKIP][293] ([i915#9732]) +4 other tests skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_psr@fbc-psr2-cursor-plane-move.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-rkl:          NOTRUN -> [SKIP][294] ([i915#1072] / [i915#9732]) +30 other tests skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-5/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_psr@psr2-cursor-render:
    - shard-dg2:          NOTRUN -> [SKIP][295] ([i915#1072] / [i915#9732]) +2 other tests skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_psr@psr2-cursor-render.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglu:         NOTRUN -> [SKIP][296] ([i915#9685])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
    - shard-dg2:          NOTRUN -> [SKIP][297] ([i915#9685])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-dg1:          NOTRUN -> [SKIP][298] ([i915#9685])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-15/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-tglu:         NOTRUN -> [SKIP][299] ([i915#5289])
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-rkl:          NOTRUN -> [SKIP][300] ([i915#5289])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_setmode@basic:
    - shard-tglu:         [PASS][301] -> [SKIP][302] ([i915#3555]) +5 other tests skip
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-5/igt@kms_setmode@basic.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_setmode@basic.html

  * igt@kms_setmode@basic@pipe-a-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [FAIL][303] ([i915#5465]) +1 other test fail
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-12/igt@kms_setmode@basic@pipe-a-hdmi-a-3.html

  * igt@kms_vblank@ts-continuation-modeset:
    - shard-dg2:          [PASS][304] -> [SKIP][305] ([i915#9197]) +38 other tests skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_vblank@ts-continuation-modeset.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_vblank@ts-continuation-modeset.html

  * igt@kms_vrr@max-min:
    - shard-rkl:          NOTRUN -> [SKIP][306] ([i915#9906])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-2/igt@kms_vrr@max-min.html

  * igt@kms_writeback@writeback-check-output:
    - shard-rkl:          NOTRUN -> [SKIP][307] ([i915#2437])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-6/igt@kms_writeback@writeback-check-output.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-rkl:          NOTRUN -> [SKIP][308] ([i915#2436])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-rkl:          NOTRUN -> [SKIP][309] ([i915#8516])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-5/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_mmap_kms@buffer-sharing:
    - shard-tglu:         [PASS][310] -> [SKIP][311]
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-6/igt@prime_mmap_kms@buffer-sharing.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@prime_mmap_kms@buffer-sharing.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][312] ([i915#3708])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-5/igt@prime_vgem@coherency-gtt.html

  * igt@syncobj_wait@invalid-wait-zero-handles:
    - shard-rkl:          NOTRUN -> [FAIL][313] ([i915#9781])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-6/igt@syncobj_wait@invalid-wait-zero-handles.html

  
#### Possible fixes ####

  * igt@gem_ctx_engines@invalid-engines:
    - shard-tglu:         [FAIL][314] ([i915#12027]) -> [PASS][315]
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-6/igt@gem_ctx_engines@invalid-engines.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-4/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_eio@reset-stress:
    - shard-dg1:          [FAIL][316] ([i915#5784]) -> [PASS][317]
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-12/igt@gem_eio@reset-stress.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-12/igt@gem_eio@reset-stress.html

  * igt@gem_exec_balancer@waits:
    - shard-glk:          ([PASS][318], [INCOMPLETE][319], [PASS][320]) -> [PASS][321]
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk6/igt@gem_exec_balancer@waits.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk2/igt@gem_exec_balancer@waits.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk9/igt@gem_exec_balancer@waits.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-glk7/igt@gem_exec_balancer@waits.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-rkl:          [FAIL][322] ([i915#2842]) -> [PASS][323]
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-4/igt@gem_exec_fair@basic-pace@vcs0.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-2/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          ([PASS][324], [PASS][325], [ABORT][326]) ([i915#5566]) -> [PASS][327]
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk5/igt@gen9_exec_parse@allowed-single.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk3/igt@gen9_exec_parse@allowed-single.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk2/igt@gen9_exec_parse@allowed-single.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-glk8/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [ABORT][328] ([i915#9820]) -> [PASS][329]
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:
    - shard-dg1:          [FAIL][330] ([i915#3591]) -> [PASS][331]
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html

  * igt@i915_pm_rps@engine-order:
    - shard-glk:          ([PASS][332], [PASS][333], [FAIL][334]) -> [PASS][335]
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk1/igt@i915_pm_rps@engine-order.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk4/igt@i915_pm_rps@engine-order.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk7/igt@i915_pm_rps@engine-order.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-glk8/igt@i915_pm_rps@engine-order.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][336] ([i915#7790]) -> [PASS][337]
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-snb1/igt@i915_pm_rps@reset.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-snb2/igt@i915_pm_rps@reset.html
    - shard-tglu:         [ABORT][338] -> [PASS][339]
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-5/igt@i915_pm_rps@reset.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-6/igt@i915_pm_rps@reset.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking:
    - shard-glk:          ([PASS][340], [PASS][341], [FAIL][342]) ([i915#12177]) -> [PASS][343]
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk4/igt@kms_atomic_transition@modeset-transition-nonblocking.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk5/igt@kms_atomic_transition@modeset-transition-nonblocking.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-glk2/igt@kms_atomic_transition@modeset-transition-nonblocking.html

  * igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs:
    - shard-glk:          ([FAIL][344], [PASS][345], [PASS][346]) ([i915#11859]) -> [PASS][347]
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk5/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk4/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-glk2/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [FAIL][348] ([i915#5138]) -> [PASS][349]
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-mtlp-1/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-mtlp-6/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@linear-8bpp-rotate-180:
    - shard-rkl:          [ABORT][350] ([i915#10354]) -> [PASS][351]
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-2/igt@kms_big_fb@linear-8bpp-rotate-180.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-180.html

  * igt@kms_busy@extended-pageflip-hang-newfb:
    - shard-tglu:         [SKIP][352] -> [PASS][353] +31 other tests pass
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_busy@extended-pageflip-hang-newfb.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-5/igt@kms_busy@extended-pageflip-hang-newfb.html

  * igt@kms_color@deep-color:
    - shard-dg2:          [SKIP][354] ([i915#3555]) -> [PASS][355] +2 other tests pass
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-4/igt@kms_color@deep-color.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-10/igt@kms_color@deep-color.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-snb:          [INCOMPLETE][356] ([i915#9878]) -> [PASS][357]
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-snb5/igt@kms_fbcon_fbt@fbc-suspend.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-snb2/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1:
    - shard-snb:          [FAIL][358] ([i915#2122]) -> [PASS][359] +3 other tests pass
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-snb7/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-snb7/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          ([FAIL][360], [FAIL][361], [FAIL][362], [PASS][363]) ([i915#2122]) -> [PASS][364] +2 other tests pass
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk2/igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk3/igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk5/igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk9/igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-glk8/igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-panning-interruptible:
    - shard-tglu:         [SKIP][365] ([i915#3637]) -> [PASS][366]
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_flip@flip-vs-panning-interruptible.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-5/igt@kms_flip@flip-vs-panning-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate:
    - shard-rkl:          [FAIL][367] ([i915#2122]) -> [PASS][368]
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-2/igt@kms_flip@plain-flip-fb-recreate.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-5/igt@kms_flip@plain-flip-fb-recreate.html

  * igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt:
    - shard-tglu:         [SKIP][369] ([i915#1849]) -> [PASS][370] +11 other tests pass
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-5/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][371] ([i915#5354]) -> [PASS][372] +12 other tests pass
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:
    - shard-dg2:          [FAIL][373] ([i915#6880]) -> [PASS][374] +1 other test pass
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt:
    - shard-glk:          [INCOMPLETE][375] ([i915#2295]) -> [PASS][376]
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_invalid_mode@bad-vsync-start:
    - shard-tglu:         [SKIP][377] ([i915#3555]) -> [PASS][378] +3 other tests pass
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_invalid_mode@bad-vsync-start.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-5/igt@kms_invalid_mode@bad-vsync-start.html

  * igt@kms_plane@planar-pixel-format-settings:
    - shard-dg2:          [SKIP][379] ([i915#9581]) -> [PASS][380]
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane@planar-pixel-format-settings.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-7/igt@kms_plane@planar-pixel-format-settings.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:
    - shard-dg2:          [SKIP][381] ([i915#3555] / [i915#8152] / [i915#9423]) -> [PASS][382]
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b:
    - shard-dg2:          [SKIP][383] ([i915#12247]) -> [PASS][384] +8 other tests pass
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-c:
    - shard-tglu:         [SKIP][385] ([i915#12247]) -> [PASS][386] +5 other tests pass
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-c.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-7/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-c.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d:
    - shard-tglu:         [SKIP][387] ([i915#8152]) -> [PASS][388] +4 other tests pass
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-7/igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:
    - shard-dg2:          [SKIP][389] ([i915#12247] / [i915#3558] / [i915#8152] / [i915#9423]) -> [PASS][390]
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d:
    - shard-dg2:          [SKIP][391] ([i915#12247] / [i915#8152]) -> [PASS][392]
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25:
    - shard-dg2:          [SKIP][393] ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -> [PASS][394]
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-factor-0-25.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d:
    - shard-dg2:          [SKIP][395] ([i915#8152]) -> [PASS][396] +1 other test pass
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-3/igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu:         [SKIP][397] ([i915#4281]) -> [PASS][398]
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-10/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [SKIP][399] ([i915#9519]) -> [PASS][400] +1 other test pass
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-dg2:          [SKIP][401] ([i915#9519]) -> [PASS][402]
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_properties@plane-properties-atomic:
    - shard-dg2:          [SKIP][403] ([i915#11521]) -> [PASS][404]
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_properties@plane-properties-atomic.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-7/igt@kms_properties@plane-properties-atomic.html

  * igt@kms_setmode@basic:
    - shard-snb:          [FAIL][405] ([i915#5465]) -> [PASS][406] +2 other tests pass
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-snb6/igt@kms_setmode@basic.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-snb5/igt@kms_setmode@basic.html
    - shard-dg2:          [FAIL][407] ([i915#5465]) -> [PASS][408]
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-8/igt@kms_setmode@basic.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-6/igt@kms_setmode@basic.html

  * igt@kms_vblank@ts-continuation-dpms-suspend:
    - shard-dg2:          [SKIP][409] ([i915#9197]) -> [PASS][410] +33 other tests pass
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_vblank@ts-continuation-dpms-suspend.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-7/igt@kms_vblank@ts-continuation-dpms-suspend.html

  * igt@perf_pmu@all-busy-idle-check-all:
    - shard-dg1:          [FAIL][411] ([i915#11943]) -> [PASS][412]
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-15/igt@perf_pmu@all-busy-idle-check-all.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-16/igt@perf_pmu@all-busy-idle-check-all.html

  * igt@perf_pmu@rc6:
    - shard-dg1:          [DMESG-WARN][413] ([i915#4423]) -> [PASS][414] +2 other tests pass
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-13/igt@perf_pmu@rc6.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-17/igt@perf_pmu@rc6.html

  * igt@prime_mmap_kms@buffer-sharing:
    - shard-dg2:          [SKIP][415] -> [PASS][416]
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@prime_mmap_kms@buffer-sharing.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-8/igt@prime_mmap_kms@buffer-sharing.html

  
#### Warnings ####

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [INCOMPLETE][417] -> [INCOMPLETE][418] ([i915#7297])
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_ctx_engines@invalid-engines:
    - shard-glk:          ([FAIL][419], [PASS][420], [FAIL][421]) ([i915#12027]) -> [FAIL][422] ([i915#12027])
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk9/igt@gem_ctx_engines@invalid-engines.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk6/igt@gem_ctx_engines@invalid-engines.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk3/igt@gem_ctx_engines@invalid-engines.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-glk3/igt@gem_ctx_engines@invalid-engines.html
    - shard-mtlp:         [FAIL][423] ([i915#12031]) -> [FAIL][424] ([i915#12027])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-mtlp-3/igt@gem_ctx_engines@invalid-engines.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-mtlp-8/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_exec_fair@basic-pace-solo:
    - shard-glk:          ([PASS][425], [FAIL][426], [FAIL][427]) ([i915#2842]) -> [FAIL][428] ([i915#2842]) +1 other test fail
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk2/igt@gem_exec_fair@basic-pace-solo.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk8/igt@gem_exec_fair@basic-pace-solo.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk3/igt@gem_exec_fair@basic-pace-solo.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-glk5/igt@gem_exec_fair@basic-pace-solo.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-tglu:         [FAIL][429] ([i915#3591]) -> [WARN][430] ([i915#2681]) +1 other test warn
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-idle.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_selftest@mock:
    - shard-glk:          ([DMESG-WARN][431], [DMESG-WARN][432], [DMESG-WARN][433]) ([i915#1982] / [i915#9311]) -> [DMESG-WARN][434] ([i915#9311])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk2/igt@i915_selftest@mock.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk6/igt@i915_selftest@mock.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk1/igt@i915_selftest@mock.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-glk7/igt@i915_selftest@mock.html
    - shard-dg2:          [DMESG-WARN][435] ([i915#9311]) -> [DMESG-WARN][436] ([i915#1982] / [i915#9311])
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-1/igt@i915_selftest@mock.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-4/igt@i915_selftest@mock.html

  * igt@kms_atomic_transition@plane-all-modeset-transition:
    - shard-tglu:         [SKIP][437] -> [FAIL][438] ([i915#11808])
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_atomic_transition@plane-all-modeset-transition.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-5/igt@kms_atomic_transition@plane-all-modeset-transition.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-tglu:         [SKIP][439] -> [SKIP][440] ([i915#1769] / [i915#3555])
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-tglu:         [SKIP][441] -> [SKIP][442] ([i915#5286]) +2 other tests skip
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-7/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-dg2:          [SKIP][443] ([i915#9197]) -> [SKIP][444] +1 other test skip
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_big_fb@linear-8bpp-rotate-90.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-8/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-dg2:          [SKIP][445] -> [SKIP][446] ([i915#9197])
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-dg2:          [SKIP][447] ([i915#5190] / [i915#9197]) -> [SKIP][448] ([i915#4538] / [i915#5190]) +3 other tests skip
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-3/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-addfb:
    - shard-dg2:          [SKIP][449] ([i915#5190] / [i915#9197]) -> [SKIP][450] ([i915#5190]) +1 other test skip
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-8/igt@kms_big_fb@y-tiled-addfb.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          [SKIP][451] ([i915#4538] / [i915#5190]) -> [SKIP][452] ([i915#5190] / [i915#9197]) +8 other tests skip
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - shard-dg1:          [SKIP][453] ([i915#4538]) -> [SKIP][454] ([i915#4423] / [i915#4538])
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-14/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-13/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_ccs@bad-aux-stride-yf-tiled-ccs:
    - shard-dg2:          [SKIP][455] ([i915#9197]) -> [SKIP][456] ([i915#10307] / [i915#6095]) +3 other tests skip
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-3/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:
    - shard-dg2:          [SKIP][457] ([i915#10307] / [i915#6095]) -> [SKIP][458] ([i915#9197]) +10 other tests skip
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-dg2:          [SKIP][459] ([i915#9197]) -> [SKIP][460] ([i915#12042])
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-8/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs:
    - shard-tglu:         [SKIP][461] -> [SKIP][462] ([i915#6095]) +4 other tests skip
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-5/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
    - shard-tglu:         [SKIP][463] -> [SKIP][464] ([i915#12042])
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-dg2:          [SKIP][465] ([i915#9197]) -> [SKIP][466] ([i915#11616] / [i915#7213])
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-8/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_color@deep-color:
    - shard-tglu:         [SKIP][467] -> [SKIP][468] ([i915#3555] / [i915#9979])
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_color@deep-color.html
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-5/igt@kms_color@deep-color.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-dg2:          [SKIP][469] ([i915#3299]) -> [SKIP][470] ([i915#9197])
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-5/igt@kms_content_protection@dp-mst-lic-type-0.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          [SKIP][471] ([i915#9197]) -> [SKIP][472] ([i915#7118] / [i915#9424])
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_content_protection@legacy.html
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-3/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic-type-0:
    - shard-tglu:         [SKIP][473] -> [SKIP][474] ([i915#6944] / [i915#9424]) +1 other test skip
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_content_protection@lic-type-0.html
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-5/igt@kms_content_protection@lic-type-0.html
    - shard-dg2:          [SKIP][475] ([i915#9424]) -> [TIMEOUT][476] ([i915#7173])
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-4/igt@kms_content_protection@lic-type-0.html
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-10/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg2:          [SKIP][477] ([i915#9197]) -> [SKIP][478] ([i915#9424])
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_content_protection@mei-interface.html
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-8/igt@kms_content_protection@mei-interface.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-dg2:          [SKIP][479] ([i915#11453]) -> [SKIP][480] ([i915#9197])
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-5/igt@kms_cursor_crc@cursor-onscreen-512x512.html
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-dg2:          [SKIP][481] ([i915#9197]) -> [SKIP][482] ([i915#11453]) +2 other tests skip
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-2/igt@kms_cursor_crc@cursor-random-512x170.html
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-3/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-tglu:         [SKIP][483] -> [SKIP][484] ([i915#3555]) +1 other test skip
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-tglu-8/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-dg2:          [SKIP][485] ([i915#11453] / [i915#3359]) -> [SKIP][486] ([i915#11453])
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg2-10/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-6/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-32x32:
    - shard-dg2:          [SKIP][487] ([i915#3555]) -> [SKIP][488] ([i915#9197])
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-d

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/index.html

--===============3722764611920676001==
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
<tr><td><b>Series:</b></td><td>Reduce SHPD_FILTER_CNT value (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/138743/">https://patchwork.freedesktop.org/series/138743/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_138743v3/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_138743v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_15451_full -&gt; Patchwork_138743v=
3_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_138743v3_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_138743v3_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 8)</h2>
<p>Missing    (1): shard-glk-0 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
138743v3_full:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot:<ul>
<li>shard-dg1:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15451/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-16/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-13=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_15451/shard-dg1-13/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-16/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-16/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_15451/shard-dg1-15/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-15/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-15/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_15451/shard-dg1-14/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_15451/shard-dg1-17/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-17/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15=
451/shard-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_15451/shard-dg1-19/boot.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-19/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451=
/shard-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_15451/shard-dg1-18/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-13/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/sh=
ard-dg1-12/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_15451/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-12/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard=
-dg1-14/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_15451/shard-dg1-18/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg1-12/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-dg=
1-14/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_138743v3/shard-dg1-19/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-15/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_138743v3/shard-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-16/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/s=
hard-dg1-16/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_138743v3/shard-dg1-17/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-17/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_138743v3/shard-dg1-17/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-18/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/s=
hard-dg1-18/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_138743v3/shard-dg1-18/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-18/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_138743v3/shard-dg1-19/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-19/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/s=
hard-dg1-19/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_138743v3/shard-dg1-12/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-12/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_138743v3/shard-dg1-12/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-13/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/s=
hard-dg1-13/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_138743v3/shard-dg1-13/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-14/boo=
t.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_138743v3/shard-dg1-14/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg1-15/boot.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/s=
hard-dg1-15/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_big_joiner@invalid-modeset-force-joiner:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-10/igt@kms_big_joiner@invalid-modeset-force-joiner.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_138743v3/shard-dg2-6/igt@kms_big_joiner@invalid-modeset-force-joine=
r.html">SKIP</a> +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-1/igt@kms_big_joiner@invalid-mod=
eset-force-joiner.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_ccs@random-ccs-data-4=
-tiled-mtl-rc-ccs-cc.html">SKIP</a> +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-signed:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-5/igt@kms_color@ctm-signed.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-=
tglu-8/igt@kms_color@ctm-signed.html">SKIP</a> +32 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg1-17/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> +2 other tests ski=
p</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotat=
e-0-hflip.html">SKIP</a> ([i915#5286]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_big_fb@4-tile=
d-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-6/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html=
">SKIP</a> ([i915#12042]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_ccs@bad-rotation-90-4-tile=
d-bmg-ccs.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-5/igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs.html"=
>SKIP</a> ([i915#6095]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_ccs@ccs-on-another-bo-yf-til=
ed-ccs.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-6/igt@kms_content_protection@mei-interface.html">S=
KIP</a> ([i915#6944] / [i915#9424]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_content_protecti=
on@mei-interface.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-5/igt@kms_content_protection@type1.html">SKIP</a> =
([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424]) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@=
kms_content_protection@type1.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-5/igt@kms_cursor_crc@cursor-random-512x512.html">S=
KIP</a> ([i915#11453]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_cursor_crc@cursor-random-512x=
512.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-2/igt@kms_cursor_legacy@basic-busy-flip-before-cur=
sor-legacy.html">SKIP</a> ([i915#4103]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_cursor_legac=
y@basic-busy-flip-before-cursor-legacy.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hots=
pot.html">SKIP</a> ([i915#9067]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_cursor_legacy@modes=
et-atomic-cursor-hotspot.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@mst-extended-mode-negative:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-5/igt@kms_display_modes@mst-extended-mode-negative=
.html">SKIP</a> ([i915#8588]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_display_modes@mst-exte=
nded-mode-negative.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-8/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.htm=
l">SKIP</a> ([i915#1849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_138743v3/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcps=
r-tiling-4.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-=
indfb-draw-mmap-wc.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-7/igt@kms_front=
buffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> +14 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg1-12/igt@kms_psr2_sf@fbc-primary-plane-update-sf-dmg-=
area.html">SKIP</a> ([i915#4423]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_138743v3/shard-dg1-16/igt@kms_psr2_sf@fbc-primar=
y-plane-update-sf-dmg-area.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-5/igt@kms_scaling_modes@scaling-mode-none.html">SK=
IP</a> ([i915#3555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_138743v3/shard-tglu-8/igt@kms_scaling_modes@scaling-mode-none=
.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>igt@sriov_basic@enable-vfs-bind-unbind-each:<ul>
<li>{shard-tglu-1}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-1/igt@sriov_basic@enable-vfs-bi=
nd-unbind-each.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_15451_full and Patchwork_1=
38743v3_full:</p>
<h3>New IGT tests (16)</h3>
<ul>
<li>
<p>igt@kms_lease@cursor-implicit-plane@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.34] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@cursor-implicit-plane@pipe-b-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@cursor-implicit-plane@pipe-c-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@cursor-implicit-plane@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-revoke@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.06] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-revoke@pipe-b-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.04, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-revoke@pipe-c-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.04, 0.06] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lease-revoke@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.05, 0.06] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lessee-list@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lessee-list@pipe-b-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lessee-list@pipe-c-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@lessee-list@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@setcrtc-implicit-plane@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.36] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@setcrtc-implicit-plane@pipe-b-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.27] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@setcrtc-implicit-plane@pipe-c-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@setcrtc-implicit-plane@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_138743v3_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@debugfs_test@basic-hwmon:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-5/igt@debugfs_test@basic-hwmon.h=
tml">SKIP</a> ([i915#9318])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
38743v3/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all.html">FAIL</a> =
([i915#12179])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_138743v3/shard-rkl-4/igt@drm_fdinfo@most-busy-idle-check-all@rcs0.html"=
>FAIL</a> ([i915#7742])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-hang-all:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-mtlp-7/igt@drm_fdinfo@virtual-busy-h=
ang-all.html">SKIP</a> ([i915#8414])</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-idle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-rkl-3/igt@drm_fdinfo@virtual-idle.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shar=
d-rkl-4/igt@drm_fdinfo@virtual-idle.html">FAIL</a> ([i915#11900] / [i915#77=
42])</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-6/igt@fbdev@info.html">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@f=
bdev@info.html">SKIP</a> ([i915#1849] / [i915#2582])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@fbdev@info.html">SKIP</a>=
 ([i915#1849] / [i915#2582])</li>
</ul>
</li>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-5/igt@fbdev@nullptr.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-=
8/igt@fbdev@nullptr.html">SKIP</a> ([i915#2582])</li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-4/igt@fbdev@unaligned-write.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-=
dg2-2/igt@fbdev@unaligned-write.html">SKIP</a> ([i915#2582]) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@fbdev@write:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@fbdev@write.html">SKIP</a=
> ([i915#2582])</li>
</ul>
</li>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@gem_busy@close-race.html"=
>FAIL</a> ([i915#12297])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-6/igt@gem_ccs@block-multicopy-c=
ompressed.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy.htm=
l">SKIP</a> ([i915#3555] / [i915#9323]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-7/igt@gem_ccs@ctrl-surf-copy-new=
-ctx.html">SKIP</a> ([i915#9323])</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-5/igt@gem_close_race@multigpu-ba=
sic-threads.html">SKIP</a> ([i915#7697])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-5/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> ([i915#8562])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-rkl-3/igt@gem_ctx_engines@invalid-engines.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13874=
3v3/shard-rkl-4/igt@gem_ctx_engines@invalid-engines.html">FAIL</a> ([i915#1=
2065])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg2-4/igt@gem_ctx_persistence@hang.h=
tml">SKIP</a> ([i915#8555])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg1-17/igt@gem_ctx_persistence@hang.=
html">SKIP</a> ([i915#8555])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-2/igt@gem_ctx_sseu@engines.html"=
>SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-6/igt@gem_eio@hibernate.html">AB=
ORT</a> ([i915#7975] / [i915#8213])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hog:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg1-15/igt@gem_exec_balancer@hog.htm=
l">SKIP</a> ([i915#4812])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-mtlp-2/igt@gem_exec_balancer@hog.htm=
l">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-2/igt@gem_exec_balancer@parallel=
-ordering.html">SKIP</a> ([i915#4525]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_big@single:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-6/igt@gem_exec_big@single.html"=
>ABORT</a> ([i915#11713])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@gem_exec_capture@capture-=
recoverable.html">SKIP</a> ([i915#6344])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg2-4/igt@gem_exec_fair@basic-none-v=
ip.html">SKIP</a> ([i915#3539] / [i915#4852])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
8743v3/shard-rkl-1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([=
i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@concurrent:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@gem_exec_fence@concurrent.=
html">SKIP</a> ([i915#4812])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg1-17/igt@gem_exec_flush@basic-uc-p=
ro-default.html">SKIP</a> ([i915#3539] / [i915#4852]) +2 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@gem_exec_reloc@basic-gtt.h=
tml">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout@vcs1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@gem_exec_reloc@basic-scan=
out@vcs1.html">SKIP</a> ([i915#3639]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-3/igt@gem_exec_reloc@basic-write=
-read.html">SKIP</a> ([i915#3281]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg1-15/igt@gem_exec_reloc@basic-writ=
e-wc-active.html">SKIP</a> ([i915#3281])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-mtlp-2/igt@gem_exec_reloc@basic-writ=
e-wc-active.html">SKIP</a> ([i915#3281])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@pi-common@vcs0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-3/igt@gem_exec_schedule@pi-commo=
n@vcs0.html">FAIL</a> ([i915#12296]) +9 other tests fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-2/igt@gem_exec_schedule@semaphor=
e-power.html">SKIP</a> ([i915#7276])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-5/igt@gem_huc_copy@huc-copy.html=
">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-2/igt@gem_lmem_swapping@parallel=
-random-verify.html">SKIP</a> ([i915#4613]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@gem_lmem_swapping@smem-oo=
m.html">SKIP</a> ([i915#4613]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@gem_lmem_swapping@smem-oom=
@lmem0.html">TIMEOUT</a> ([i915#5493]) +1 other test timeout</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg1-12/igt@gem_lmem_swapping@smem-oo=
m@lmem0.html">TIMEOUT</a> ([i915#5493]) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg1-15/igt@gem_lmem_swapping@verify-=
ccs.html">SKIP</a> ([i915#12193])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg1-15/igt@gem_lmem_swapping@verify-=
ccs@lmem0.html">SKIP</a> ([i915#4565])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic-small-bo:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg1-15/igt@gem_mmap@basic-small-bo.h=
tml">SKIP</a> ([i915#4083])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@close-race:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg1-17/igt@gem_mmap_gtt@close-race.h=
tml">SKIP</a> ([i915#4077])</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-display:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-1/igt@gem_partial_pwrite_pread@w=
rites-after-reads-display.html">SKIP</a> ([i915#3282]) +2 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-7/igt@gem_pxp@dmabuf-shared-prot=
ected-dst-is-context-refcounted.html">SKIP</a> ([i915#4270]) +2 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@gem_pxp@protected-raw-src=
-copy-not-readible.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg2-1/igt@gem_pxp@regular-baseline-s=
rc-copy-readible.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-1/igt@gem_set_tiling_vs_blt@tile=
d-to-untiled.html">SKIP</a> ([i915#8411]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-2/igt@gem_userptr_blits@forbidde=
n-operations.html">SKIP</a> ([i915#3282] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg2-4/igt@gem_userptr_blits@readonly=
-pwrite-unsync.html">SKIP</a> ([i915#3297])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg1-17/igt@gem_userptr_blits@readonl=
y-pwrite-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-3/igt@gem_userptr_blits@relocati=
ons.html">SKIP</a> ([i915#3281] / [i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-1/igt@gem_userptr_blits@unsync-o=
verlap.html">SKIP</a> ([i915#3297]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@gem_userptr_blits@unsync-=
unmap-cycles.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allowed:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg2-1/igt@gen7_exec_parse@basic-allo=
wed.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-6/igt@gen7_exec_parse@oacontrol=
-tracking.html">SKIP</a> +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-3/igt@gen9_exec_parse@allowed-al=
l.html">SKIP</a> ([i915#2527]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-1/igt@i915_module_load@load.html=
">SKIP</a> ([i915#6227])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-3/igt@i915_pm_freq_api@freq-rese=
t-multiple.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@i915_pm_freq_api@freq-sus=
pend.html">SKIP</a> ([i915#8399])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_138743v3/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.htm=
l">FAIL</a> ([i915#3591])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-mtlp-2/igt@i915_pm_rpm@gem-execbuf-s=
tress-pc8.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-mtlp-6/igt@i915_power@sanity.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-mtl=
p-2/igt@i915_power@sanity.html">SKIP</a> ([i915#7984])</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@i915_query@test-query-geo=
metry-subslices.html">SKIP</a> ([i915#5723])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-mtlp-4/igt@i915_selftest@live@workarounds.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13874=
3v3/shard-mtlp-1/igt@i915_selftest@live@workarounds.html">ABORT</a> ([i915#=
12216]) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-b-hdmi-a-1-y-r=
c-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-7/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-b-hdmi-a-1-y-rc-ccs.html">SKIP</a> ([i915#8709=
]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-c-hdmi-a-1-4-m=
c-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg2-4/igt@kms_async_flips@async-flip=
-with-page-flip-events@pipe-c-hdmi-a-1-4-mc-ccs.html">SKIP</a> ([i915#8709]=
) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg1-16/igt@kms_atomic@plane-primary-=
overlay-mutable-zpos.html">SKIP</a> ([i915#9531])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-1:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-5/igt@kms_atomic_transition@pla=
ne-all-modeset-transition@pipe-a-hdmi-a-1.html">FAIL</a> ([i915#11808])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-1/igt@kms_big_fb@4-tiled-16bpp-r=
otate-90.html">SKIP</a> ([i915#5286]) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_138743v3/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-strid=
e-64bpp-rotate-0-hflip.html">FAIL</a> ([i915#5138])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-3/igt@kms_big_fb@linear-32bpp-ro=
tate-90.html">SKIP</a> ([i915#3638]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-glk7/igt@kms_big_fb@x-tiled-max-hw-s=
tride-32bpp-rotate-0-hflip.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg2-4/igt@kms_big_fb@yf-tiled-16bpp-=
rotate-0.html">SKIP</a> ([i915#4538] / [i915#5190])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg1-17/igt@kms_big_fb@yf-tiled-16bpp=
-rotate-0.html">SKIP</a> ([i915#4538]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-1/igt@kms_big_fb@yf-tiled-max-hw=
-stride-32bpp-rotate-180-async-flip.html">SKIP</a> +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg1-17/igt@kms_ccs@bad-aux-stride-4-=
tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html">SKIP</a> ([i915#6095]) +84 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-d-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg2-3/igt@kms_ccs@bad-aux-stride-yf-=
tiled-ccs@pipe-d-hdmi-a-2.html">SKIP</a> ([i915#10307] / [i915#6095]) +141 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-mtlp-7/igt@kms_ccs@ccs-on-another-bo=
-y-tiled-gen12-mc-ccs@pipe-b-edp-1.html">SKIP</a> ([i915#6095]) +4 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-7/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-bmg-ccs.html">SKIP</a> ([i915#12042])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-6/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> ([i915#6095]) +85 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-5/igt@kms_ccs@crc-sprite-planes=
-basic-y-tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> ([i915#6095]) +24 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_ccs@random-ccs-data-4-=
tiled-mtl-rc-ccs-cc.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg2-4/igt@kms_ccs@random-ccs-data-yf=
-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> ([i915#10307] / [i915#10434] / [i=
915#6095]) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg2-4/igt@kms_cdclk@mode-transition@=
pipe-d-hdmi-a-1.html">SKIP</a> ([i915#11616] / [i915#7213]) +3 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg2-6/igt@kms_cdclk@plane-scaling@pi=
pe-c-hdmi-a-3.html">SKIP</a> ([i915#4087]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-change-during-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg2-4/igt@kms_chamelium_edid@dp-edid=
-change-during-suspend.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-single:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg1-15/igt@kms_chamelium_frames@dp-c=
rc-single.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-mtlp-2/igt@kms_chamelium_frames@dp-c=
rc-single.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-after-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_chamelium_hpd@vga-hpd=
-after-suspend.html">SKIP</a> ([i915#7828]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-3/igt@kms_chamelium_hpd@vga-hpd-=
fast.html">SKIP</a> ([i915#7828]) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-5/igt@kms_content_protection@ato=
mic.html">SKIP</a> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-2/igt@kms_content_protection@dp-=
mst-lic-type-1.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-6/igt@kms_content_protection@lic=
-type-0.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg2-10/igt@kms_content_protection@li=
c-type-0@pipe-a-dp-3.html">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-5/igt@kms_content_protection@srm=
.html">SKIP</a> ([i915#7118])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg1-16/igt@kms_cursor_crc@cursor-off=
screen-512x512.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-6/igt@kms_cursor_crc@cursor-rapi=
d-movement-32x10.html">SKIP</a> ([i915#3555]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-1/igt@kms_cursor_crc@cursor-rapi=
d-movement-512x170.html">SKIP</a> ([i915#11453]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-snb2/igt@kms_cursor_crc@cursor-rapid=
-movement-512x512.html">SKIP</a> +84 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-6/igt@kms_cursor_crc@cursor-rap=
id-movement-512x512.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-6/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-atomic.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-1/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-legacy.html">SKIP</a> ([i915#4103]) +1 other test ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg1-16/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> ([i91=
5#4103] / [i915#4213])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-10/igt@kms_dp_aux_dev.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-6=
/igt@kms_dp_aux_dev.html">SKIP</a> ([i915#1257])</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-1/igt@kms_dp_aux_dev.html">SKIP<=
/a> ([i915#1257])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-3/igt@kms_fbcon_fbt@psr-suspend.=
html">SKIP</a> ([i915#3955])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_flip@2x-flip-vs-absol=
ute-wf_vblank.html">SKIP</a> ([i915#3637]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-glk1/igt@kms_flip@2x-flip-vs-suspend=
.html">INCOMPLETE</a> ([i915#4839]) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-6/igt@kms_flip@flip-vs-fences.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/sha=
rd-tglu-8/igt@kms_flip@flip-vs-fences.html">SKIP</a> ([i915#3637]) +5 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-7/igt@kms_flip@plain-flip-fb-recreate-interruptibl=
e.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_138743v3/shard-tglu-6/igt@kms_flip@plain-flip-fb-recreate-interru=
ptible.html">FAIL</a> ([i915#2122]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-3/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> ([i915#2672] / [=
i915#3555]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-3/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html">SKIP</a=
> ([i915#2672]) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-32bpp-yftileccs-upscaling.html">SKIP</a> ([i915#3555]) +3 o=
ther tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-upscaling.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-6/igt@kms_flip_scaled_crc@flip-=
32bpp-yftileccs-to-64bpp-yftile-upscaling.html">SKIP</a> ([i915#2672] / [i9=
15#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling@pip=
e-a-valid-mode:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg2-8/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytileccs-to-64bpp-ytile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i=
915#2672]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-valid-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-7/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html">SKIP</a> ([i=
915#2587] / [i915#2672]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-=
shrfb-draw-render.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_frontbuffer_tracking=
@fbc-1p-offscren-pri-shrfb-draw-render.html">SKIP</a> ([i915#5354]) +8 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-rte:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-2/igt@kms_frontbuffer_tracking@fbc-1p-rte.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
138743v3/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-rte.html">SKIP</a=
> ([i915#1849]) +9 other tests skip</li>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-10/igt@kms_frontbuffer_tracking@fbc-1p-rte.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
138743v3/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-rte.html">FAIL</a>=
 ([i915#6880])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-i=
ndfb-onoff.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_138743v3/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-=
scndscrn-spr-indfb-onoff.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg2-4/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> ([i915#10433] / [i91=
5#3458])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-6/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-rte.html">SKIP</a> ([i915#3023]) +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([i915#1849]) +15 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg1-15/igt@kms_frontbuffer_tracking@=
fbcpsr-rgb101010-draw-blt.html">SKIP</a> ([i915#3458]) +3 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg2-4/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([i915#3458]) +1 othe=
r test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg2-4/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([i915#5354]) +2 other =
tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg1-17/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> +4 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-5/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> ([i915#1825]) +50 other test=
s skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-mtlp-7/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> ([i915#1825]) +2 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-5/igt@kms_hdr@invalid-metadata-s=
izes.html">SKIP</a> ([i915#3555] / [i915#8228]) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-mtlp-7/igt@kms_hdr@invalid-metadata-=
sizes.html">SKIP</a> ([i915#3555] / [i915#8228])</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@int-max-clock:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-5/igt@kms_invalid_mode@int-max-clock.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743=
v3/shard-dg2-2/igt@kms_invalid_mode@int-max-clock.html">SKIP</a> ([i915#355=
5]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-7/igt@kms_panel_fitting@atomic-f=
astset.html">SKIP</a> ([i915#6301])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-top-left:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-6/igt@kms_plane@plane-panning-top-left.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1387=
43v3/shard-dg2-2/igt@kms_plane@plane-panning-top-left.html">SKIP</a> ([i915=
#8825])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_plane@plane-panning-t=
op-left.html">SKIP</a> ([i915#8825])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-2/igt@kms_plane@plane-position-hole.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743=
v3/shard-tglu-8/igt@kms_plane@plane-position-hole.html">SKIP</a> ([i915#882=
5]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-5/igt@kms_plane_alpha_blend@constant-alpha-max.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_138743v3/shard-tglu-8/igt@kms_plane_alpha_blend@constant-alpha-max.htm=
l">SKIP</a> ([i915#7294]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-10/igt@kms_plane_scaling@intel-max-src-size.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_138743v3/shard-dg2-2/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</=
a> ([i915#6953] / [i915#8152] / [i915#9423]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-2/igt@kms_plane_scaling@plane-downscale-factor-0-7=
5-with-pixel-format.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_plane_scaling@pla=
ne-downscale-factor-0-75-with-pixel-format.html">SKIP</a> ([i915#8152]) +4 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-6/igt@kms_plane_scaling@plane-do=
wnscale-factor-0-75-with-rotation@pipe-a.html">SKIP</a> ([i915#12247]) +13 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-6/igt@kms_plane_scaling@plane-scaler-with-clipping=
-clamping-modifiers.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_plane_scaling@pla=
ne-scaler-with-clipping-clamping-modifiers.html">SKIP</a> ([i915#3555] / [i=
915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe=
-b:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-6/igt@kms_plane_scaling@plane-scaler-with-clipping=
-clamping-modifiers@pipe-b.html">PASS</a> -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_plane_scal=
ing@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html">SKIP</a> ([i=
915#12247]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-pixel-format.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_plane_scaling@plane-u=
pscale-factor-0-25-with-pixel-format.html">SKIP</a> ([i915#8152] / [i915#94=
23])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format@pipe-d=
:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-pixel-format@pipe-d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_plane_scaling@=
plane-upscale-factor-0-25-with-pixel-format@pipe-d.html">SKIP</a> ([i915#81=
52])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-6/igt@kms_plane_scaling@planes-scaler-unity-scaling=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_138743v3/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-unity-sca=
ling.html">SKIP</a> ([i915#3555] / [i915#8152] / [i915#9423]) +1 other test=
 skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_plane_scaling@planes-=
scaler-unity-scaling.html">SKIP</a> ([i915#3555] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-a:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-6/igt@kms_plane_scaling@planes-scaler-unity-scaling=
@pipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-un=
ity-scaling@pipe-a.html">SKIP</a> ([i915#12247]) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-c:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_plane_scaling@planes-=
scaler-unity-scaling@pipe-c.html">SKIP</a> ([i915#12247]) +2 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-6/igt@kms_plane_scaling@planes-scaler-unity-scaling=
@pipe-d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_plane_scaling@planes-scaler-un=
ity-scaling@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) +2 other tes=
ts skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_plane_scaling@planes-=
scaler-unity-scaling@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-7/igt@kms_plane_scaling@planes-u=
pscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i9=
15#6953])</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg1-15/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i=
915#6953])</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-mtlp-2/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25.html">SKIP</a> ([i915#12247] / [i=
915#6953])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-25@p=
ipe-b:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg1-15/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25@pipe-b.html">SKIP</a> ([i915#1224=
7]) +3 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-mtlp-2/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-25@pipe-b.html">SKIP</a> ([i915#1224=
7]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_pm_backlight@basic-br=
ightness.html">SKIP</a> ([i915#9812])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-psr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-3/igt@kms_pm_dc@dc5-psr.html">SK=
IP</a> ([i915#9685]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@drm-resources-equal:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-6/igt@kms_pm_rpm@drm-resources-equal.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743=
v3/shard-dg2-2/igt@kms_pm_rpm@drm-resources-equal.html">SKIP</a> ([i915#354=
7])</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_pm_rpm@drm-resources-=
equal.html">SKIP</a> ([i915#3547] / [i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_pm_rpm@modeset-lpsp-st=
ress-no-wait.html">SKIP</a> ([i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-11/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
38743v3/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (=
[i915#9519])</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
8743v3/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> ([=
i915#9519])</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-7/igt@kms_prime@basic-crc-hybrid=
.html">SKIP</a> ([i915#6524]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg1-17/igt@kms_prime@basic-modeset-h=
ybrid.html">SKIP</a> ([i915#6524])</li>
</ul>
</li>
<li>
<p>igt@kms_properties@crtc-properties-atomic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-4/igt@kms_properties@crtc-properties-atomic.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_138743v3/shard-dg2-2/igt@kms_properties@crtc-properties-atomic.html">SKIP<=
/a> ([i915#11521])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-3/igt@kms_psr2_su@page_flip-nv12=
.html">SKIP</a> ([i915#9683])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-cursor-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg1-17/igt@kms_psr@fbc-psr2-cursor-b=
lt.html">SKIP</a> ([i915#1072] / [i915#9732]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-cursor-plane-move:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_psr@fbc-psr2-cursor-p=
lane-move.html">SKIP</a> ([i915#9732]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-5/igt@kms_psr@fbc-psr2-sprite-re=
nder.html">SKIP</a> ([i915#1072] / [i915#9732]) +30 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_psr@psr2-cursor-render=
.html">SKIP</a> ([i915#1072] / [i915#9732]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-8/igt@kms_psr_stress_test@flip-=
primary-invalidate-overlay.html">SKIP</a> ([i915#9685])</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_psr_stress_test@flip-p=
rimary-invalidate-overlay.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg1-15/igt@kms_psr_stress_test@inval=
idate-primary-flip-overlay.html">SKIP</a> ([i915#9685])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-tglu-6/igt@kms_rotation_crc@primary-=
4-tiled-reflect-x-0.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-3/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-270.html">SKIP</a> ([i915#5289])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-5/igt@kms_setmode@basic.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tgl=
u-8/igt@kms_setmode@basic.html">SKIP</a> ([i915#3555]) +5 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-dg1-12/igt@kms_setmode@basic@pipe-a-=
hdmi-a-3.html">FAIL</a> ([i915#5465]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-modeset:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-10/igt@kms_vblank@ts-continuation-modeset.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
38743v3/shard-dg2-2/igt@kms_vblank@ts-continuation-modeset.html">SKIP</a> (=
[i915#9197]) +38 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-2/igt@kms_vrr@max-min.html">SKIP=
</a> ([i915#9906])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-6/igt@kms_writeback@writeback-ch=
eck-output.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-6/igt@perf@gen8-unprivileged-sin=
gle-ctx-counters.html">SKIP</a> ([i915#2436])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-5/igt@perf_pmu@rc6@other-idle-gt=
0.html">SKIP</a> ([i915#8516])</li>
</ul>
</li>
<li>
<p>igt@prime_mmap_kms@buffer-sharing:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-6/igt@prime_mmap_kms@buffer-sharing.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743=
v3/shard-tglu-8/igt@prime_mmap_kms@buffer-sharing.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-5/igt@prime_vgem@coherency-gtt.h=
tml">SKIP</a> ([i915#3708])</li>
</ul>
</li>
<li>
<p>igt@syncobj_wait@invalid-wait-zero-handles:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_138743v3/shard-rkl-6/igt@syncobj_wait@invalid-wait-=
zero-handles.html">FAIL</a> ([i915#9781])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-6/igt@gem_ctx_engines@invalid-engines.html">FAIL</=
a> ([i915#12027]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_138743v3/shard-tglu-4/igt@gem_ctx_engines@invalid-engines.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg1-12/igt@gem_eio@reset-stress.html">FAIL</a> ([i915#5=
784]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
38743v3/shard-dg1-12/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@waits:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15451/shard-glk6/igt@gem_exec_balancer@waits.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk2/igt@=
gem_exec_balancer@waits.html">INCOMPLETE</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk9/igt@gem_exec_balancer@waits.=
html">PASS</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_138743v3/shard-glk7/igt@gem_exec_balancer@waits.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-rkl-4/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_138743v3/shard-rkl-2/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15451/shard-glk5/igt@gen9_exec_parse@allowed-single.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-gl=
k3/igt@gen9_exec_parse@allowed-single.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk2/igt@gen9_exec_parse@=
allowed-single.html">ABORT</a>) ([i915#5566]) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-glk8/igt@gen9_exec_pa=
rse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-snb7/igt@i915_module_load@reload-with-fault-injection.h=
tml">ABORT</a> ([i915#9820]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_138743v3/shard-snb2/igt@i915_module_load@reload-with-=
fault-injection.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg1-16/igt@i915_pm_rc6_residency@rc6-idle@gt0-vcs0.html=
">FAIL</a> ([i915#3591]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_138743v3/shard-dg1-19/igt@i915_pm_rc6_residency@rc6-idle@=
gt0-vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15451/shard-glk1/igt@i915_pm_rps@engine-order.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk4/igt=
@i915_pm_rps@engine-order.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_15451/shard-glk7/igt@i915_pm_rps@engine-order.htm=
l">FAIL</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_138743v3/shard-glk8/igt@i915_pm_rps@engine-order.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-snb1/igt@i915_pm_rps@reset.html">INCOMPLETE</a> ([i915#=
7790]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
138743v3/shard-snb2/igt@i915_pm_rps@reset.html">PASS</a></li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-5/igt@i915_pm_rps@reset.html">ABORT</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tg=
lu-6/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15451/shard-glk4/igt@kms_atomic_transition@modeset-transition-nonb=
locking.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-glk5/igt@kms_atomic_transition@modeset-transition-nonbl=
ocking.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_15451/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonblo=
cking.html">FAIL</a>) ([i915#12177]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_138743v3/shard-glk2/igt@kms_atomic_transition=
@modeset-transition-nonblocking.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15451/shard-glk8/igt@kms_atomic_transition@modeset-transition-nonb=
locking@2x-outputs.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_15451/shard-glk5/igt@kms_atomic_transition@modeset-trans=
ition-nonblocking@2x-outputs.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_15451/shard-glk4/igt@kms_atomic_transition@mod=
eset-transition-nonblocking@2x-outputs.html">PASS</a>) ([i915#11859]) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/sha=
rd-glk2/igt@kms_atomic_transition@modeset-transition-nonblocking@2x-outputs=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-mtlp-1/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FA=
IL</a> ([i915#5138]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_138743v3/shard-mtlp-6/igt@kms_big_fb@4-tiled-64bpp-rotate-180=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-rkl-2/igt@kms_big_fb@linear-8bpp-rotate-180.html">ABORT=
</a> ([i915#10354]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_138743v3/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-180.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@extended-pageflip-hang-newfb:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-8/igt@kms_busy@extended-pageflip-hang-newfb.html">=
SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_138743v3/shard-tglu-5/igt@kms_busy@extended-pageflip-hang-newfb.html">PAS=
S</a> +31 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-4/igt@kms_color@deep-color.html">SKIP</a> ([i915#35=
55]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
8743v3/shard-dg2-10/igt@kms_color@deep-color.html">PASS</a> +2 other tests =
pass</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-snb5/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a>=
 ([i915#9878]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_138743v3/shard-snb2/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-snb7/igt@kms_flip@2x-blocking-wf_vblank@ab-vga1-hdmi-a1=
.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_138743v3/shard-snb7/igt@kms_flip@2x-blocking-wf_vbla=
nk@ab-vga1-hdmi-a1.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15451/shard-glk2/igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdm=
i-a2.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_15451/shard-glk3/igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_15451/shard-glk5/igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_154=
51/shard-glk9/igt@kms_flip@2x-blocking-wf_vblank@ac-hdmi-a1-hdmi-a2.html">P=
ASS</a>) ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_138743v3/shard-glk8/igt@kms_flip@2x-blocking-wf_vblank@ac-h=
dmi-a1-hdmi-a2.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning-interruptible:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-8/igt@kms_flip@flip-vs-panning-interruptible.html"=
>SKIP</a> ([i915#3637]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_138743v3/shard-tglu-5/igt@kms_flip@flip-vs-panning-interru=
ptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-rkl-2/igt@kms_flip@plain-flip-fb-recreate.html">FAIL</a=
> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_138743v3/shard-rkl-5/igt@kms_flip@plain-flip-fb-recreate.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-8/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptr=
ack-mmap-gtt.html">SKIP</a> ([i915#1849]) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-5/igt@kms_frontbuffe=
r_tracking@fbc-1p-indfb-fliptrack-mmap-gtt.html">PASS</a> +11 other tests p=
ass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-=
indfb-move.html">SKIP</a> ([i915#5354]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-8/igt@kms_frontbuffer_t=
racking@fbc-1p-primscrn-cur-indfb-move.html">PASS</a> +12 other tests pass<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indf=
b-msflip-blt.html">FAIL</a> ([i915#6880]) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-5/igt@kms_frontbuffer=
_tracking@fbc-1p-primscrn-indfb-msflip-blt.html">PASS</a> +1 other test pas=
s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-i=
ndfb-draw-mmap-gtt.html">INCOMPLETE</a> ([i915#2295]) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-glk1/igt@kms_=
frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@bad-vsync-start:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-8/igt@kms_invalid_mode@bad-vsync-start.html">SKIP<=
/a> ([i915#3555]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_138743v3/shard-tglu-5/igt@kms_invalid_mode@bad-vsync-start.html"=
>PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@planar-pixel-format-settings:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-2/igt@kms_plane@planar-pixel-format-settings.html">=
SKIP</a> ([i915#9581]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_138743v3/shard-dg2-7/igt@kms_plane@planar-pixel-format-sett=
ings.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-=
clamping-modifiers.html">SKIP</a> ([i915#3555] / [i915#8152] / [i915#9423])=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743=
v3/shard-dg2-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-mo=
difiers.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe=
-b:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@plane-scaler-with-clipping-=
clamping-modifiers@pipe-b.html">SKIP</a> ([i915#12247]) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-8/igt@k=
ms_plane_scaling@plane-scaler-with-clipping-clamping-modifiers@pipe-b.html"=
>PASS</a> +8 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-c:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-8/igt@kms_plane_scaling@plane-upscale-20x20-with-m=
odifiers@pipe-c.html">SKIP</a> ([i915#12247]) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-7/igt@kms_plane_=
scaling@plane-upscale-20x20-with-modifiers@pipe-c.html">PASS</a> +5 other t=
ests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-modifiers@pipe-d:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-8/igt@kms_plane_scaling@plane-upscale-20x20-with-m=
odifiers@pipe-d.html">SKIP</a> ([i915#8152]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-7/igt@kms_plane_s=
caling@plane-upscale-20x20-with-modifiers@pipe-d.html">PASS</a> +4 other te=
sts pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-7=
5-upscale-20x20.html">SKIP</a> ([i915#12247] / [i915#3558] / [i915#8152] / =
[i915#9423]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_138743v3/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-=
75-upscale-20x20.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe-d:=
</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-7=
5-upscale-20x20@pipe-d.html">SKIP</a> ([i915#12247] / [i915#8152]) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-=
dg2-7/igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20@pipe=
-d.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25.=
html">SKIP</a> ([i915#3555] / [i915#6953] / [i915#8152] / [i915#9423]) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/sh=
ard-dg2-3/igt@kms_plane_scaling@planes-upscale-factor-0-25.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25@pipe-d:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-2/igt@kms_plane_scaling@planes-upscale-factor-0-25@=
pipe-d.html">SKIP</a> ([i915#8152]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-3/igt@kms_plane_scaling@pla=
nes-upscale-factor-0-25@pipe-d.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> ([i915#428=
1]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138=
743v3/shard-tglu-10/igt@kms_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-rkl-3/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#95=
19]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
8743v3/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> +1 other test pa=
ss</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([=
i915#9519]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_138743v3/shard-dg2-1/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_properties@plane-properties-atomic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-2/igt@kms_properties@plane-properties-atomic.html">=
SKIP</a> ([i915#11521]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_138743v3/shard-dg2-7/igt@kms_properties@plane-properties-a=
tomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-snb6/igt@kms_setmode@basic.html">FAIL</a> ([i915#5465])=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743=
v3/shard-snb5/igt@kms_setmode@basic.html">PASS</a> +2 other tests pass</li>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-8/igt@kms_setmode@basic.html">FAIL</a> ([i915#5465]=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13874=
3v3/shard-dg2-6/igt@kms_setmode@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-2/igt@kms_vblank@ts-continuation-dpms-suspend.html"=
>SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_138743v3/shard-dg2-7/igt@kms_vblank@ts-continuation-dpms-s=
uspend.html">PASS</a> +33 other tests pass</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@all-busy-idle-check-all:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg1-15/igt@perf_pmu@all-busy-idle-check-all.html">FAIL<=
/a> ([i915#11943]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_138743v3/shard-dg1-16/igt@perf_pmu@all-busy-idle-check-all.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg1-13/igt@perf_pmu@rc6.html">DMESG-WARN</a> ([i915#442=
3]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138=
743v3/shard-dg1-17/igt@perf_pmu@rc6.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@prime_mmap_kms@buffer-sharing:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-2/igt@prime_mmap_kms@buffer-sharing.html">SKIP</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v=
3/shard-dg2-8/igt@prime_mmap_kms@buffer-sharing.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-comp=
fmt0-lmem0-lmem0.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-3/igt@gem_ccs@suspend-res=
ume@linear-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> ([i915#7297=
])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15451/shard-glk9/igt@gem_ctx_engines@invalid-engines.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-g=
lk6/igt@gem_ctx_engines@invalid-engines.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk3/igt@gem_ctx_engine=
s@invalid-engines.html">FAIL</a>) ([i915#12027]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-glk3/igt@gem_ctx_e=
ngines@invalid-engines.html">FAIL</a> ([i915#12027])</li>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-mtlp-3/igt@gem_ctx_engines@invalid-engines.html">FAIL</=
a> ([i915#12031]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_138743v3/shard-mtlp-8/igt@gem_ctx_engines@invalid-engines.html">=
FAIL</a> ([i915#12027])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15451/shard-glk2/igt@gem_exec_fair@basic-pace-solo.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk=
8/igt@gem_exec_fair@basic-pace-solo.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk3/igt@gem_exec_fair@basi=
c-pace-solo.html">FAIL</a>) ([i915#2842]) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-glk5/igt@gem_exec_fair@ba=
sic-pace-solo.html">FAIL</a> ([i915#2842]) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-2/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a=
> ([i915#3591]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_138743v3/shard-tglu-8/igt@i915_pm_rc6_residency@rc6-idle.html">WAR=
N</a> ([i915#2681]) +1 other test warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_15451/shard-glk2/igt@i915_selftest@mock.html">DMESG-WARN</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15451/shard-glk6/igt=
@i915_selftest@mock.html">DMESG-WARN</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_15451/shard-glk1/igt@i915_selftest@mock.html">DME=
SG-WARN</a>) ([i915#1982] / [i915#9311]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-glk7/igt@i915_selftest@moc=
k.html">DMESG-WARN</a> ([i915#9311])</li>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-1/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i91=
5#9311]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_138743v3/shard-dg2-4/igt@i915_selftest@mock.html">DMESG-WARN</a> ([i915#1=
982] / [i915#9311])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-8/igt@kms_atomic_transition@plane-all-modeset-tran=
sition.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_138743v3/shard-tglu-5/igt@kms_atomic_transition@plane-all-mo=
deset-transition.html">FAIL</a> ([i915#11808])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-8/igt@kms_atomic_transition@plane-all-modeset-tran=
sition-fencing-internal-panels.html">SKIP</a> -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-tglu-7/igt@kms_atomic=
_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP=
</a> ([i915#1769] / [i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">SK=
IP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
138743v3/shard-tglu-7/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">SKIP</a=
> ([i915#5286]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-2/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</=
a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_138743v3/shard-dg2-8/igt@kms_big_fb@linear-8bpp-rotate-90.html">S=
KIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-6/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKI=
P</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
38743v3/shard-dg2-2/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKIP</a> =
([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-2/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP=
</a> ([i915#5190] / [i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_138743v3/shard-dg2-3/igt@kms_big_fb@y-tiled-8bpp-=
rotate-270.html">SKIP</a> ([i915#4538] / [i915#5190]) +3 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-addfb:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-2/igt@kms_big_fb@y-tiled-addfb.html">SKIP</a> ([i91=
5#5190] / [i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_138743v3/shard-dg2-8/igt@kms_big_fb@y-tiled-addfb.html">SKI=
P</a> ([i915#5190]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate=
-180-hflip-async-flip.html">SKIP</a> ([i915#4538] / [i915#5190]) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg=
2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.=
html">SKIP</a> ([i915#5190] / [i915#9197]) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg1-14/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html">SKI=
P</a> ([i915#4538]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_138743v3/shard-dg1-13/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.h=
tml">SKIP</a> ([i915#4423] / [i915#4538])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-yf-tiled-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-2/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs.html">SKI=
P</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_138743v3/shard-dg2-3/igt@kms_ccs@bad-aux-stride-yf-tiled-ccs.h=
tml">SKIP</a> ([i915#10307] / [i915#6095]) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-6/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs.h=
tml">SKIP</a> ([i915#10307] / [i915#6095]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_ccs@bad-pi=
xel-format-4-tiled-mtl-mc-ccs.html">SKIP</a> ([i915#9197]) +10 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-2/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html"=
>SKIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_138743v3/shard-dg2-8/igt@kms_ccs@bad-rotation-90-4-tiled-b=
mg-ccs.html">SKIP</a> ([i915#12042])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-8/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs=
.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_138743v3/shard-tglu-5/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc=
-ccs.html">SKIP</a> ([i915#6095]) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl=
-ccs.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_138743v3/shard-tglu-7/igt@kms_ccs@crc-primary-rotation-180-4-t=
iled-lnl-ccs.html">SKIP</a> ([i915#12042])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-2/igt@kms_cdclk@mode-transition-all-outputs.html">S=
KIP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_138743v3/shard-dg2-8/igt@kms_cdclk@mode-transition-all-outpu=
ts.html">SKIP</a> ([i915#11616] / [i915#7213])</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-8/igt@kms_color@deep-color.html">SKIP</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-=
tglu-5/igt@kms_color@deep-color.html">SKIP</a> ([i915#3555] / [i915#9979])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-5/igt@kms_content_protection@dp-mst-lic-type-0.html=
">SKIP</a> ([i915#3299]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_content_protection@dp-mst-li=
c-type-0.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-2/igt@kms_content_protection@legacy.html">SKIP</a> =
([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_138743v3/shard-dg2-3/igt@kms_content_protection@legacy.html">SKIP</a=
> ([i915#7118] / [i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-8/igt@kms_content_protection@lic-type-0.html">SKIP=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_13=
8743v3/shard-tglu-5/igt@kms_content_protection@lic-type-0.html">SKIP</a> ([=
i915#6944] / [i915#9424]) +1 other test skip</li>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-4/igt@kms_content_protection@lic-type-0.html">SKIP<=
/a> ([i915#9424]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_138743v3/shard-dg2-10/igt@kms_content_protection@lic-type-0.html=
">TIMEOUT</a> ([i915#7173])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-2/igt@kms_content_protection@mei-interface.html">SK=
IP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_138743v3/shard-dg2-8/igt@kms_content_protection@mei-interface=
.html">SKIP</a> ([i915#9424])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-5/igt@kms_cursor_crc@cursor-onscreen-512x512.html">=
SKIP</a> ([i915#11453]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_138743v3/shard-dg2-2/igt@kms_cursor_crc@cursor-onscreen-51=
2x512.html">SKIP</a> ([i915#9197])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-2/igt@kms_cursor_crc@cursor-random-512x170.html">SK=
IP</a> ([i915#9197]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_138743v3/shard-dg2-3/igt@kms_cursor_crc@cursor-random-512x170=
.html">SKIP</a> ([i915#11453]) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-tglu-8/igt@kms_cursor_crc@cursor-rapid-movement-32x10.h=
tml">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_138743v3/shard-tglu-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10=
.html">SKIP</a> ([i915#3555]) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-dg2-10/igt@kms_cursor_crc@cursor-rapid-movement-512x170=
.html">SKIP</a> ([i915#11453] / [i915#3359]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_138743v3/shard-dg2-6/igt@kms_cursor_c=
rc@cursor-rapid-movement-512x170.html">SKIP</a> ([i915#11453])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x32:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15451/shard-d">SKIP</a> ([i915#3555]) -&gt; [SKIP][488] ([i915#9197=
])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3722764611920676001==--
