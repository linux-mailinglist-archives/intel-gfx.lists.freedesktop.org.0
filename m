Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD99473985
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Dec 2021 01:27:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEABB10E9A7;
	Tue, 14 Dec 2021 00:27:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6BCA610E9A7;
 Tue, 14 Dec 2021 00:27:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 620C6A9932;
 Tue, 14 Dec 2021 00:27:42 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1610183967207584464=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 14 Dec 2021 00:27:42 -0000
Message-ID: <163944166238.24608.10762974840541513374@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211213134450.3082-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20211213134450.3082-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/fbc=3A_More_multi-FBC_refactoring_=28rev3=29?=
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

--===============1610183967207584464==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/fbc: More multi-FBC refactoring (rev3)
URL   : https://patchwork.freedesktop.org/series/97821/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10995_full -> Patchwork_21839_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21839_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21839_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21839_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-tglb:         NOTRUN -> [SKIP][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  
Known issues
------------

  Here are the changes found in Patchwork_21839_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-apl:          ([PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [FAIL][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26]) ([i915#4386]) -> ([PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl8/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl8/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl8/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl8/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl8/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl4/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl3/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl3/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl1/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl1/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl1/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl2/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl2/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl2/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl3/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl3/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl3/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl4/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl4/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl4/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl4/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl6/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl6/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl7/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl7/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl7/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl8/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl8/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl8/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_sseu@invalid-args:
    - shard-apl:          NOTRUN -> [SKIP][52] ([fdo#109271]) +79 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl8/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_exec_capture@pi@bcs0:
    - shard-skl:          [PASS][53] -> [INCOMPLETE][54] ([i915#4547])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-skl7/igt@gem_exec_capture@pi@bcs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-skl6/igt@gem_exec_capture@pi@bcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [PASS][55] -> [FAIL][56] ([i915#2842])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-iclb:         [PASS][57] -> [FAIL][58] ([i915#2842]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-iclb1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-iclb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][59] -> [FAIL][60] ([i915#2842]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html
    - shard-iclb:         [PASS][61] -> [FAIL][62] ([i915#2849])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - shard-glk:          [PASS][63] -> [DMESG-WARN][64] ([i915#118])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-glk4/igt@gem_exec_whisper@basic-queues-priority-all.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-glk4/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#2190])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl8/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#4613])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-skl1/igt@gem_lmem_swapping@parallel-multi.html
    - shard-tglb:         NOTRUN -> [SKIP][67] ([i915#4613]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-tglb6/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#4613]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-kbl3/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_pxp@fail-invalid-protected-context:
    - shard-iclb:         NOTRUN -> [SKIP][69] ([i915#4270])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-iclb7/igt@gem_pxp@fail-invalid-protected-context.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-tglb:         NOTRUN -> [SKIP][70] ([i915#2856])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@gen9_exec_parse@batch-without-end.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-skl:          [PASS][71] -> [INCOMPLETE][72] ([i915#198]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-skl4/igt@i915_pm_backlight@fade_with_suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-skl6/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-tglb:         NOTRUN -> [SKIP][73] ([i915#4281])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@i915_pm_dc@dc9-dpms.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#3777]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-kbl2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][75] ([i915#3743])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][76] ([fdo#111614]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][77] ([fdo#111615])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#3777]) +2 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#3886]) +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-kbl3/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][80] ([fdo#111615] / [i915#3689]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-tglb6/igt@kms_ccs@pipe-b-bad-pixel-format-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#3886]) +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl8/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][82] ([i915#3689])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][83] ([i915#3689] / [i915#3886])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#3886])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-skl8/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-75:
    - shard-kbl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-kbl6/igt@kms_color_chamelium@pipe-a-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-75:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-tglb6/igt@kms_color_chamelium@pipe-b-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-b-ctm-limited-range:
    - shard-skl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-skl9/igt@kms_color_chamelium@pipe-b-ctm-limited-range.html
    - shard-apl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl7/igt@kms_color_chamelium@pipe-b-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-5:
    - shard-glk:          NOTRUN -> [SKIP][89] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-glk2/igt@kms_color_chamelium@pipe-c-ctm-0-5.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][90] -> [DMESG-WARN][91] ([i915#180]) +4 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][92] ([i915#3319])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-rapid-movement:
    - shard-glk:          NOTRUN -> [SKIP][93] ([fdo#109271]) +12 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-glk9/igt@kms_cursor_crc@pipe-b-cursor-512x170-rapid-movement.html

  * igt@kms_cursor_crc@pipe-c-cursor-max-size-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][94] ([i915#3359])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-max-size-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][95] ([fdo#109279] / [i915#3359])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-tglb:         NOTRUN -> [SKIP][96] ([fdo#111825]) +11 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-tglb6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][97] -> [INCOMPLETE][98] ([i915#180] / [i915#636])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@c-dp1:
    - shard-apl:          [PASS][99] -> [FAIL][100] ([i915#79]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl8/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl1/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][101] -> [FAIL][102] ([i915#2122])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-skl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#2672])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-skl8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
    - shard-kbl:          NOTRUN -> [SKIP][104] ([fdo#109271]) +116 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt:
    - shard-skl:          NOTRUN -> [SKIP][105] ([fdo#109271]) +40 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-skl9/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [PASS][106] -> [DMESG-WARN][107] ([i915#180]) +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][108] ([fdo#109280]) +1 similar issue
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-iclb7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][109] -> [FAIL][110] ([i915#1188])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-skl1/igt@kms_hdr@bpc-switch.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-skl6/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@static-swap:
    - shard-tglb:         NOTRUN -> [SKIP][111] ([i915#1187])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@kms_hdr@static-swap.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-iclb:         NOTRUN -> [SKIP][112] ([fdo#109278]) +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-iclb7/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html
    - shard-kbl:          NOTRUN -> [SKIP][113] ([fdo#109271] / [i915#533]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-kbl3/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html
    - shard-skl:          NOTRUN -> [SKIP][114] ([fdo#109271] / [i915#533])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-skl4/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-glk:          NOTRUN -> [FAIL][115] ([fdo#108145] / [i915#265])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-glk2/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][116] -> [FAIL][117] ([fdo#108145] / [i915#265]) +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][118] ([fdo#108145] / [i915#265])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][119] ([fdo#108145] / [i915#265]) +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_plane_lowres@pipe-c-tiling-y:
    - shard-tglb:         NOTRUN -> [SKIP][120] ([i915#3536])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@kms_plane_lowres@pipe-c-tiling-y.html

  * igt@kms_psr@psr2_basic:
    - shard-tglb:         NOTRUN -> [FAIL][121] ([i915#132] / [i915#3467])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@kms_psr@psr2_basic.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][122] -> [SKIP][123] ([fdo#109441]) +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-iclb3/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_tv_load_detect@load-detect:
    - shard-tglb:         NOTRUN -> [SKIP][124] ([fdo#109309])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@kms_tv_load_detect@load-detect.html

  * igt@nouveau_crc@pipe-b-ctx-flip-detection:
    - shard-tglb:         NOTRUN -> [SKIP][125] ([i915#2530]) +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@nouveau_crc@pipe-b-ctx-flip-detection.html

  * igt@perf@enable-disable:
    - shard-skl:          [PASS][126] -> [FAIL][127] ([i915#1352])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-skl4/igt@perf@enable-disable.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-skl7/igt@perf@enable-disable.html

  * igt@sysfs_clients@fair-0:
    - shard-skl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#2994]) +2 similar issues
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-skl1/igt@sysfs_clients@fair-0.html
    - shard-tglb:         NOTRUN -> [SKIP][129] ([i915#2994]) +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-tglb6/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@fair-7:
    - shard-apl:          NOTRUN -> [SKIP][130] ([fdo#109271] / [i915#2994]) +1 similar issue
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl7/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@sema-25:
    - shard-kbl:          NOTRUN -> [SKIP][131] ([fdo#109271] / [i915#2994]) +2 similar issues
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-kbl3/igt@sysfs_clients@sema-25.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr1:
    - {shard-rkl}:        [SKIP][132] ([i915#658]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-rkl-1/igt@feature_discovery@psr1.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-rkl-6/igt@feature_discovery@psr1.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [TIMEOUT][134] ([i915#2481] / [i915#3070]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-iclb5/igt@gem_eio@unwedge-stress.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-iclb5/igt@gem_eio@unwedge-stress.html
    - {shard-rkl}:        [TIMEOUT][136] ([i915#3063]) -> ([PASS][137], [PASS][138])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-rkl-6/igt@gem_eio@unwedge-stress.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-rkl-2/igt@gem_eio@unwedge-stress.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-rkl-4/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][139] ([i915#2842]) -> [PASS][140] +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [FAIL][141] ([i915#2842]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-iclb:         [FAIL][143] ([i915#2842]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-iclb2/igt@gem_exec_fair@basic-pace@vecs0.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-iclb2/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_sync@basic-all:
    - shard-glk:          [DMESG-WARN][145] ([i915#118]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-glk5/igt@gem_sync@basic-all.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-glk5/igt@gem_sync@basic-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][147] ([i915#1436] / [i915#716]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-skl10/igt@gen9_exec_parse@allowed-single.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-skl8/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][149] ([i915#180]) -> [PASS][150] +2 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl7/igt@i915_suspend@fence-restore-tiled2untiled.html
    - shard-skl:          [INCOMPLETE][151] ([i915#198]) -> [PASS][152]
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-skl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-skl9/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@i915_suspend@forcewake:
    - shard-glk:          [INCOMPLETE][153] -> [PASS][154]
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-glk3/igt@i915_suspend@forcewake.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-glk2/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180:
    - {shard-rkl}:        ([PASS][155], [SKIP][156]) ([i915#1845]) -> [PASS][157]
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-rkl-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
    - shard-iclb:         [FAIL][158] ([i915#2370]) -> [PASS][159]
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-iclb6/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-apl:          [FAIL][160] ([i915#2346]) -> [PASS][161]
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [FAIL][162] ([i915#79]) -> [PASS][163] +1 similar issue
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
    - shard-glk:          [FAIL][164] ([i915#79]) -> [PASS][165]
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html

  * igt@kms_flip@flip-v

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/index.html

--===============1610183967207584464==
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
<tr><td><b>Series:</b></td><td>drm/i915/fbc: More multi-FBC refactoring (re=
v3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/97821/">https://patchwork.freedesktop.org/series/97821/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21839/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21839/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10995_full -&gt; Patchwork_21839_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21839_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_21839_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
21839_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@kms_psr2_sf@overlay-primary-u=
pdate-sf-dmg-area.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21839_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10995/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl8/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10995/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_10995/shard-apl8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/sha=
rd-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_10995/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_10995/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10995/shard-apl4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995=
/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_10995/shard-apl3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-ap=
l3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0995/shard-apl2/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_10995/shard-apl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shard-apl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10995/shar=
d-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_10995/shard-apl1/boot.html">PASS</a>) ([i915#4386]) -&gt; (<a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21839/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl1/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21839/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl2/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl2/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21839/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl3/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21839/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl3/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21839/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl4/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21839/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl6/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21839/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl7/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl7/=
boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21839/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-apl8/=
boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-apl8/igt@gem_ctx_sseu@invalid-args.html=
">SKIP</a> ([fdo#109271]) +79 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-skl7/igt@gem_exec_capture@pi@bcs0.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-s=
kl6/igt@gem_exec_capture@pi@bcs0.html">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/s=
hard-apl4/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-iclb1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
839/shard-iclb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i91=
5#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10995/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839=
/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#284=
2]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10995/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2183=
9/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2=
849])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-glk4/igt@gem_exec_whisper@basic-queues-priority-all.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21839/shard-glk4/igt@gem_exec_whisper@basic-queues-priority-all.html">=
DMESG-WARN</a> ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-apl8/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21839/shard-skl1/igt@gem_lmem_swapping@parallel-mult=
i.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21839/shard-tglb6/igt@gem_lmem_swapping@parallel-mul=
ti.html">SKIP</a> ([i915#4613]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-kbl3/igt@gem_lmem_swapping@smem-oom.htm=
l">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@fail-invalid-protected-context:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-iclb7/igt@gem_pxp@fail-invalid-protecte=
d-context.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@gen9_exec_parse@batch-without=
-end.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-skl4/igt@i915_pm_backlight@fade_with_suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
839/shard-skl6/igt@i915_pm_backlight@fade_with_suspend.html">INCOMPLETE</a>=
 ([i915#198]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@i915_pm_dc@dc9-dpms.html">SKI=
P</a> ([i915#4281])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-kbl2/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@kms_big_fb@y-tiled-64bpp-rota=
te-270.html">SKIP</a> ([fdo#111614]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@kms_big_fb@yf-tiled-32bpp-rot=
ate-90.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-apl8/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-kbl3/igt@kms_ccs@pipe-a-missing-ccs-buf=
fer-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-tglb6/igt@kms_ccs@pipe-b-bad-pixel-form=
at-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-apl8/igt@kms_ccs@pipe-b-crc-primary-bas=
ic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@kms_ccs@pipe-b-missing-ccs-bu=
ffer-y_tiled_ccs.html">SKIP</a> ([i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@kms_ccs@pipe-c-bad-pixel-form=
at-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-skl8/igt@kms_ccs@pipe-c-bad-pixel-forma=
t-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-kbl6/igt@kms_color_chamelium@pipe-a-ctm=
-0-75.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-75:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-tglb6/igt@kms_color_chamelium@pipe-b-ct=
m-0-75.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-limited-range:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21839/shard-skl9/igt@kms_color_chamelium@pipe-b-ctm-=
limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issue=
s</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21839/shard-apl7/igt@kms_color_chamelium@pipe-b-ctm-=
limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issue=
s</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-5:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-glk2/igt@kms_color_chamelium@pipe-c-ctm=
-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1839/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</=
a> ([i915#180]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@kms_cursor_crc@pipe-b-cursor-=
32x32-onscreen.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-rapid-movement:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-glk9/igt@kms_cursor_crc@pipe-b-cursor-5=
12x170-rapid-movement.html">SKIP</a> ([fdo#109271]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-max-size-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-=
max-size-rapid-movement.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@kms_cursor_crc@pipe-d-cursor-=
512x512-rapid-movement.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-tglb6/igt@kms_cursor_legacy@cursorb-vs-=
flipb-atomic.html">SKIP</a> ([fdo#111825]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-kbl2/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-=
kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915=
#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-apl8/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21839/shard-apl1/igt@kms_flip@flip-vs-expired-vblank@c-dp1.html">FAIL</a> (=
[i915#79]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21839/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interru=
ptible@b-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-skl8/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +116 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-skl9/igt@kms_frontbuffer_tracking@fbc-r=
gb101010-draw-blt.html">SKIP</a> ([fdo#109271]) +40 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-apl3/igt@kms_frontbuffer_tracking@fbc-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1839/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</=
a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-iclb7/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109280]) +1 simila=
r issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-skl1/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-skl6/ig=
t@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@kms_hdr@static-swap.html">SKI=
P</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21839/shard-iclb7/igt@kms_pipe_crc_basic@disable-crc=
-after-crtc-pipe-d.html">SKIP</a> ([fdo#109278]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21839/shard-kbl3/igt@kms_pipe_crc_basic@disable-crc-=
after-crtc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar iss=
ue</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21839/shard-skl4/igt@kms_pipe_crc_basic@disable-crc-=
after-crtc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-glk2/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21839/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-kbl2/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-y:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@kms_plane_lowres@pipe-c-tilin=
g-y.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@kms_psr@psr2_basic.html">FAIL=
</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shar=
d-iclb3/igt@kms_psr@psr2_cursor_render.html">SKIP</a> ([fdo#109441]) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_tv_load_detect@load-detect:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@kms_tv_load_detect@load-detec=
t.html">SKIP</a> ([fdo#109309])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-detection:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-tglb8/igt@nouveau_crc@pipe-b-ctx-flip-d=
etection.html">SKIP</a> ([i915#2530]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@enable-disable:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-skl4/igt@perf@enable-disable.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-skl7/i=
gt@perf@enable-disable.html">FAIL</a> ([i915#1352])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21839/shard-skl1/igt@sysfs_clients@fair-0.html">SKIP=
</a> ([fdo#109271] / [i915#2994]) +2 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21839/shard-tglb6/igt@sysfs_clients@fair-0.html">SKI=
P</a> ([i915#2994]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-apl7/igt@sysfs_clients@fair-7.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21839/shard-kbl3/igt@sysfs_clients@sema-25.html">SK=
IP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr1:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-rkl-1/igt@feature_discovery@psr1.html">SKIP</a> ([i915#=
658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1839/shard-rkl-6/igt@feature_discovery@psr1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10995/shard-iclb5/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i91=
5#2481] / [i915#3070]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_21839/shard-iclb5/igt@gem_eio@unwedge-stress.html">PASS</a>=
</p>
</li>
<li>
<p>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10995/shard-rkl-6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i91=
5#3063]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_21839/shard-rkl-2/igt@gem_eio@unwedge-stress.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/shard-rkl-4/igt@ge=
m_eio@unwedge-stress.html">PASS</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21839/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html=
">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21839/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-iclb2/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a>=
 ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21839/shard-iclb2/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-glk5/igt@gem_sync@basic-all.html">DMESG-WARN</a> ([i915=
#118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21839/shard-glk5/igt@gem_sync@basic-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-skl10/igt@gen9_exec_parse@allowed-single.html">DMESG-WA=
RN</a> ([i915#1436] / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_21839/shard-skl8/igt@gen9_exec_parse@allowed-sin=
gle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10995/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html">=
DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21839/shard-apl7/igt@i915_suspend@fence-restore-tiled2=
untiled.html">PASS</a> +2 similar issues</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10995/shard-skl6/igt@i915_suspend@fence-restore-tiled2untiled.html">=
INCOMPLETE</a> ([i915#198]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21839/shard-skl9/igt@i915_suspend@fence-restore-tiled2=
untiled.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-glk3/igt@i915_suspend@forcewake.html">INCOMPLETE</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21839/sha=
rd-glk2/igt@i915_suspend@forcewake.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10995/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotat=
e-180.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_10995/shard-rkl-4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-1=
80.html">SKIP</a>) ([i915#1845]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21839/shard-rkl-6/igt@kms_big_fb@y-tiled-max-hw-s=
tride-32bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-varying-size:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-varying-size=
.html">FAIL</a> ([i915#2370]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21839/shard-iclb6/igt@kms_cursor_legacy@cursor-vs-fl=
ip-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-apl2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">=
FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_21839/shard-apl6/igt@kms_cursor_legacy@flip-vs-cursor-toggl=
e.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_21839/shard-skl10/igt@kms_flip@flip-vs-expired-v=
blank-interruptible@a-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10995/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21839/shard-glk9/igt@kms_flip@flip-vs-expired=
-vblank-interruptible@b-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-v</p>
</li>
</ul>

</body>
</html>

--===============1610183967207584464==--
