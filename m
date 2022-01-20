Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB97D495308
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 18:17:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C2E210E8AB;
	Thu, 20 Jan 2022 17:17:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6429310E8EB;
 Thu, 20 Jan 2022 17:17:31 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5EA27AADDD;
 Thu, 20 Jan 2022 17:17:31 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2168015731768165395=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alexander Usyskin" <alexander.usyskin@intel.com>
Date: Thu, 20 Jan 2022 17:17:31 -0000
Message-ID: <164269905137.22531.17605678837912527253@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220120145351.520555-1-alexander.usyskin@intel.com>
In-Reply-To: <20220120145351.520555-1-alexander.usyskin@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQWRk?=
 =?utf-8?q?_driver_for_GSC_controller_=28rev3=29?=
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

--===============2168015731768165395==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Add driver for GSC controller (rev3)
URL   : https://patchwork.freedesktop.org/series/98066/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11112_full -> Patchwork_22041_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22041_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22041_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22041_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html

  
Known issues
------------

  Here are the changes found in Patchwork_22041_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-apl:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) -> ([FAIL][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52]) ([i915#4386])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl8/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl8/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl8/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl6/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl3/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl3/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl2/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl2/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl3/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl7/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl7/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl7/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl8/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl8/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl8/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl8/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [PASS][53] -> [SKIP][54] ([i915#4525]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-iclb1/igt@gem_exec_balancer@parallel.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-iclb3/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [PASS][55] -> [FAIL][56] ([i915#2846])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-kbl3/igt@gem_exec_fair@basic-deadline.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-kbl4/igt@gem_exec_fair@basic-deadline.html
    - shard-glk:          [PASS][57] -> [FAIL][58] ([i915#2846])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-glk5/igt@gem_exec_fair@basic-deadline.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-glk5/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][59] -> [FAIL][60] ([i915#2842])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][61] ([i915#2842])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [PASS][62] -> [FAIL][63] ([i915#2842])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-kbl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#4613])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-kbl7/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#4613])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-skl8/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gen7_exec_parse@basic-rejected:
    - shard-tglb:         NOTRUN -> [SKIP][66] ([fdo#109289])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-tglb3/igt@gen7_exec_parse@basic-rejected.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [PASS][67] -> [INCOMPLETE][68] ([i915#3921])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-snb5/igt@i915_selftest@live@hangcheck.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-snb6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#3777])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-skl8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#3777]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-glk:          [PASS][71] -> [DMESG-WARN][72] ([i915#118])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-glk7/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-glk3/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][73] ([i915#3743]) +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-skl8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#3886]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl7/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][75] ([i915#3689] / [i915#3886])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-tglb3/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#3886]) +2 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-skl8/igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - shard-kbl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [fdo#111827])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-kbl7/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_color_chamelium@pipe-b-ctm-blue-to-red:
    - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl7/igt@kms_color_chamelium@pipe-b-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-skl8/igt@kms_color_chamelium@pipe-c-ctm-0-25.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][80] -> [FAIL][81] ([i915#2346])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-iclb:         [PASS][82] -> [FAIL][83] ([i915#2346]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-iclb1/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
    - shard-kbl:          NOTRUN -> [SKIP][84] ([fdo#109271]) +9 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-kbl3/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][85] -> [FAIL][86] ([i915#79])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-kbl:          [PASS][87] -> [INCOMPLETE][88] ([i915#3614])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [PASS][89] -> [DMESG-WARN][90] ([i915#180]) +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl7/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl2/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          [PASS][91] -> [FAIL][92] ([i915#2122])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1:
    - shard-glk:          [PASS][93] -> [FAIL][94] ([i915#2122])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-glk8/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-glk8/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-iclb:         [PASS][95] -> [SKIP][96] ([i915#3701])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         NOTRUN -> [SKIP][97] ([fdo#109280] / [fdo#111825]) +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff:
    - shard-apl:          NOTRUN -> [SKIP][98] ([fdo#109271]) +62 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][99] -> [FAIL][100] ([i915#1188]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][101] ([i915#265])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][102] -> [FAIL][103] ([fdo#108145] / [i915#265]) +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-kbl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#658])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-kbl7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][105] -> [SKIP][106] ([fdo#109441]) +3 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][107] -> [FAIL][108] ([i915#31])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl6/igt@kms_setmode@basic.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl1/igt@kms_setmode@basic.html
    - shard-glk:          [PASS][109] -> [FAIL][110] ([i915#31])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-glk5/igt@kms_setmode@basic.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-glk1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          NOTRUN -> [DMESG-WARN][111] ([i915#180])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-query-forked-busy:
    - shard-skl:          NOTRUN -> [SKIP][112] ([fdo#109271]) +45 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-skl8/igt@kms_vblank@pipe-d-query-forked-busy.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][113] ([fdo#109271] / [i915#533])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl7/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][114] ([fdo#109271] / [i915#2437]) +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl3/igt@kms_writeback@writeback-check-output.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [PASS][115] -> [FAIL][116] ([i915#1542])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-glk7/igt@perf@polling-parameterized.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-glk3/igt@perf@polling-parameterized.html

  * igt@sysfs_clients@pidname:
    - shard-apl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#2994])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl3/igt@sysfs_clients@pidname.html

  
#### Possible fixes ####

  * igt@drm_mm@all@replace:
    - shard-skl:          [INCOMPLETE][118] -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-skl2/igt@drm_mm@all@replace.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-skl6/igt@drm_mm@all@replace.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-apl:          [DMESG-WARN][120] ([i915#180]) -> [PASS][121] +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl1/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl3/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-tglb:         [TIMEOUT][122] ([i915#3063]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-tglb5/igt@gem_eio@in-flight-contexts-1us.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-tglb1/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [SKIP][124] ([i915#4525]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-iclb5/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-kbl:          [FAIL][126] ([i915#2842]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-apl:          [FAIL][128] ([i915#2842]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [FAIL][130] ([i915#2851]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_whisper@basic-contexts:
    - shard-glk:          [DMESG-WARN][132] ([i915#118]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-glk1/igt@gem_exec_whisper@basic-contexts.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-glk6/igt@gem_exec_whisper@basic-contexts.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][134] ([i915#2190]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-tglb7/igt@gem_huc_copy@huc-copy.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-tglb8/igt@gem_huc_copy@huc-copy.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][136] ([i915#180]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge:
    - shard-skl:          [DMESG-WARN][138] ([i915#1982]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-skl2/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-skl3/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [INCOMPLETE][140] ([i915#180] / [i915#1982]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][142] ([i915#79]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:
    - shard-kbl:          [FAIL][144] ([i915#79]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-kbl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-edp1:
    - shard-skl:          [INCOMPLETE][146] ([i915#4839]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-skl6/igt@kms_flip@flip-vs-suspend@c-edp1.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-skl8/igt@kms_flip@flip-vs-suspend@c-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [FAIL][148] ([i915#2122]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-iclb:         [SKIP][150] ([i915#3701]) -> [PASS][151] +1 similar issue
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_plane@pixel-format@pipe-a-planes:
    - shard-glk:          [DMESG-FAIL][152] ([i915#118]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-glk3/igt@kms_plane@pixel-format@pipe-a-planes.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-glk5/igt@kms_plane@pixel-format@pipe-a-planes.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [SKIP][154] ([fdo#109441]) -> [PASS][155] +2 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][156] ([i915#180] / [i915#295]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][158] ([i915#1542]) -> [PASS][159]
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-skl8/igt@perf@polling-parameterized.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-skl1/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-iclb:         [SKIP][160] ([i915#4525]) -> [FAIL][161] ([i915#4916])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-iclb8/igt@gem_exec_balancer@parallel-ordering.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][162] ([i915#2852]) -> [FAIL][163] ([i915#2842])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-iclb1/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-iclb3/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][164] ([i915#2684]) -> [WARN][165] ([i915#1804] / [i915#2684])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-iclb:         [FAIL][166] ([i915#4148]) -> [SKIP][167] ([fdo#109642] / [fdo#111068] / [i915#658])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-iclb3/igt@kms_psr2_su@page_flip-nv12.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][168], [FAIL][169], [FAIL][170], [FAIL][171]) ([i915#1814] / [i915#3002] / [i915#4312] / [i915#602]) -> ([FAIL][172], [FAIL][173]) ([i915#3002] / [i915#4312])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-kbl4/igt@runner@aborted.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-kbl4/igt@runner@aborted.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-kbl7/igt@runner@aborted.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-kbl4/igt@runner@aborted.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-kbl1/igt@runner@aborted.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-kbl7/igt@runner@aborted.html
    - shard-apl:          ([FAIL][174], [FAIL][175], [FAIL][176], [FAIL][177], [FAIL][178]) ([i915#180] / [i915#3002] / [i915#4312]) -> ([FAIL][179], [FAIL][180], [FAIL][181], [FAIL][182]) ([i915#180] / [i915#18

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/index.html

--===============2168015731768165395==
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
<tr><td><b>Series:</b></td><td>Add driver for GSC controller (rev3)</td></t=
r>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/98066/">https://patchwork.freedesktop.org/series/98066/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22041/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22041/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11112_full -&gt; Patchwork_22041_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22041_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_22041_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22041_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledp=
rimary.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22041/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-indfb-=
scaledprimary.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22041_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11112/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl8/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11112/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11112/shard-apl7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/sha=
rd-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11112/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11112/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11112/shard-apl6/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112=
/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11112/shard-apl4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-ap=
l3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1112/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11112/shard-apl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-apl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shar=
d-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11112/shard-apl1/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl1/boot.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/=
shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22041/shard-apl1/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl1/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/=
shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22041/shard-apl2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/=
shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22041/shard-apl3/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/=
shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22041/shard-apl4/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/=
shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22041/shard-apl6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/=
shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22041/shard-apl6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/=
shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22041/shard-apl7/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/=
shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_22041/shard-apl8/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl8/boot.html">PAS=
S</a>) ([i915#4386])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-iclb1/igt@gem_exec_balancer@parallel.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shar=
d-iclb3/igt@gem_exec_balancer@parallel.html">SKIP</a> ([i915#4525]) +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11112/shard-kbl3/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shar=
d-kbl4/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11112/shard-glk5/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shar=
d-glk5/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/s=
hard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22041/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/sh=
ard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22041/shard-kbl7/igt@gem_lmem_swapping@heavy-random=
.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22041/shard-skl8/igt@gem_lmem_swapping@parallel-ran=
dom-verify.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-rejected:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22041/shard-tglb3/igt@gen7_exec_parse@basic-rejecte=
d.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-snb5/igt@i915_selftest@live@hangcheck.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/sha=
rd-snb6/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#3921])=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22041/shard-skl8/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22041/shard-apl6/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-glk7/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_220=
41/shard-glk3/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">DMESG-WARN</a> (=
[i915#118])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22041/shard-skl8/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743]) +2 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22041/shard-apl7/igt@kms_ccs@pipe-b-bad-pixel-forma=
t-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22041/shard-tglb3/igt@kms_ccs@pipe-c-crc-sprite-pla=
nes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886])</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22041/shard-skl8/igt@kms_ccs@pipe-c-random-ccs-data=
-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22041/shard-kbl7/igt@kms_chamelium@hdmi-crc-fast.ht=
ml">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-blue-to-red:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22041/shard-apl7/igt@kms_color_chamelium@pipe-b-ctm=
-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22041/shard-skl8/igt@kms_color_chamelium@pipe-c-ctm=
-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22041/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-=
transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-iclb1/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22041/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL=
</a> ([i915#2346]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22041/shard-kbl3/igt@kms_flip@2x-flip-vs-modeset-vs=
-hang.html">SKIP</a> ([fdo#109271]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22041/shard-skl1/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a>=
 ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22041/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.ht=
ml">INCOMPLETE</a> ([i915#3614])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-apl7/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/s=
hard-apl2/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> ([i915#18=
0]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22041/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">FAIL</a>=
 ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-glk8/igt@kms_flip@plain-flip-ts-check-interruptible@a-h=
dmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22041/shard-glk8/igt@kms_flip@plain-flip-ts-check-interrupti=
ble@a-hdmi-a1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp=
-ytile-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22041/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22041/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-pri-shrfb-draw-pwrite.html">SKIP</a> ([fdo#109280] / [fdo#11182=
5]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22041/shard-apl6/igt@kms_frontbuffer_tracking@psr-2=
p-primscrn-cur-indfb-onoff.html">SKIP</a> ([fdo#109271]) +62 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard=
-skl1/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188]) +1 simila=
r issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22041/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22041/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22041/shard-kbl7/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/sh=
ard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> ([fdo#109441]) +3=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11112/shard-apl6/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-apl1/igt=
@kms_setmode@basic.html">FAIL</a> ([i915#31])</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11112/shard-glk5/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-glk1/igt=
@kms_setmode@basic.html">FAIL</a> ([i915#31])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22041/shard-apl3/igt@kms_vblank@pipe-b-ts-continuat=
ion-suspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-forked-busy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22041/shard-skl8/igt@kms_vblank@pipe-d-query-forked=
-busy.html">SKIP</a> ([fdo#109271]) +45 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22041/shard-apl7/igt@kms_vblank@pipe-d-wait-idle.ht=
ml">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22041/shard-apl3/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> ([fdo#109271] / [i915#2437]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-glk7/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard=
-glk3/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22041/shard-apl3/igt@sysfs_clients@pidname.html">SK=
IP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@drm_mm@all@replace:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-skl2/igt@drm_mm@all@replace.html">INCOMPLETE</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-s=
kl6/igt@drm_mm@all@replace.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-apl1/igt@gem_ctx_isolation@preservation-s3@rcs0.html">D=
MESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_22041/shard-apl3/igt@gem_ctx_isolation@preservation-s3@=
rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-tglb5/igt@gem_eio@in-flight-contexts-1us.html">TIMEOUT<=
/a> ([i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22041/shard-tglb1/igt@gem_eio@in-flight-contexts-1us.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-iclb5/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">SKIP</a> ([i915#4525]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22041/shard-iclb1/igt@gem_exec_balancer@parallel-keep-in-=
fence.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-kbl4/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22041/shard-kbl1/igt@gem_exec_fair@basic-none@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-apl6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22041/shard-apl8/igt@gem_exec_fair@basic-pace-share@rcs0.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (=
[i915#2851]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22041/shard-kbl6/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-glk1/igt@gem_exec_whisper@basic-contexts.html">DMESG-WA=
RN</a> ([i915#118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22041/shard-glk6/igt@gem_exec_whisper@basic-contexts.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2=
190]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2041/shard-tglb8/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DME=
SG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22041/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-skl2/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.ht=
ml">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_22041/shard-skl3/igt@kms_cursor_edge_walk@pipe-c-=
64x64-left-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a>=
 ([i915#180] / [i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_22041/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank-interruptib=
le@bc-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-glk1/igt@kms_flip@2x-=
flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-kbl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-dp1.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_22041/shard-kbl7/igt@kms_flip@flip-vs-expired-vbl=
ank-interruptible@b-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-skl6/igt@kms_flip@flip-vs-suspend@c-edp1.html">INCOMPLE=
TE</a> ([i915#4839]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22041/shard-skl8/igt@kms_flip@flip-vs-suspend@c-edp1.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">F=
AIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22041/shard-skl4/igt@kms_flip@plain-flip-fb-recreate@a-edp1.=
html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytileccs-downscaling.html">SKIP</a> ([i915#3701]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-iclb5/igt@kms_flip_=
scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format@pipe-a-planes:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-glk3/igt@kms_plane@pixel-format@pipe-a-planes.html">DME=
SG-FAIL</a> ([i915#118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22041/shard-glk5/igt@kms_plane@pixel-format@pipe-a-planes=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> =
([fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_22041/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> =
+2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">DMESG-WARN</a> ([i915#180] / [i915#295]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22041/shard-kbl3/igt@kms_vblank@pipe-a-=
ts-continuation-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-skl8/igt@perf@polling-parameterized.html">FAIL</a> ([i9=
15#1542]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22041/shard-skl1/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-iclb8/igt@gem_exec_balancer@parallel-ordering.html">SKI=
P</a> ([i915#4525]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22041/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html=
">FAIL</a> ([i915#4916])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-iclb1/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL=
</a> ([i915#2852]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22041/shard-iclb3/igt@gem_exec_fair@basic-none-rrul@rcs0.html">=
FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> ([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_22041/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</=
a> ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html">FAIL</a> ([i=
915#4148]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22041/shard-iclb3/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> ([fdo#1=
09642] / [fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11112/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-kbl4/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11112/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11112/shard-kbl4/igt@runner@aborte=
d.html">FAIL</a>) ([i915#1814] / [i915#3002] / [i915#4312] / [i915#602]) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22041/sh=
ard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_22041/shard-kbl7/igt@runner@aborted.html">FA=
IL</a>) ([i915#3002] / [i915#4312])</p>
</li>
<li>
<p>shard-apl:          ([FAIL][174], [FAIL][175], [FAIL][176], [FAIL][177],=
 [FAIL][178]) ([i915#180] / [i915#3002] / [i915#4312]) -&gt; ([FAIL][179], =
[FAIL][180], [FAIL][181], [FAIL][182]) ([i915#180] / [i915#18</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============2168015731768165395==--
