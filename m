Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B435352DCB1
	for <lists+intel-gfx@lfdr.de>; Thu, 19 May 2022 20:25:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F347610EFAF;
	Thu, 19 May 2022 18:25:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4357B10EEE2;
 Thu, 19 May 2022 18:25:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 26821AADD5;
 Thu, 19 May 2022 18:25:00 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1302279148616620799=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bhanuprakash Modem" <bhanuprakash.modem@intel.com>
Date: Thu, 19 May 2022 18:25:00 -0000
Message-ID: <165298470012.517.16496599397228295717@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220519095149.3560034-1-bhanuprakash.modem@intel.com>
In-Reply-To: <20220519095149.3560034-1-bhanuprakash.modem@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgRXhw?=
 =?utf-8?q?ose_max_and_current_bpc_via_debugfs?=
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

--===============1302279148616620799==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Expose max and current bpc via debugfs
URL   : https://patchwork.freedesktop.org/series/104170/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11677_full -> Patchwork_104170v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (13 -> 11)
------------------------------

  Missing    (2): shard-rkl shard-dg1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_104170v1_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-1}:
    - {shard-tglu}:       [SKIP][1] ([i915#6029]) -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-tglu-6/igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglu-4/igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-1.html

  * {igt@kms_hdr@bpc-switch-suspend@pipe-a-edp-1}:
    - shard-tglb:         NOTRUN -> [SKIP][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_hdr@bpc-switch-suspend@pipe-a-edp-1.html
    - shard-iclb:         [SKIP][4] ([i915#6029]) -> [SKIP][5] +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-iclb4/igt@kms_hdr@bpc-switch-suspend@pipe-a-edp-1.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb6/igt@kms_hdr@bpc-switch-suspend@pipe-a-edp-1.html

  * {igt@kms_hdr@bpc-switch@pipe-a-edp-1}:
    - shard-tglb:         [SKIP][6] ([i915#6029]) -> [SKIP][7] +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-tglb1/igt@kms_hdr@bpc-switch@pipe-a-edp-1.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb8/igt@kms_hdr@bpc-switch@pipe-a-edp-1.html

  * {igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-2}:
    - shard-glk:          [SKIP][8] ([fdo#109271]) -> [FAIL][9] +4 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-glk1/igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-2.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-glk8/igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-2.html

  
Known issues
------------

  Here are the changes found in Patchwork_104170v1_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-snb:          ([PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34]) -> ([PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [FAIL][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59]) ([i915#4338])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb7/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb7/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb7/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb7/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb7/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb6/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb6/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb6/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb6/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb6/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb5/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb5/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb5/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb5/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb5/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb4/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb4/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb4/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb4/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb4/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb2/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb7/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb7/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb7/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb7/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb7/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb6/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb5/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb5/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb5/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb5/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb5/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb5/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb4/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb4/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb4/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb4/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb2/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb2/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb2/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb2/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb2/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][60] -> [FAIL][61] ([i915#5784])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-tglb6/igt@gem_eio@kms.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb8/igt@gem_eio@kms.html

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          NOTRUN -> [FAIL][62] ([i915#3354])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][63] ([i915#5076] / [i915#5614])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl3/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          NOTRUN -> [FAIL][64] ([i915#2846])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl4/igt@gem_exec_fair@basic-deadline.html
    - shard-glk:          [PASS][65] -> [FAIL][66] ([i915#2846])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-glk4/igt@gem_exec_fair@basic-deadline.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-glk4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][67] ([i915#2842])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-iclb:         NOTRUN -> [FAIL][68] ([i915#2842])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][69] -> [FAIL][70] ([i915#2842])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][71] -> [FAIL][72] ([i915#2842]) +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-uc:
    - shard-snb:          [PASS][73] -> [SKIP][74] ([fdo#109271]) +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb5/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-uc.html

  * igt@gem_exec_params@no-vebox:
    - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271]) +112 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-skl4/igt@gem_exec_params@no-vebox.html

  * igt@gem_lmem_swapping@random:
    - shard-kbl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#4613]) +2 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl3/igt@gem_lmem_swapping@random.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#4613])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-skl3/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-tglb:         NOTRUN -> [SKIP][78] ([i915#4613])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-tglb:         NOTRUN -> [SKIP][79] ([i915#3297])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gen3_mixed_blits:
    - shard-iclb:         NOTRUN -> [SKIP][80] ([fdo#109289])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@gen3_mixed_blits.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-tglb:         NOTRUN -> [SKIP][81] ([i915#2527] / [i915#2856])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@gen9_exec_parse@allowed-single.html
    - shard-skl:          [PASS][82] -> [DMESG-WARN][83] ([i915#5566] / [i915#716])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-skl9/igt@gen9_exec_parse@allowed-single.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-skl4/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_hangman@engine-engine-hang:
    - shard-snb:          NOTRUN -> [SKIP][84] ([fdo#109271]) +62 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb2/igt@i915_hangman@engine-engine-hang.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          NOTRUN -> [DMESG-WARN][85] ([i915#180])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-apl7/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([i915#5286]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][87] ([i915#3743]) +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-skl3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][88] ([fdo#111614])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_big_fb@y-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglb:         NOTRUN -> [SKIP][89] ([fdo#111615]) +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][90] ([i915#3689]) +3 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#3886]) +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl3/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][92] ([fdo#109278] / [i915#3886]) +2 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#3886]) +7 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-skl8/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-crc-primary-rotation-180-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][94] ([fdo#111615] / [i915#3689])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_ccs@pipe-d-crc-primary-rotation-180-yf_tiled_ccs.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - shard-snb:          NOTRUN -> [SKIP][95] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb2/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@vga-hpd:
    - shard-tglb:         NOTRUN -> [SKIP][96] ([fdo#109284] / [fdo#111827]) +5 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][97] ([fdo#109284] / [fdo#111827])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-skl3/igt@kms_color_chamelium@pipe-d-ctm-0-25.html
    - shard-kbl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl3/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-tglb:         NOTRUN -> [SKIP][100] ([i915#1063]) +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][101] ([i915#3319]) +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][102] ([fdo#109278] / [fdo#109279]) +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@kms_cursor_crc@pipe-a-cursor-512x512-rapid-movement.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][103] ([i915#3359])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][104] ([fdo#109274] / [fdo#109278]) +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-skl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#533]) +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-skl4/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-4tiled:
    - shard-tglb:         NOTRUN -> [SKIP][106] ([i915#5287])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_draw_crc@draw-method-rgb565-blt-4tiled.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-4tiled:
    - shard-iclb:         NOTRUN -> [SKIP][107] ([i915#5287])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-4tiled.html

  * igt@kms_flip@2x-dpms-vs-vblank-race:
    - shard-tglb:         NOTRUN -> [SKIP][108] ([fdo#109274] / [fdo#111825]) +2 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_flip@2x-dpms-vs-vblank-race.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-iclb:         NOTRUN -> [SKIP][109] ([fdo#109274])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][110] -> [FAIL][111] ([i915#2122])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling:
    - shard-kbl:          NOTRUN -> [SKIP][112] ([fdo#109271]) +83 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][113] ([fdo#109280]) +4 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-wc:
    - shard-skl:          NOTRUN -> [SKIP][114] ([fdo#109271] / [i915#1888])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-skl4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-tglb:         NOTRUN -> [SKIP][115] ([i915#5439])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt:
    - shard-tglb:         NOTRUN -> [SKIP][116] ([fdo#109280] / [fdo#111825]) +13 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#533])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl3/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][118] ([i915#265])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl3/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][119] ([fdo#108145] / [i915#265])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max:
    - shard-iclb:         NOTRUN -> [SKIP][120] ([fdo#109278]) +6 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max.html

  * igt@kms_plane_lowres@pipe-a-tiling-none:
    - shard-tglb:         NOTRUN -> [SKIP][121] ([i915#3536]) +2 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_plane_lowres@pipe-a-tiling-none.html

  * igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format:
    - shard-iclb:         [PASS][122] -> [SKIP][123] ([i915#5176]) +2 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-iclb1/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale:
    - shard-iclb:         [PASS][124] -> [SKIP][125] ([i915#5235]) +2 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-iclb6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale.html

  * igt@kms_psr@psr2_basic:
    - shard-tglb:         NOTRUN -> [FAIL][126] ([i915#132] / [i915#3467]) +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_psr@psr2_basic.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][127] -> [SKIP][128] ([fdo#109441]) +2 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][129] -> [DMESG-WARN][130] ([i915#180]) +3 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
    - shard-apl:          [PASS][131] -> [DMESG-WARN][132] ([i915#180]) +2 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-iclb:         NOTRUN -> [SKIP][133] ([i915#2437])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:
    - shard-tglb:         NOTRUN -> [SKIP][134] ([i915#2530])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame.html

  * igt@perf@mi-rpc:
    - shard-tglb:         NOTRUN -> [SKIP][135] ([fdo#109289]) +2 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@perf@mi-rpc.html

  * igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name:
    - shard-tglb:         NOTRUN -> [SKIP][136] ([fdo#109291])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name.html

  * igt@prime_nv_test@i915_import_cpu_mmap:
    - shard-iclb:         NOTRUN -> [SKIP][137] ([fdo#109291])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@prime_nv_test@i915_import_cpu_mmap.html

  * igt@prime_vgem@coherency-gtt:
    - shard-tglb:         NOTRUN -> [SKIP][138] ([fdo#111656])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@prime_vgem@coherency-gtt.html

  * igt@prime_vgem@fence-write-hang:
    - shard-apl:          NOTRUN -> [SKIP][139] ([fdo#109271]) +6 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-apl7/igt@prime_vgem@fence-write-hang.html

  * igt@syncobj_timeline@transfer-timeline-point:
    - shard-kbl:          NOTRUN -> [DMESG-FAIL][140] ([i915#5098])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl6/igt@syncobj_timeline@transfer-timeline-point.html

  * igt@sysfs_clients@fair-3:
    - shard-kbl:          NOTRUN -> [SKIP][141] ([fdo#109271] / [i915#2994])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl4/igt@sysfs_clients@fair-3.html

  * igt@sysfs_clients@pidname:
    - shard-apl:          NOTRUN -> [SKIP][142] ([fdo#109271] / [i915#2994])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-apl7/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@sema-50:
    - shard-skl:          NOTRUN -> [SKIP][143] ([fdo#109271] / [i915#2994])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-skl9/igt@sysfs_clients@sema-50.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-glk:          [TIMEOUT][144] ([i915#3063]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-glk9/igt@gem_eio@in-flight-contexts-1us.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-glk6/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_capture@pi@bcs0:
    - shard-tglb:         [INCOMPLETE][146] ([i915#3371]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-tglb2/igt@gem_exec_capture@pi@bcs0.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@gem_exec_capture@pi@bcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-glk:          [FAIL][148] ([i915#2842]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-glk6/igt@gem_exec_fair@basic-none-share@rcs0.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-glk2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - {shard-tglu}:       [FAIL][150] ([i915#2842]) -> [PASS][151] +1 similar issue
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [FAIL][152] ([i915#2842]) -> [PASS][153] +1 similar issue
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-wb:
    - shard-snb:          [SKIP][154] ([fdo#109271]) -> [PASS][155] +2 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb2/igt@gem_exec_flush@basic-batch-kernel-default-wb.html

  * igt@gem_exec_schedule@wide@rcs0:
    - shard-apl:          [FAIL][156] ([i915#5965]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-apl7/igt@gem_exec_schedule@wide@rcs0.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-apl8/igt@gem_exec_schedule@wide@rcs0.html

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - shard-glk:          [DMESG-WARN][158] ([i915#118]) -> [PASS][159]
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-glk8/igt@gem_exec_whisper@basic-queues-priority-all.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-glk6/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@gem_softpin@evict-single-offset:
    - {shard-tglu}:       [FAIL][160] ([i915#4171]) -> [PASS][161]
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-tglu-5/igt@gem_softpin@evict-single-offset.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglu-2/igt@gem_softpin@evict-single-offset.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [SKIP][162] ([i915#4281]) -> [PASS][163]
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb8/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [INCOMPLETE][164] ([i915#3921]) -> [PASS][165]
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb6/igt@i915_selftest@live@hangcheck.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb2/igt@i915_selftest@live@hangcheck.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][166] ([i915#180]) -> [PASS][167] +3 similar issues
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
    - shard-iclb:         [FAIL][168] ([i915#5072]) -> [PASS][169]
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb6/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [FAIL][170] ([i915#2346]) -> [PASS][171]
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@edp-1-pipe-a:
    - shard-iclb:         [SKIP][172] ([i915#6029]) -> [PASS][173]
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-iclb3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@edp-1-pipe-a.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb8/igt@kms_dither@fb-8bpc-vs-panel-6bpc@edp-1-pipe-a.html
    - shard-tglb:         [SKIP][174] ([i915#6029]) -> [PASS][175]
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-tglb1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@edp-1-pipe-a.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb8/igt@kms_dither@fb-8bpc-vs-panel-6bpc@edp-1-pipe-a.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a:
    - shard-skl:          [SKIP][176] ([fdo#109271]) -> [PASS][177]
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-skl10/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-skl7/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-skl:          [INCOMPLETE][178] ([i915#1982] / [i915#4939]) -> [PASS][179]
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-skl10/igt@kms_fbcon_fbt@psr-suspend.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-skl3/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-apl:          [DMESG-WARN][180] ([i915#180]) -> [PASS][181]
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][182] ([i915#2122]) -> [PASS][183]
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * {igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1}:
    - shard-kbl:          [SKIP][184] ([fdo#109271]) -> [PASS][185] +1 similar issue
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-kbl7/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
    - shard-apl:          [SKIP][186] ([fdo#109271]) -> [PASS][187] +3 similar issues
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-apl4/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-apl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html

  * igt@kms_plane_scaling@downscale-with-modifier-factor-0-5@pipe-c-edp-1-downscale-with-modifier:
    - shard-iclb:         [SKIP][188] ([i915#5176]) -> [PASS][189] +2 similar issues
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-iclb2/igt@kms_plane_scaling@downscale-with-modifier-factor-0-5@pipe-c-edp-1-downscale-with-modifier.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb5/igt@kms_plane_scaling@downscale-with-modifier-factor-0-5@pipe-c-edp-1-downscale-with-modifier.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-downscale:
    - shard-iclb:         [SKIP][190] ([i915#5235]) -> [PASS][191] +2 similar issues
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-downscale.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-downscale.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][192] ([fdo#109441]) -> [PASS][193] +1 similar issue
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@prime_mmap@test_userptr@test_userptr-smem:
    - shard-skl:          [DMESG-WARN][194] ([i915#1982]) -> [PASS][195]
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-skl10/igt@prime_mmap@test_userptr@test_userptr-smem.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-skl3/igt@prime_mmap@test_userptr@test_userptr-smem.html

  
#### Warnings ####

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [DMESG-WARN][196] ([i915#5614]) -> [SKIP][197] ([i915#4525])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [SKIP][198] ([i915#4525]) -> [DMESG-WARN][199] ([i915#5614]) +1 similar issue
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][200] ([i915#2852]) -> [FAIL][201] ([i915#2842])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@kms_color@pipe-b-deep-color:
    - shard-iclb:         [SKIP][202] ([fdo#109278] / [i915#6029]) -> [SKIP][203] ([fdo#109278] / [i915#3555]) +1 similar issue
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-iclb7/igt@kms_color@pipe-b-deep-color.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb4/igt@kms_color@pipe-b-deep-color.html
    - shard-tglb:         [SKIP][204] ([i915#6029]) -> [SKIP][205] ([i915#3555]) +1 similar issue
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-tglb3/igt@kms_color@pipe-b-deep-color.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb5/igt@kms_color@pipe-b-deep-color.html

  * igt@kms_color_chamelium@pipe-c-ctm-limited-range:
    - shard-skl:          [SKIP][206] ([fdo#109271] / [fdo#111827]) -> [SKIP][207] ([fdo#109271] / [fdo#111827] / [i915#1888])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-skl4/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-skl2/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html

  * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
    - shard-skl:          [SKIP][208] ([fdo#109271] / [i915#1888]) -> [SKIP][209] ([fdo#109271])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-skl1/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-skl8/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [FAIL][210] ([i915#4767]) -> [INCOMPLETE][211] ([i915#180])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-iclb:         [SKIP][212] ([i915#2920]) -> [SKIP][213] ([fdo#111068] / [i915#658])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-iclb:         [SKIP][214] ([fdo#111068] / [i915#658]) -> [SKIP][215] ([i915#2920])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-iclb1/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_rotation_crc@primary-x-tiled-reflect-x-0:
    - shard-skl:          [SKIP][216] ([fdo#109271]) -> [SKIP][217] ([fdo#109271] / [i915#1888])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-skl1/igt@kms_rotation_crc@primary-x-tiled-reflect-x-0.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-skl8/igt@kms_rotation_crc@primary-x-tiled-reflect-x-0.html

  * igt@kms_sysfs_edid_timing:
    - shard-skl:          [FAIL][218] ([IGT#2] / [i915#1888]) -> [FAIL][219] ([IGT#2])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-skl4/igt@kms_sysfs_edid_timing.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-skl2/igt@kms_sysfs_edid_timing.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][220], [FAIL][221], [FAIL][222], [FAIL][223], [FAIL][224], [FAIL][225], [FAIL][226], [FAIL][227], [FAIL][228], [FAIL][229], [FAIL][230], [FAIL][231], [FAIL][232]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][233], [FAIL][234], [FAIL][235], [FAIL][236], [FAIL][237], [FAIL][238], [FAIL][239], [FAIL][240], [FAIL][241], [FAIL][242], [FAIL][243], [FAIL][244], [FAIL][245], [FAIL][246]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257] / [i915#92])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-kbl1/igt@runner@aborted.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-kbl3/igt@runner@aborted.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-kbl6/igt@runner@aborted.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-kbl6/igt@runner@aborted.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-kbl6/igt@runner@aborted.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-kbl6/igt@runner@aborted.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-kbl7/igt@runner@aborted.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-kbl3/igt@runner@aborted.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-kbl6/igt@runner@aborted.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-kbl6/igt@runner@aborted.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-kbl7/igt@runner@aborted.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-kbl1/igt@runner@aborted.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-kbl4/igt@runner@aborted.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl4/igt@runner@aborted.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl4/igt@runner@aborted.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl4/igt@runner@aborted.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl4/igt@runner@aborted.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl3/igt@runner@aborted.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl6/igt@runner@aborted.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl6/igt@runner@aborted.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl6/igt@runner@aborted.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl7/igt@runner@aborted.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl7/igt@runner@aborted.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl7/igt@runner@aborted.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl7/igt@runner@aborted.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl7/igt@runner@aborted.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl6/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2852]: https://gitlab.freedesktop.org/drm/intel/issues/2852
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
  [i915#3354]: https://gitlab.freedesktop.org/drm/intel/issues/3354
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3371]: https://gitlab.freedesktop.org/drm/intel/issues/3371
  [i915#3467]: https://gitlab.freedesktop.org/drm/intel/issues/3467
  [i915#3536]: https://gitlab.freedesktop.org/drm/intel/issues/3536
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4338]: https://gitlab.freedesktop.org/drm/intel/issues/4338
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#5072]: https://gitlab.freedesktop.org/drm/intel/issues/5072
  [i915#5076]: https://gitlab.freedesktop.org/drm/intel/issues/5076
  [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5439]: https://gitlab.freedesktop.org/drm/intel/issues/5439
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5965]: https://gitlab.freedesktop.org/drm/intel/issues/5965
  [i915#6029]: https://gitlab.freedesktop.org/drm/intel/issues/6029
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Build changes
-------------

  * Linux: CI_DRM_11677 -> Patchwork_104170v1

  CI-20190529: 20190529
  CI_DRM_11677: e98617aab83890ce7097639943e65ce1420f8983 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6481: f2a9c2e6f6f7aa97e5d92274f20aa698087359c4 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_104170v1: e98617aab83890ce7097639943e65ce1420f8983 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/index.html

--===============1302279148616620799==
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
<tr><td><b>Series:</b></td><td>Expose max and current bpc via debugfs</td><=
/tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/104170/">https://patchwork.freedesktop.org/series/104170/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104170v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_104170v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11677_full -&gt; Patchwork_104170v=
1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 11)</h2>
<p>Missing    (2): shard-rkl shard-dg1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
104170v1_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-1}:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-tglu-6/igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-1.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6029=
">i915#6029</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_104170v1/shard-tglu-4/igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-1=
.html">SKIP</a></li>
</ul>
</li>
<li>
<p>{igt@kms_hdr@bpc-switch-suspend@pipe-a-edp-1}:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_hdr@bpc-switch-suspend@=
pipe-a-edp-1.html">SKIP</a></p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11677/shard-iclb4/igt@kms_hdr@bpc-switch-suspend@pipe-a-edp-1.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6029">=
i915#6029</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_104170v1/shard-iclb6/igt@kms_hdr@bpc-switch-suspend@pipe-a-edp-1.ht=
ml">SKIP</a> +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>{igt@kms_hdr@bpc-switch@pipe-a-edp-1}:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-tglb1/igt@kms_hdr@bpc-switch@pipe-a-edp-1.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6029">i915#60=
29</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_104170v1/shard-tglb8/igt@kms_hdr@bpc-switch@pipe-a-edp-1.html">SKIP</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>{igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-2}:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-glk1/igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-2.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#=
109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_104170v1/shard-glk8/igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-2.html">FAIL<=
/a> +4 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_104170v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-snb:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11677/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb7/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11677/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11677/shard-snb7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/sha=
rd-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11677/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11677/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11677/shard-snb5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677=
/shard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11677/shard-snb5/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb4/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-sn=
b4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb4/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1677/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11677/shard-snb2/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-snb2/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shar=
d-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11677/shard-snb2/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb7/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104=
170v1/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_104170v1/shard-snb7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_104170v1/shard-snb7/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/sh=
ard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_104170v1/shard-snb6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb6/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4170v1/shard-snb6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_104170v1/shard-snb5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb5/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_104170v1/shard-snb5/boot.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb5/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/sh=
ard-snb5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_104170v1/shard-snb5/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4170v1/shard-snb4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_104170v1/shard-snb4/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_104170v1/shard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb2/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/sh=
ard-snb2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_104170v1/shard-snb2/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-snb2/boot.html"=
>PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4338=
">i915#4338</a>)</li>
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
/CI_DRM_11677/shard-tglb6/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-tglb8/igt@=
gem_eio@kms.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/5784">i915#5784</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-snb2/igt@gem_eio@unwedge-stress.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3354=
">i915#3354</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-kbl3/igt@gem_exec_balancer@parallel-=
out-fence.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/5076">i915#5076</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/5614">i915#5614</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104170v1/shard-kbl4/igt@gem_exec_fair@basic-deadline=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2846">i915#2846</a>)</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11677/shard-glk4/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/s=
hard-glk4/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@gem_exec_fair@basic-flow@r=
cs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@gem_exec_fair@basic-none-s=
olo@rcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
04170v1/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-kbl1/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1=
/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-uc:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-snb5/igt@gem_exec_flush@basic-batch-kernel-default-uc.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_104170v1/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-uc=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-vebox:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-skl4/igt@gem_exec_params@no-vebox.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a>) +112 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-kbl3/igt@gem_lmem_swapping@random.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4613">i915#4613</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-skl3/igt@gem_lmem_swapping@random-en=
gines.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@gem_lmem_swapping@verify-c=
cs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@gem_userptr_blits@dmabuf-u=
nsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen3_mixed_blits:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@gen3_mixed_blits.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109289">fd=
o#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@gen9_exec_parse@allowed-sin=
gle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2856">i915#2856</a>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11677/shard-skl9/igt@gen9_exec_parse@allowed-single.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1=
/shard-skl4/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#5566</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i915#716</a=
>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-engine-hang:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-snb2/igt@i915_hangman@engine-engine-=
hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a>) +62 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-apl7/igt@i915_suspend@fence-restore-=
untiled.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/5286">i915#5286</a>) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-skl3/igt@kms_big_fb@x-tiled-max-hw-s=
tride-32bpp-rotate-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3743">i915#3743</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_big_fb@y-tiled-64bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_big_fb@yf-tiled-max-hw=
-stride-32bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>) +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_ccs@pipe-a-random-ccs-=
data-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3689">i915#3689</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-kbl3/igt@kms_ccs@pipe-b-crc-primary-=
rotation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@kms_ccs@pipe-c-crc-primary=
-rotation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +2 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-skl8/igt@kms_ccs@pipe-c-missing-ccs-=
buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +7 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-rotation-180-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_ccs@pipe-d-crc-primary=
-rotation-180-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-snb2/igt@kms_chamelium@common-hpd-af=
ter-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_chamelium@vga-hpd.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10928=
4">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@kms_color_chamelium@pipe-a=
-ctm-blue-to-red.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104170v1/shard-skl3/igt@kms_color_chamelium@pipe-d-c=
tm-0-25.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>) +6 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104170v1/shard-kbl3/igt@kms_color_chamelium@pipe-d-c=
tm-0-25.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D111827">fdo#111827</a>) +6 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_content_protection@ato=
mic-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1063">i915#1063</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_cursor_crc@pipe-a-curs=
or-32x32-rapid-movement.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/3319">i915#3319</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@kms_cursor_crc@pipe-a-curs=
or-512x512-rapid-movement.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109279">fdo#109279</a>) +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_cursor_crc@pipe-b-curs=
or-32x10-sliding.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@kms_cursor_legacy@2x-long-=
cursor-vs-flip-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109278">fdo#109278</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-skl4/igt@kms_cursor_legacy@pipe-d-to=
rture-bo.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/533">i915#533</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-blt-4tiled:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_draw_crc@draw-method-r=
gb565-blt-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/5287">i915#5287</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-cpu-4tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@kms_draw_crc@draw-method-r=
gb565-mmap-cpu-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/5287">i915#5287</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_flip@2x-dpms-vs-vblank=
-race.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111825">fdo#111825</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@kms_flip@2x-flip-vs-expire=
d-vblank.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
c-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_104170v1/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-inte=
rruptible@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-upscaling:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-kbl4/igt@kms_flip_scaled_crc@flip-64=
bpp-ytile-to-32bpp-ytile-upscaling.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +83 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +4 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-skl4/igt@kms_frontbuffer_tracking@fb=
cpsr-2p-scndscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_frontbuffer_tracking@f=
bcpsr-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"h=
ttps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +13 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-kbl3/igt@kms_pipe_crc_basic@compare-=
crc-sanitycheck-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-kbl3/igt@kms_plane_alpha_blend@pipe-=
a-alpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-kbl3/igt@kms_plane_alpha_blend@pipe-=
b-alpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@kms_plane_alpha_blend@pipe=
-d-constant-alpha-max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109278">fdo#109278</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-none:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_plane_lowres@pipe-a-ti=
ling-none.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/3536">i915#3536</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-edp-=
1-downscale-with-pixel-format:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-iclb1/igt@kms_plane_scaling@downscale-with-pixel-format=
-factor-0-5@pipe-c-edp-1-downscale-with-pixel-format.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard=
-iclb2/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-5@pipe-c-=
edp-1-downscale-with-pixel-format.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +2 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pi=
pe-c-edp-1-planes-upscale-downscale:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-iclb6/igt@kms_plane_scaling@planes-upscale-factor-0-25-=
downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1=
/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-fac=
tor-0-5@pipe-c-edp-1-planes-upscale-downscale.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +2 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@kms_psr@psr2_basic.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/132">i9=
15#132</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/346=
7">i915#3467</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170=
v1/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) =
+2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11677/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_104170v1/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">=
DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
180">i915#180</a>) +3 similar issues</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11677/shard-apl8/igt@kms_vblank@pipe-a-ts-continuation-suspend.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_104170v1/shard-apl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">=
DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
180">i915#180</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@kms_writeback@writeback-pi=
xel-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@nouveau_crc@pipe-c-ctx-fli=
p-skip-current-frame.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2530">i915#2530</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@perf@mi-rpc.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109289">fdo#109=
289</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@prime_nv_api@nv_i915_reimp=
ort_twice_check_flink_name.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@i915_import_cpu_mmap:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@prime_nv_test@i915_import_=
cpu_mmap.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-tglb7/igt@prime_vgem@coherency-gtt.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11=
1656">fdo#111656</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-apl7/igt@prime_vgem@fence-write-hang=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@transfer-timeline-point:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-kbl6/igt@syncobj_timeline@transfer-t=
imeline-point.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5098">i915#5098</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-kbl4/igt@sysfs_clients@fair-3.html">=
SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271"=
>fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-apl7/igt@sysfs_clients@pidname.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_104170v1/shard-skl9/igt@sysfs_clients@sema-50.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-glk9/igt@gem_eio@in-flight-contexts-1us.html">TIMEOUT</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#3=
063</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_104170v1/shard-glk6/igt@gem_eio@in-flight-contexts-1us.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-tglb2/igt@gem_exec_capture@pi@bcs0.html">INCOMPLETE</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3371">i915#337=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
104170v1/shard-tglb7/igt@gem_exec_capture@pi@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-glk6/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915=
#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_104170v1/shard-glk2/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-tglu-6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i9=
15#2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_104170v1/shard-tglu-4/igt@gem_exec_fair@basic-pace-share@rcs0.html">P=
ASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_104170v1/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a=
> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-wb:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-wb.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_104170v1/shard-snb2/igt@gem_exec_flush@basic-batch-kernel-de=
fault-wb.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@wide@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-apl7/igt@gem_exec_schedule@wide@rcs0.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5965">i915#5965</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1041=
70v1/shard-apl8/igt@gem_exec_schedule@wide@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-glk8/igt@gem_exec_whisper@basic-queues-priority-all.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/118">i915#118</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_104170v1/shard-glk6/igt@gem_exec_whisper@basic-queues-priori=
ty-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-single-offset:</p>
<ul>
<li>{shard-tglu}:       <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-tglu-5/igt@gem_softpin@evict-single-offset.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4171">i915#4=
171</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_104170v1/shard-tglu-2/igt@gem_softpin@evict-single-offset.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/=
shard-iclb8/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-snb6/igt@i915_selftest@live@hangcheck.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3921">i915#=
3921</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_104170v1/shard-snb2/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180=
">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_104170v1/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html"=
>PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-atomic-trans=
itions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/5072">i915#5072</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb6/igt@kms_cursor_legac=
y@cursor-vs-flip-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-glk4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_104170v1/shard-glk3/igt@kms_cursor_legacy@flip-vs-curso=
r-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@edp-1-pipe-a:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11677/shard-iclb3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@edp-1-pipe-a.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
6029">i915#6029</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_104170v1/shard-iclb8/igt@kms_dither@fb-8bpc-vs-panel-6bpc@edp=
-1-pipe-a.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11677/shard-tglb1/igt@kms_dither@fb-8bpc-vs-panel-6bpc@edp-1-pipe-a.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
6029">i915#6029</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_104170v1/shard-tglb8/igt@kms_dither@fb-8bpc-vs-panel-6bpc@edp=
-1-pipe-a.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-skl10/igt@kms_dither@fb-8bpc-vs-panel-8bpc@edp-1-pipe-a=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_104170v1/shard-skl7/igt@kms_dither@fb-8bpc-vs-panel-8bpc@e=
dp-1-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-skl10/igt@kms_fbcon_fbt@psr-suspend.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#19=
82</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4939">i=
915#4939</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_104170v1/shard-skl3/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_104170v1/shard-apl7/igt@kms_flip@flip-vs-suspend-interrupt=
ible@b-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_104170v1/shard-skl8/igt@kms_flip@plain-flip-fb-recreat=
e-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1}:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11677/shard-kbl7/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_104170v1/shard-kbl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html=
">PASS</a> +1 similar issue</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11677/shard-apl4/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_104170v1/shard-apl6/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html=
">PASS</a> +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@downscale-with-modifier-factor-0-5@pipe-c-edp-1-do=
wnscale-with-modifier:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-iclb2/igt@kms_plane_scaling@downscale-with-modifier-fac=
tor-0-5@pipe-c-edp-1-downscale-with-modifier.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-i=
clb5/igt@kms_plane_scaling@downscale-with-modifier-factor-0-5@pipe-c-edp-1-=
downscale-with-modifier.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-do=
wnscale:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5=
@pipe-a-edp-1-planes-downscale.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/intel/issues/5235">i915#5235</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-iclb7/igt@kms_p=
lane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1-planes-downscale.html=
">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10944=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
104170v1/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_userptr@test_userptr-smem:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-skl10/igt@prime_mmap@test_userptr@test_userptr-smem.htm=
l">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_104170v1/shard-skl3/igt@prime_mmap@test_userptr@test_userp=
tr-smem.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-iclb2/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/5614">i915#5614</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_104170v1/shard-iclb7/igt@gem_exec_balancer@parallel-keep-in=
-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-iclb6/igt@gem_exec_balancer@parallel-out-fence.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i9=
15#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_104170v1/shard-iclb2/igt@gem_exec_balancer@parallel-out-fence.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5=
614">i915#5614</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2852">i915=
#2852</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_104170v1/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-deep-color:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11677/shard-iclb7/igt@kms_color@pipe-b-deep-color.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109278">fdo#109278<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6029">i915=
#6029</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_104170v1/shard-iclb4/igt@kms_color@pipe-b-deep-color.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109278">fdo#109278<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915=
#3555</a>) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11677/shard-tglb3/igt@kms_color@pipe-b-deep-color.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6029">i915#6029</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1041=
70v1/shard-tglb5/igt@kms_color@pipe-b-deep-color.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555</a>) +1 si=
milar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-limited-range:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-skl4/igt@kms_color_chamelium@pipe-c-ctm-limited-range.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111827">fdo#111827</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_104170v1/shard-skl2/igt@kms_color_chamelium@pipe-c-c=
tm-limited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111827">fdo#111827</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-skl1/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cu=
rsor-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1888">i915#1888</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-skl8/igt@kms_cursor_legacy=
@2x-nonblocking-modeset-vs-cursor-atomic.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/4767">i915#4767</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170=
v1/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_104170v1/shard-iclb7/igt@kms_psr2_sf@overlay-primary-update=
-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-iclb1/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo=
#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/65=
8">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_104170v1/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920"=
>i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-x-tiled-reflect-x-0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-skl1/igt@kms_rotation_crc@primary-x-tiled-reflect-x-0.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_104170v1/shard-skl8/igt@kms_rotation_crc@primary-x-tiled-ref=
lect-x-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11677/shard-skl4/igt@kms_sysfs_edid_timing.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2">IGT#2</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4170v1/shard-skl2/igt@kms_sysfs_edid_timing.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2">IGT#2</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11677/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-kbl3/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11677/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-kbl6/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11677/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-kbl6/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11677/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-kbl3/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_116=
77/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_11677/shard-kbl6/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/=
shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11677/shard-kbl1/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11677/sha=
rd-kbl4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>) -&gt; (<a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-k=
bl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_104170v1/shard-kbl4/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v=
1/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl4/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_104170v1/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl6/igt@runner@=
aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_104170v1/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl6/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_104170v1/shard-kbl7/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/sh=
ard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl7/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
4170v1/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_104170v1/shard-kbl7/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_104170v1/shard-kbl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#=
5257</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/92">i=
915#92</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11677 -&gt; Patchwork_104170v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11677: e98617aab83890ce7097639943e65ce1420f8983 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6481: f2a9c2e6f6f7aa97e5d92274f20aa698087359c4 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_104170v1: e98617aab83890ce7097639943e65ce1420f8983 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1302279148616620799==--
