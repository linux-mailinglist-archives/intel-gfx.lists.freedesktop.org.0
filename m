Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FEE5FBEB6
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 02:37:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8483F10E0FD;
	Wed, 12 Oct 2022 00:37:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4A80910E0FD;
 Wed, 12 Oct 2022 00:37:08 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 41172A8830;
 Wed, 12 Oct 2022 00:37:08 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0557257423699580515=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
Date: Wed, 12 Oct 2022 00:37:08 -0000
Message-ID: <166553502823.12984.4953271480055118747@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20221011153851.3781507-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20221011153851.3781507-1-radhakrishna.sripada@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/2=5D_drm/i915=3A_Add_intel=5F_prefi?=
 =?utf-8?q?x_to_struct_ip=5Fversion?=
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

--===============0557257423699580515==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/2] drm/i915: Add intel_ prefix to struct ip_version
URL   : https://patchwork.freedesktop.org/series/109588/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_12234_full -> Patchwork_109588v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_109588v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_109588v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_109588v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@ring_submission:
    - shard-skl:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl9/igt@i915_selftest@live@ring_submission.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
    - shard-skl:          [PASS][2] -> [INCOMPLETE][3]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html

  
Known issues
------------

  Here are the changes found in Patchwork_109588v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-skl:          ([PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [FAIL][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28]) ([i915#5032]) -> ([PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl9/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl9/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl9/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl6/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl5/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl5/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl3/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl3/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl3/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl1/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl10/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl10/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl10/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl3/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl3/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl10/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl10/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl3/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl6/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl10/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl10/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl7/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl7/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl7/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl7/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl7/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl9/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl9/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl9/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl1/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][54] -> [SKIP][55] ([i915#658])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-iclb2/igt@feature_discovery@psr2.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-iclb1/igt@feature_discovery@psr2.html

  * igt@gem_busy@close-race:
    - shard-snb:          [PASS][56] -> [TIMEOUT][57] ([i915#5748])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-snb5/igt@gem_busy@close-race.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-snb4/igt@gem_busy@close-race.html

  * igt@gem_ccs@block-copy-inplace:
    - shard-tglb:         NOTRUN -> [SKIP][58] ([i915#3555] / [i915#5325])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@gem_ccs@block-copy-inplace.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-tglb:         [PASS][59] -> [FAIL][60] ([i915#6268])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-tglb3/igt@gem_ctx_exec@basic-nohangcheck.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_persistence@hang:
    - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271]) +47 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl10/igt@gem_ctx_persistence@hang.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][62] -> [FAIL][63] ([i915#2846])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-glk7/igt@gem_exec_fair@basic-deadline.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-glk3/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-skl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#4613])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl10/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-tglb:         NOTRUN -> [SKIP][65] ([i915#4613])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#4613]) +2 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-apl2/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@random:
    - shard-glk:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#4613])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-glk5/igt@gem_lmem_swapping@random.html

  * igt@gem_userptr_blits@input-checking:
    - shard-skl:          NOTRUN -> [DMESG-WARN][68] ([i915#4991])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl10/igt@gem_userptr_blits@input-checking.html

  * igt@gen7_exec_parse@basic-rejected:
    - shard-tglb:         NOTRUN -> [SKIP][69] ([fdo#109289])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@gen7_exec_parse@basic-rejected.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-apl:          NOTRUN -> [FAIL][70] ([i915#4275])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-apl2/igt@i915_pm_dc@dc9-dpms.html

  * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:
    - shard-skl:          [PASS][71] -> [FAIL][72] ([i915#2521])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][73] ([i915#5286]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@linear-16bpp-rotate-180:
    - shard-iclb:         [PASS][74] -> [FAIL][75] ([i915#1888] / [i915#7036])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-iclb2/igt@kms_big_fb@linear-16bpp-rotate-180.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-iclb7/igt@kms_big_fb@linear-16bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-addfb:
    - shard-snb:          [PASS][76] -> [SKIP][77] ([fdo#109271]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-snb4/igt@kms_big_fb@x-tiled-addfb.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-snb6/igt@kms_big_fb@x-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglb:         NOTRUN -> [SKIP][78] ([fdo#111615])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][79] ([fdo#111615] / [i915#3689])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#3886]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl10/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#3886])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-glk5/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#3886]) +5 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-apl6/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][83] ([i915#3689] / [i915#6095])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs.html

  * igt@kms_ccs@pipe-d-bad-rotation-90-4_tiled_dg2_rc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][84] ([i915#3689]) +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@kms_ccs@pipe-d-bad-rotation-90-4_tiled_dg2_rc_ccs.html

  * igt@kms_chamelium@dp-hpd-storm:
    - shard-tglb:         NOTRUN -> [SKIP][85] ([fdo#109284] / [fdo#111827])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@kms_chamelium@dp-hpd-storm.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-skl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [fdo#111827])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl10/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_chamelium@hdmi-hpd-storm:
    - shard-glk:          NOTRUN -> [SKIP][87] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-glk5/igt@kms_chamelium@hdmi-hpd-storm.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-apl2/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color@ctm-0-75:
    - shard-snb:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#3546])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-snb6/igt@kms_color@ctm-0-75.html

  * igt@kms_content_protection@atomic@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [INCOMPLETE][90] ([i915#7121])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-apl2/igt@kms_content_protection@atomic@pipe-a-dp-1.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-skl:          NOTRUN -> [FAIL][91] ([i915#2346])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][92] ([fdo#109274] / [fdo#111825] / [i915#3637])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][93] -> [FAIL][94] ([i915#79]) +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-suspend@b-vga1:
    - shard-snb:          [PASS][95] -> [INCOMPLETE][96] ([i915#4839] / [i915#4939])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-snb7/igt@kms_flip@flip-vs-suspend@b-vga1.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-snb6/igt@kms_flip@flip-vs-suspend@b-vga1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-skl:          [PASS][97] -> [FAIL][98] ([i915#2122]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-tglb:         NOTRUN -> [SKIP][99] ([i915#2587] / [i915#2672])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][100] ([i915#3555]) +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode:
    - shard-iclb:         NOTRUN -> [SKIP][101] ([i915#2587] / [i915#2672]) +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][102] ([i915#2672]) +5 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode:
    - shard-iclb:         NOTRUN -> [SKIP][103] ([i915#2672] / [i915#3555])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-glk:          NOTRUN -> [SKIP][104] ([fdo#109271]) +37 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-glk5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:
    - shard-apl:          NOTRUN -> [SKIP][105] ([fdo#109271]) +100 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-apl2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-render:
    - shard-tglb:         NOTRUN -> [SKIP][106] ([fdo#109280] / [fdo#111825]) +4 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-render.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][107] ([i915#4573]) +2 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-apl2/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-edp-1:
    - shard-skl:          NOTRUN -> [FAIL][108] ([i915#4573]) +2 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl10/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-edp-1.html

  * igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1:
    - shard-iclb:         [PASS][109] -> [SKIP][110] ([i915#5176]) +4 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-iclb6/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-edp-1:
    - shard-tglb:         NOTRUN -> [SKIP][111] ([i915#5235]) +3 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-edp-1.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][112] ([fdo#109271] / [i915#658])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-glk5/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][113] ([fdo#109271] / [i915#658])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl10/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-apl:          NOTRUN -> [SKIP][114] ([fdo#109271] / [i915#658]) +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-apl2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-tglb:         NOTRUN -> [SKIP][115] ([i915#7037])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [PASS][116] -> [SKIP][117] ([fdo#109441]) +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-iclb2/igt@kms_psr@psr2_primary_blt.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-iclb7/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-apl:          [PASS][118] -> [DMESG-WARN][119] ([i915#180])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@sysfs_clients@sema-10:
    - shard-glk:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#2994])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-glk5/igt@sysfs_clients@sema-10.html

  
#### Possible fixes ####

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-iclb:         [SKIP][121] ([i915#4525]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-iclb5/igt@gem_exec_balancer@parallel-contexts.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [FAIL][123] ([i915#2842]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][125] ([i915#2190]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-tglb7/igt@gem_huc_copy@huc-copy.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-tglb2/igt@gem_huc_copy@huc-copy.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [DMESG-WARN][127] ([i915#5566] / [i915#716]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-apl8/igt@gen9_exec_parse@allowed-single.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-apl7/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@live@execlists:
    - shard-skl:          [INCOMPLETE][129] -> [PASS][130] +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl10/igt@i915_selftest@live@execlists.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl9/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-skl:          [DMESG-FAIL][131] ([i915#5334]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl10/igt@i915_selftest@live@gt_heartbeat.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl9/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_suspend@sysfs-reader:
    - shard-snb:          [DMESG-WARN][133] ([i915#5090]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-snb4/igt@i915_suspend@sysfs-reader.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-snb4/igt@i915_suspend@sysfs-reader.html

  * igt@kms_addfb_basic@legacy-format:
    - shard-tglb:         [INCOMPLETE][135] ([i915#6987]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-tglb5/igt@kms_addfb_basic@legacy-format.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-tglb3/igt@kms_addfb_basic@legacy-format.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1:
    - shard-apl:          [DMESG-WARN][137] ([i915#180]) -> [PASS][138] +2 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-apl8/igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-apl6/igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1.html

  * igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size:
    - shard-skl:          [FAIL][139] ([i915#2346]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl1/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl1/igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:
    - shard-glk:          [FAIL][141] ([i915#2346]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][143] ([i915#79]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:
    - shard-glk:          [FAIL][145] ([i915#79]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [FAIL][147] ([i915#2122]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][149] ([fdo#109441]) -> [PASS][150] +2 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglb:         [SKIP][151] ([i915#5519]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-tglb7/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-tglb3/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_vblank@pipe-a-ts-continuation-idle:
    - shard-snb:          [SKIP][153] ([fdo#109271]) -> [PASS][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-snb6/igt@kms_vblank@pipe-a-ts-continuation-idle.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-snb6/igt@kms_vblank@pipe-a-ts-continuation-idle.html

  * igt@perf_pmu@module-unload:
    - shard-skl:          [DMESG-WARN][155] ([i915#1982]) -> [PASS][156]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl7/igt@perf_pmu@module-unload.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl10/igt@perf_pmu@module-unload.html

  
#### Warnings ####

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [INCOMPLETE][157] -> [FAIL][158] ([i915#2410])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-tglb2/igt@gem_ctx_persistence@many-contexts.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@gem_ctx_persistence@many-contexts.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][159] ([i915#588]) -> [SKIP][160] ([i915#658])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:
    - shard-skl:          [INCOMPLETE][161] -> [FAIL][162] ([i915#2346])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-iclb:         [SKIP][163] ([i915#2920]) -> [SKIP][164] ([fdo#111068] / [i915#658])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][165], [FAIL][166], [FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312]) -> ([FAIL][171], [FAIL][172], [FAIL][173]) ([i915#3002] / [i915#4312])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-apl8/igt@runner@aborted.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-apl6/igt@runner@aborted.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-apl1/igt@runner@aborted.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-apl1/igt@runner@aborted.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-apl1/igt@runner@aborted.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-apl8/igt@runner@aborted.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-apl6/igt@runner@aborted.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-apl1/igt@runner@aborted.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-apl6/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3546]: https://gitlab.freedesktop.org/drm/intel/issues/3546
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#4275]: https://gitlab.freedesktop.org/drm/intel/issues/4275
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4839]: https://gitlab.freedesktop.org/drm/intel/issues/4839
  [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
  [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
  [i915#5032]: https://gitlab.freedesktop.org/drm/intel/issues/5032
  [i915#5090]: https://gitlab.freedesktop.org/drm/intel/issues/5090
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5519]: https://gitlab.freedesktop.org/drm/intel/issues/5519
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5748]: https://gitlab.freedesktop.org/drm/intel/issues/5748
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6987]: https://gitlab.freedesktop.org/drm/intel/issues/6987
  [i915#7036]: https://gitlab.freedesktop.org/drm/intel/issues/7036
  [i915#7037]: https://gitlab.freedesktop.org/drm/intel/issues/7037
  [i915#7121]: https://gitlab.freedesktop.org/drm/intel/issues/7121
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_12234 -> Patchwork_109588v1

  CI-20190529: 20190529
  CI_DRM_12234: e4a9f2a2d42b1cce6015d4397360c63c01a8ed35 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7009: cf55acdeea3747c668074a8734029364960e5f5e @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_109588v1: e4a9f2a2d42b1cce6015d4397360c63c01a8ed35 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/index.html

--===============0557257423699580515==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/2] drm/i915: Add =
intel_ prefix to struct ip_version</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/109588/">https://patchwork.freedesktop.org/series/109588/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_109588v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109588v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_12234_full -&gt; Patchwork_109588v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_109588v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_109588v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
109588v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@ring_submission:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-skl9/igt@i915_selftest@live@ring_sub=
mission.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_109588v1/shard-skl3/igt@kms_flip@flip-vs-suspend-interruptible@a-ed=
p1.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_109588v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12234/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl9/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
12234/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_12234/shard-skl7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/sha=
rd-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_12234/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_12234/shard-skl5/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_12234/shard-skl5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl5/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234=
/shard-skl5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_12234/shard-skl3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-sk=
l3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
2234/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_12234/shard-skl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-skl10/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/sha=
rd-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_12234/shard-skl10/boot.html">PASS</a>) (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5032">i915#5032</a>) -&gt; (<a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_109588v1/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/sh=
ard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_109588v1/shard-skl1/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl10/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
09588v1/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_109588v1/shard-skl3/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl3=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_109588v1/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl10/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/=
shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109588v1/shard-skl6/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl6/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_109588v1/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_109588v1/shard-skl7/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl=
7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_109588v1/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl7/boot.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/=
shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_109588v1/shard-skl9/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl9/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
109588v1/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_109588v1/shard-skl1/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl9=
/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard=
-iclb1/igt@feature_discovery@psr2.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-snb5/igt@gem_busy@close-race.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-snb=
4/igt@gem_busy@close-race.html">TIMEOUT</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/5748">i915#5748</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-inplace:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@gem_ccs@block-copy-inplace=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5325">i915#5325</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-tglb3/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588=
v1/shard-tglb7/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-skl10/igt@gem_ctx_persistence@hang.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a>) +47 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-glk7/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/=
shard-glk3/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-skl10/igt@gem_lmem_swapping@heavy-ve=
rify-multi-ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@gem_lmem_swapping@parallel=
-multi.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-apl2/igt@gem_lmem_swapping@parallel-=
random-verify.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/4613">i915#4613</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-glk5/igt@gem_lmem_swapping@random.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-skl10/igt@gem_userptr_blits@input-ch=
ecking.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4991">i915#4991</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-rejected:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@gen7_exec_parse@basic-reje=
cted.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-apl2/igt@i915_pm_dc@dc9-dpms.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4275">i=
915#4275</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe=
-a-edp-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_109588v1/shard-skl9/igt@kms_async_flips@alternate-sync-asy=
nc-flip@pipe-a-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2521">i915#2521</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@kms_big_fb@4-tiled-32bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/5286">i915#5286</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-180:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-iclb2/igt@kms_big_fb@linear-16bpp-rotate-180.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
9588v1/shard-iclb7/igt@kms_big_fb@linear-16bpp-rotate-180.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7036">i915#=
7036</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-addfb:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-snb4/igt@kms_big_fb@x-tiled-addfb.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shar=
d-snb6/igt@kms_big_fb@x-tiled-addfb.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@kms_big_fb@yf-tiled-max-hw=
-stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@kms_ccs@pipe-a-ccs-on-anot=
her-bo-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111615">fdo#111615</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/3689">i915#3689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-skl10/igt@kms_ccs@pipe-a-crc-primary=
-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-glk5/igt@kms_ccs@pipe-b-bad-rotation=
-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-apl6/igt@kms_ccs@pipe-c-crc-primary-=
basic-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +5 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@kms_ccs@pipe-c-crc-sprite-=
planes-basic-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-rotation-90-4_tiled_dg2_rc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@kms_ccs@pipe-d-bad-rotatio=
n-90-4_tiled_dg2_rc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/3689">i915#3689</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@kms_chamelium@dp-hpd-storm=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-skl10/igt@kms_chamelium@hdmi-hpd-ena=
ble-disable-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-glk5/igt@kms_chamelium@hdmi-hpd-stor=
m.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-apl2/igt@kms_chamelium@vga-hpd.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111827">fdo#111827</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@ctm-0-75:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-snb6/igt@kms_color@ctm-0-75.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
3546">i915#3546</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-apl2/igt@kms_content_protection@atom=
ic@pipe-a-dp-1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/7121">i915#7121</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-skl6/igt@kms_cursor_legacy@flip-vs-c=
ursor@atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@kms_flip@2x-wf_vblank-ts-c=
heck-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3637">i915#3637</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_109588v1/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79=
</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-snb7/igt@kms_flip@flip-vs-suspend@b-vga1.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588=
v1/shard-snb6/igt@kms_flip@flip-vs-suspend@b-vga1.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4839">i915#4839</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4939">i915#49=
39</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-skl5/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_109588v1/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#=
2122</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling=
@pipe-a-valid-mode:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftileccs-to-64bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#258=
7</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i9=
15#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling@pi=
pe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-linear-to-16bpp-linear-downscaling@pipe-a-default-mode.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555">i915#3555=
</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling@pi=
pe-a-valid-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-iclb7/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-downscaling@pipe-a-valid-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2587">i915#2587</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#=
2672</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling@pipe=
-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-iclb3/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling@pipe-a-default-mode.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i915#2672</=
a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscal=
ing@pipe-a-default-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-iclb2/igt@kms_flip_scaled_crc@flip-6=
4bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling@pipe-a-default-mode.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2672">i91=
5#2672</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/355=
5">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-glk5/igt@kms_frontbuffer_tracking@fb=
cpsr-2p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +37 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-apl2/igt@kms_frontbuffer_tracking@ps=
r-2p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +100 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-spr-indfb-draw-render.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +4 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-apl2/igt@kms_plane_alpha_blend@alpha=
-opaque-fb@pipe-a-dp-1.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/4573">i915#4573</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-edp-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-skl10/igt@kms_plane_alpha_blend@alph=
a-transparent-fb@pipe-c-edp-1.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/4573">i915#4573</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-=
b-edp-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-iclb6/igt@kms_plane_scaling@plane-downscale-with-pixel-=
format-factor-0-5@pipe-b-edp-1.html">PASS</a> -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-iclb2/igt@kms_plane_s=
caling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915=
#5176</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-c-edp-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25@pipe-c-edp-1.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-glk5/igt@kms_psr2_sf@overlay-plane-u=
pdate-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-skl10/igt@kms_psr2_sf@overlay-primar=
y-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-apl2/igt@kms_psr2_sf@primary-plane-u=
pdate-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/658">i915#658</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-tglb5/igt@kms_psr2_su@page_flip-p010=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/7037">i915#7037</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-iclb2/igt@kms_psr@psr2_primary_blt.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/sha=
rd-iclb7/igt@kms_psr@psr2_primary_blt.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-apl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_109588v1/shard-apl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_109588v1/shard-glk5/igt@sysfs_clients@sema-10.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/2994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-iclb5/igt@gem_exec_balancer@parallel-contexts.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i91=
5#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_109588v1/shard-iclb2/igt@gem_exec_balancer@parallel-contexts.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-apl8/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_109588v1/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/=
shard-tglb2/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-apl8/igt@gen9_exec_parse@allowed-single.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i91=
5#5566</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716=
">i915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_109588v1/shard-apl7/igt@gen9_exec_parse@allowed-single.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-skl10/igt@i915_selftest@live@execlists.html">INCOMPLETE=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_10=
9588v1/shard-skl9/igt@i915_selftest@live@execlists.html">PASS</a> +1 simila=
r issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-skl10/igt@i915_selftest@live@gt_heartbeat.html">DMESG-F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5334">i=
915#5334</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_109588v1/shard-skl9/igt@i915_selftest@live@gt_heartbeat.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-snb4/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5090">i915#509=
0</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
109588v1/shard-snb4/igt@i915_suspend@sysfs-reader.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@legacy-format:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-tglb5/igt@kms_addfb_basic@legacy-format.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6987">i91=
5#6987</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_109588v1/shard-tglb3/igt@kms_addfb_basic@legacy-format.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-apl8/igt@kms_cursor_crc@cursor-suspend@pipe-b-dp-1.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_109588v1/shard-apl6/igt@kms_cursor_crc@cursor-suspend@pipe-b-=
dp-1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor@atomic-transitions-varying=
-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-skl1/igt@kms_cursor_legacy@basic-flip-after-cursor@atom=
ic-transitions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-skl1/igt@kms_curso=
r_legacy@basic-flip-after-cursor@atomic-transitions-varying-size.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-glk6/igt@kms_cursor_legacy@=
flip-vs-cursor@atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-skl3/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i91=
5#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_109588v1/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">=
i915#79</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_109588v1/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@c-e=
dp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_109588v1/shard-skl9/igt@kms_flip@plain-flip-ts-check-inte=
rruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109=
441</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_109588v1/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-tglb7/igt@kms_psr_stress_test@invalidate-primary-flip-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5519">i915#5519</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_109588v1/shard-tglb3/igt@kms_psr_stress_test@invalidat=
e-primary-flip-overlay.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-idle:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-snb6/igt@kms_vblank@pipe-a-ts-continuation-idle.html">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">=
fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_109588v1/shard-snb6/igt@kms_vblank@pipe-a-ts-continuation-idle.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-skl7/igt@perf_pmu@module-unload.html">DMESG-WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109=
588v1/shard-skl10/igt@perf_pmu@module-unload.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-tglb2/igt@gem_ctx_persistence@many-contexts.html">INCOM=
PLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_109588v1/shard-tglb5/igt@gem_ctx_persistence@many-contexts.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2410">i915#24=
10</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
09588v1/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor@atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor@atomic-transi=
tions.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_109588v1/shard-skl6/igt@kms_cursor_legacy@flip-vs-curso=
r@atomic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_12234/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_109588v1/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-=
dmg-area.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_12234/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-apl6/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_12234/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-apl1/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_12234/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12234/shard-apl8/igt@runner@aborted.=
html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/4312">i915#4312</a>) -&gt; (<a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-apl6/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_109588v1/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_109588v1/shard-apl6/igt@runner@a=
borted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_12234 -&gt; Patchwork_109588v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_12234: e4a9f2a2d42b1cce6015d4397360c63c01a8ed35 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7009: cf55acdeea3747c668074a8734029364960e5f5e @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_109588v1: e4a9f2a2d42b1cce6015d4397360c63c01a8ed35 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============0557257423699580515==--
