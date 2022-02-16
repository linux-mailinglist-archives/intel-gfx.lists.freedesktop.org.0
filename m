Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBEFE4B803B
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 06:35:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD46310E662;
	Wed, 16 Feb 2022 05:35:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4FD8310E5DA;
 Wed, 16 Feb 2022 05:35:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4A93AA77A5;
 Wed, 16 Feb 2022 05:35:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4112772726030076853=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Qing Wang" <wangqing@vivo.com>
Date: Wed, 16 Feb 2022 05:35:38 -0000
Message-ID: <164498973826.16094.9437941928229893388@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <1644481802-14578-1-git-send-email-wangqing@vivo.com>
In-Reply-To: <1644481802-14578-1-git-send-email-wangqing@vivo.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZ3B1?=
 =?utf-8?q?=3A_drm=3A_i915=3A_use_time=5Fafter=5Feq=28=29_instead_of_jiffi?=
 =?utf-8?q?es_judgment?=
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

--===============4112772726030076853==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: gpu: drm: i915: use time_after_eq() instead of jiffies judgment
URL   : https://patchwork.freedesktop.org/series/100112/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11230_full -> Patchwork_22269_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22269_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22269_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22269_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_flip@flip-vs-suspend@a-vga1:
    - shard-snb:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-snb6/igt@kms_flip@flip-vs-suspend@a-vga1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-snb5/igt@kms_flip@flip-vs-suspend@a-vga1.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_flush@basic-uc-pro-default:
    - {shard-rkl}:        NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-5/igt@gem_exec_flush@basic-uc-pro-default.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - {shard-rkl}:        NOTRUN -> [INCOMPLETE][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-5/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@i915_selftest@mock@hugepages:
    - {shard-dg1}:        NOTRUN -> [INCOMPLETE][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-dg1-18/igt@i915_selftest@mock@hugepages.html

  
Known issues
------------

  Here are the changes found in Patchwork_22269_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - {shard-rkl}:        ([PASS][6], [PASS][7], [PASS][8], [FAIL][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21]) -> ([PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-6/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-6/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-6/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-2/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-2/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-6/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-6/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-5/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-5/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-5/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-5/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-5/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-4/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-2/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][35] ([i915#4991])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-apl2/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@legacy-engines-hostile@bsd1:
    - shard-tglb:         [PASS][36] -> [FAIL][37] ([i915#2410])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-tglb3/igt@gem_ctx_persistence@legacy-engines-hostile@bsd1.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-tglb2/igt@gem_ctx_persistence@legacy-engines-hostile@bsd1.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][38] -> [FAIL][39] ([i915#232])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-tglb6/igt@gem_eio@kms.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-tglb5/igt@gem_eio@kms.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [PASS][40] -> [INCOMPLETE][41] ([i915#4547])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-skl1/igt@gem_exec_capture@pi@rcs0.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-skl8/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][42] ([i915#2842])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-tglb5/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][43] -> [FAIL][44] ([i915#2842]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][45] -> [FAIL][46] ([i915#2842]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][47] -> [FAIL][48] ([i915#2849])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-skl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#2190])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-skl6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-kbl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#4613])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-kbl4/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-iclb:         NOTRUN -> [SKIP][51] ([i915#3297])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-iclb6/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen3_mixed_blits:
    - shard-tglb:         NOTRUN -> [SKIP][52] ([fdo#109289])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-tglb5/igt@gen3_mixed_blits.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109289]) +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-iclb6/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-kbl:          NOTRUN -> [FAIL][54] ([i915#454])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-kbl4/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][55] -> [FAIL][56] ([i915#454])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [PASS][57] -> [INCOMPLETE][58] ([i915#3921])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-snb4/igt@i915_selftest@live@hangcheck.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-snb6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-iclb:         NOTRUN -> [SKIP][59] ([i915#404])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-iclb3/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#3777]) +4 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-apl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][61] ([fdo#110725] / [fdo#111614])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-iclb3/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][62] ([i915#3763])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#3777]) +4 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-skl10/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#110723])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-iclb3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#3886]) +3 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-kbl4/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][66] ([fdo#109278] / [i915#3886]) +3 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-iclb3/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#3886]) +6 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-apl2/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#3886]) +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-skl6/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][69] ([fdo#111615] / [i915#3689])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-tglb5/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs.html

  * igt@kms_chamelium@dp-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-kbl3/igt@kms_chamelium@dp-hpd-for-each-pipe.html

  * igt@kms_chamelium@hdmi-cmp-planar-formats:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-iclb6/igt@kms_chamelium@hdmi-cmp-planar-formats.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-apl1/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color@pipe-b-ctm-green-to-red:
    - shard-skl:          [PASS][73] -> [DMESG-WARN][74] ([i915#1982])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-skl9/igt@kms_color@pipe-b-ctm-green-to-red.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-skl10/igt@kms_color@pipe-b-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
    - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-skl6/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-iclb:         NOTRUN -> [SKIP][76] ([i915#3116])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-iclb3/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][77] ([i915#1319])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-apl2/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-random:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#109278] / [fdo#109279]) +2 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-512x170-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][79] -> [DMESG-WARN][80] ([i915#180]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([fdo#109278]) +12 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding.html

  * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][82] ([fdo#109274] / [fdo#109278])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-iclb6/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#533]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-apl1/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][84] -> [INCOMPLETE][85] ([i915#180] / [i915#1982])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([fdo#109274] / [fdo#111825]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-tglb5/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html

  * igt@kms_flip@2x-flip-vs-panning-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109274]) +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-iclb3/igt@kms_flip@2x-flip-vs-panning-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:
    - shard-iclb:         [PASS][88] -> [SKIP][89] ([i915#3701]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
    - shard-kbl:          NOTRUN -> [SKIP][90] ([fdo#109271]) +97 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
    - shard-skl:          NOTRUN -> [SKIP][91] ([fdo#109271]) +55 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-skl6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-iclb:         NOTRUN -> [SKIP][92] ([fdo#109280]) +5 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         NOTRUN -> [SKIP][93] ([fdo#109280] / [fdo#111825]) +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-tglb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][94] -> [FAIL][95] ([i915#1188])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][96] -> [DMESG-WARN][97] ([i915#180]) +6 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_invalid_mode@clock-too-high:
    - shard-iclb:         NOTRUN -> [SKIP][98] ([i915#4278])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-iclb3/igt@kms_invalid_mode@clock-too-high.html

  * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
    - shard-apl:          NOTRUN -> [SKIP][99] ([fdo#109271]) +70 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-apl1/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-kbl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#533])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-kbl3/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][101] ([fdo#109271] / [i915#533])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-apl:          NOTRUN -> [FAIL][102] ([fdo#108145] / [i915#265])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][103] ([i915#265])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][104] ([fdo#108145] / [i915#265]) +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][105] -> [FAIL][106] ([fdo#108145] / [i915#265])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-b-tiling-y:
    - shard-tglb:         NOTRUN -> [SKIP][107] ([i915#3536])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-tglb5/igt@kms_plane_lowres@pipe-b-tiling-y.html

  * igt@kms_plane_lowres@pipe-c-tiling-x:
    - shard-iclb:         NOTRUN -> [SKIP][108] ([i915#3536])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-iclb3/igt@kms_plane_lowres@pipe-c-tiling-x.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-kbl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#658])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-kbl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-skl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#658])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-skl6/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-tglb:         NOTRUN -> [FAIL][111] ([i915#132] / [i915#3467])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-tglb5/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][112] -> [SKIP][113] ([fdo#109441])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][114] -> [FAIL][115] ([i915#31])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-glk7/igt@kms_setmode@basic.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-glk2/igt@kms_setmode@basic.html

  * igt@nouveau_crc@pipe-a-source-outp-inactive:
    - shard-iclb:         NOTRUN -> [SKIP][116] ([i915#2530])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-iclb6/igt@nouveau_crc@pipe-a-source-outp-inactive.html

  * igt@nouveau_crc@pipe-c-source-outp-inactive:
    - shard-tglb:         NOTRUN -> [SKIP][117] ([i915#2530])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-tglb5/igt@nouveau_crc@pipe-c-source-outp-inactive.html

  * igt@perf_pmu@rc6-suspend:
    - shard-skl:          [PASS][118] -> [INCOMPLETE][119] ([i915#4939])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-skl1/igt@perf_pmu@rc6-suspend.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-skl9/igt@perf_pmu@rc6-suspend.html

  * igt@prime_nv_api@i915_nv_double_import:
    - shard-iclb:         NOTRUN -> [SKIP][120] ([fdo#109291])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-iclb3/igt@prime_nv_api@i915_nv_double_import.html

  * igt@sysfs_clients@fair-7:
    - shard-iclb:         NOTRUN -> [SKIP][121] ([i915#2994])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-iclb3/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@pidname:
    - shard-apl:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#2994]) +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-apl2/igt@sysfs_clients@pidname.html

  
#### Possible fixes ####

  * igt@fbdev@unaligned-write:
    - {shard-rkl}:        [SKIP][123] ([i915#2582]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/igt@fbdev@unaligned-write.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-6/igt@fbdev@unaligned-write.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [FAIL][125] ([i915#2842]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [FAIL][127] ([i915#2842]) -> [PASS][128] +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs0.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - {shard-rkl}:        [INCOMPLETE][129] ([i915#5080]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/igt@gem_exec_whisper@basic-queues-priority-all.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-1/igt@gem_exec_whisper@basic-queues-priority-all.html
    - shard-glk:          [DMESG-WARN][131] ([i915#118]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-glk6/igt@gem_exec_whisper@basic-queues-priority-all.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-glk4/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - {shard-dg1}:        [DMESG-WARN][133] ([i915#4936]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - {shard-rkl}:        [SKIP][135] ([i915#1397]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-2/igt@i915_pm_rpm@dpms-lpsp.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - {shard-rkl}:        [SKIP][137] ([i915#1845]) -> [PASS][138] +19 similar issues
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-270:
    - {shard-rkl}:        ([SKIP][139], [SKIP][140]) ([i915#1845]) -> [PASS][141]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-4/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-6/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:
    - {shard-rkl}:        [SKIP][142] ([i915#1845] / [i915#4098]) -> [PASS][143] +3 similar issues
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-6/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html

  * igt@kms_color@pipe-b-ctm-blue-to-red:
    - {shard-rkl}:        [SKIP][144] ([i915#1149] / [i915#1849] / [i915#4070]) -> [PASS][145] +1 similar issue
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/igt@kms_color@pipe-b-ctm-blue-to-red.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-6/igt@kms_color@pipe-b-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-random:
    - {shard-rkl}:        ([SKIP][146], [SKIP][147]) ([fdo#112022] / [i915#4070]) -> [PASS][148]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-4/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-random:
    - {shard-rkl}:        [SKIP][149] ([fdo#112022] / [i915#4070]) -> [PASS][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-256x256-random.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-256x256-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][151] ([i915#180]) -> [PASS][152] +6 similar issues
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/s

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/index.html

--===============4112772726030076853==
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
<tr><td><b>Series:</b></td><td>gpu: drm: i915: use time_after_eq() instead =
of jiffies judgment</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/100112/">https://patchwork.freedesktop.org/series/100112/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22269/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22269/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11230_full -&gt; Patchwork_22269_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22269_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_22269_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22269_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_flip@flip-vs-suspend@a-vga1:<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-snb6/igt@kms_flip@flip-vs-suspend@a-vga1.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/=
shard-snb5/igt@kms_flip@flip-vs-suspend@a-vga1.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-rkl-5/igt@gem_exec_flush@basic-uc-pro-d=
efault.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-rkl-5/igt@gem_exec_suspend@basic-s3@sme=
m.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@hugepages:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-dg1-18/igt@i915_selftest@mock@hugepages=
.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22269_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11230/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-6/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11230/shard-rkl-5/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_112=
30/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_11230/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/sha=
rd-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_11230/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-2/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl=
-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/boo=
t.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22269/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard=
-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22269/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-5/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/sh=
ard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22269/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-4/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269=
/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_22269/shard-rkl-1/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-1/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
269/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-rkl-1/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-apl2/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hostile@bsd1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-tglb3/igt@gem_ctx_persistence@legacy-engines-hostile@bs=
d1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_22269/shard-tglb2/igt@gem_ctx_persistence@legacy-engines-hostile=
@bsd1.html">FAIL</a> ([i915#2410])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-tglb6/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-tglb5/igt@gem=
_eio@kms.html">FAIL</a> ([i915#232])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-skl1/igt@gem_exec_capture@pi@rcs0.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-s=
kl8/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-tglb5/igt@gem_exec_fair@basic-none-solo=
@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
269/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i91=
5#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/s=
hard-kbl3/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_222=
69/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#=
2849])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-skl6/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-kbl4/igt@gem_lmem_swapping@heavy-random=
.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-iclb6/igt@gem_userptr_blits@unsync-unma=
p-cycles.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen3_mixed_blits:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-tglb5/igt@gen3_mixed_blits.html">SKIP</=
a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-iclb6/igt@gen7_exec_parse@oacontrol-tra=
cking.html">SKIP</a> ([fdo#109289]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-kbl4/igt@i915_pm_dc@dc6-dpms.html">FAIL=
</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-iclb4/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-iclb4/=
igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-snb4/igt@i915_selftest@live@hangcheck.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/sha=
rd-snb6/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#3921])=
</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-iclb3/igt@kms_atomic@plane-primary-over=
lay-mutable-zpos.html">SKIP</a> ([i915#404])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-apl1/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3=
777]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-iclb3/igt@kms_big_fb@y-tiled-64bpp-rota=
te-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-str=
ide-64bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3763])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:=
</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-skl10/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915=
#3777]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-iclb3/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-kbl4/igt@kms_ccs@pipe-a-bad-rotation-90=
-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-iclb3/igt@kms_ccs@pipe-a-ccs-on-another=
-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886]) +3 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-apl2/igt@kms_ccs@pipe-a-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +6 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-skl6/igt@kms_ccs@pipe-b-ccs-on-another-=
bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-tglb5/igt@kms_ccs@pipe-d-ccs-on-another=
-bo-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-kbl3/igt@kms_chamelium@dp-hpd-for-each-=
pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-cmp-planar-formats:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-iclb6/igt@kms_chamelium@hdmi-cmp-planar=
-formats.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-apl1/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-green-to-red:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-skl9/igt@kms_color@pipe-b-ctm-green-to-red.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2226=
9/shard-skl10/igt@kms_color@pipe-b-ctm-green-to-red.html">DMESG-WARN</a> ([=
i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-skl6/igt@kms_color_chamelium@pipe-d-ctm=
-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-iclb3/igt@kms_content_protection@dp-mst=
-type-0.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-apl2/igt@kms_content_protection@lic.htm=
l">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-=
512x170-random.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +2 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2269/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</=
a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-=
64x21-sliding.html">SKIP</a> ([fdo#109278]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-iclb6/igt@kms_cursor_legacy@2x-long-non=
blocking-modeset-vs-cursor-atomic.html">SKIP</a> ([fdo#109274] / [fdo#10927=
8])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-apl1/igt@kms_cursor_legacy@pipe-d-tortu=
re-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-=
apl1/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915=
#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-tglb5/igt@kms_flip@2x-dpms-vs-vblank-ra=
ce-interruptible.html">SKIP</a> ([fdo#109274] / [fdo#111825]) +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-iclb3/igt@kms_flip@2x-flip-vs-panning-i=
nterruptible.html">SKIP</a> ([fdo#109274]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp=
-ytile-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22269/shard-iclb2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#3701]) +1 simil=
ar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +97 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-skl6/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-pri-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +55 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-iclb6/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#109280]) +5 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-tglb5/igt@kms_frontbuffer_tracking@psr-=
2p-primscrn-pri-indfb-draw-blt.html">SKIP</a> ([fdo#109280] / [fdo#111825])=
 +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-sk=
l9/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard=
-kbl7/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> ([i915#180]) +6 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@clock-too-high:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-iclb3/igt@kms_invalid_mode@clock-too-hi=
gh.html">SKIP</a> ([i915#4278])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-apl1/igt@kms_pipe_b_c_ivb@disable-pipe-=
b-enable-pipe-c.html">SKIP</a> ([fdo#109271]) +70 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-kbl3/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-skl6/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22269/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-y:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-tglb5/igt@kms_plane_lowres@pipe-b-tilin=
g-y.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-iclb3/igt@kms_plane_lowres@pipe-c-tilin=
g-x.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-kbl3/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-skl6/igt@kms_psr2_su@page_flip-p010.htm=
l">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-tglb5/igt@kms_psr@psr2_no_drrs.html">FA=
IL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/sh=
ard-iclb6/igt@kms_psr@psr2_sprite_mmap_cpu.html">SKIP</a> ([fdo#109441])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-glk7/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-glk2/igt=
@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-outp-inactive:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-iclb6/igt@nouveau_crc@pipe-a-source-out=
p-inactive.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-outp-inactive:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-tglb5/igt@nouveau_crc@pipe-c-source-out=
p-inactive.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-skl1/igt@perf_pmu@rc6-suspend.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-skl9/=
igt@perf_pmu@rc6-suspend.html">INCOMPLETE</a> ([i915#4939])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_double_import:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-iclb3/igt@prime_nv_api@i915_nv_double_i=
mport.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-iclb3/igt@sysfs_clients@fair-7.html">SK=
IP</a> ([i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22269/shard-apl2/igt@sysfs_clients@pidname.html">SK=
IP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-rkl-1/igt@fbdev@unaligned-write.html">SKIP</a> ([i915#2=
582]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2269/shard-rkl-6/igt@fbdev@unaligned-write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22269/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22269/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority-all:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11230/shard-rkl-5/igt@gem_exec_whisper@basic-queues-priority-all.htm=
l">INCOMPLETE</a> ([i915#5080]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_22269/shard-rkl-1/igt@gem_exec_whisper@basic-queue=
s-priority-all.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11230/shard-glk6/igt@gem_exec_whisper@basic-queues-priority-all.html=
">DMESG-WARN</a> ([i915#118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22269/shard-glk4/igt@gem_exec_whisper@basic-queues-p=
riority-all.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>{shard-dg1}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG=
-WARN</a> ([i915#4936]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22269/shard-dg1-19/igt@gem_lmem_swapping@smem-oom@lmem0.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-rkl-2/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> ([i915#1=
397]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2269/shard-rkl-6/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-rkl-1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate=
-0-hflip-async-flip.html">SKIP</a> ([i915#1845]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-6/igt@kms_big_fb@=
x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">PASS</a> +19 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-270:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11230/shard-rkl-4/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html">SK=
IP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/sh=
ard-rkl-1/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html">SKIP</a>) ([i915#18=
45]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
269/shard-rkl-6/igt@kms_big_fb@y-tiled-32bpp-rotate-270.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-rkl-1/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tile=
d_gen12_rc_ccs.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-6/igt@km=
s_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html">PASS</a> +3=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-blue-to-red:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-rkl-1/igt@kms_color@pipe-b-ctm-blue-to-red.html">SKIP</=
a> ([i915#1149] / [i915#1849] / [i915#4070]) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-6/igt@kms_color@pipe-=
b-ctm-blue-to-red.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-random:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11230/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.h=
tml">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1230/shard-rkl-4/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html">SKIP<=
/a>) ([fdo#112022] / [i915#4070]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22269/shard-rkl-6/igt@kms_cursor_crc@pipe-b-curs=
or-128x42-random.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x256-random:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-256x256-random.h=
tml">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_22269/shard-rkl-6/igt@kms_cursor_crc@pi=
pe-b-cursor-256x256-random.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/s">DMESG-WARN</a> ([i915#180]) -&gt; [PASS][152] +6 similar i=
ssues</li>
</ul>
</li>
</ul>

</body>
</html>

--===============4112772726030076853==--
