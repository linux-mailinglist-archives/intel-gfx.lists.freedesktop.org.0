Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2056F48C87D
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 17:34:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89ED110EB92;
	Wed, 12 Jan 2022 16:34:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 19DD210E7AD;
 Wed, 12 Jan 2022 16:34:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 14F17AADD2;
 Wed, 12 Jan 2022 16:34:37 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4871915914679314786=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Wed, 12 Jan 2022 16:34:37 -0000
Message-ID: <164200527705.21759.10578412457663105343@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220112105703.1151391-1-jani.nikula@intel.com>
In-Reply-To: <20220112105703.1151391-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dp=3A_make_intel=5Fdp=5Fpack=5Faux=28=29_static_again_=28?=
 =?utf-8?q?rev2=29?=
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

--===============4871915914679314786==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: make intel_dp_pack_aux() static again (rev2)
URL   : https://patchwork.freedesktop.org/series/98399/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11073_full -> Patchwork_21978_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21978_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21978_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21978_full:

### IGT changes ###

#### Possible regressions ####

  * igt@perf@stress-open-close:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-iclb4/igt@perf@stress-open-close.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-iclb1/igt@perf@stress-open-close.html

  
Known issues
------------

  Here are the changes found in Patchwork_21978_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-apl:          ([PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27]) -> ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [FAIL][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52]) ([i915#4386])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl8/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl8/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl8/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl7/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl6/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl4/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl3/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl3/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl2/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl1/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl7/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl8/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl8/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl8/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl8/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl1/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl1/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl1/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl2/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl2/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl2/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl3/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl3/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl3/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl4/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl4/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl4/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl4/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl6/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl6/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl6/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl7/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl7/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-tglb:         [PASS][53] -> [TIMEOUT][54] ([i915#3063])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-tglb7/igt@gem_eio@in-flight-contexts-1us.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-tglb1/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][55] -> [FAIL][56] ([i915#232])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-tglb6/igt@gem_eio@unwedge-stress.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-tglb2/igt@gem_eio@unwedge-stress.html
    - shard-iclb:         [PASS][57] -> [TIMEOUT][58] ([i915#2481] / [i915#3070])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-iclb5/igt@gem_eio@unwedge-stress.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-iclb1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-iclb:         [PASS][59] -> [SKIP][60] ([i915#4525]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-iclb5/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][61] ([i915#2842])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-glk8/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-apl:          [PASS][62] -> [FAIL][63] ([i915#2842])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [PASS][64] -> [FAIL][65] ([i915#2842])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#4613]) +2 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-skl5/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-iclb:         NOTRUN -> [SKIP][67] ([i915#3323])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-iclb4/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-tglb:         NOTRUN -> [SKIP][68] ([i915#3323])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-tglb3/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-skl:          NOTRUN -> [FAIL][69] ([i915#3318])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-skl9/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-tglb:         NOTRUN -> [SKIP][70] ([i915#2527] / [i915#2856])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-tglb3/igt@gen9_exec_parse@shadow-peek.html
    - shard-iclb:         NOTRUN -> [SKIP][71] ([i915#2856])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-iclb4/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          NOTRUN -> [FAIL][72] ([i915#454])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-skl5/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#3777])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-0:
    - shard-glk:          [PASS][74] -> [DMESG-WARN][75] ([i915#118])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-glk3/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-glk9/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#3886]) +12 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-skl9/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [fdo#111827]) +15 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-skl4/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@dp-hpd-storm:
    - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [fdo#111827])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl4/igt@kms_chamelium@dp-hpd-storm.html

  * igt@kms_color_chamelium@pipe-d-ctm-limited-range:
    - shard-glk:          NOTRUN -> [SKIP][79] ([fdo#109271] / [fdo#111827])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-glk8/igt@kms_color_chamelium@pipe-d-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
    - shard-tglb:         NOTRUN -> [SKIP][80] ([fdo#109284] / [fdo#111827])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-tglb3/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque:
    - shard-skl:          [PASS][81] -> [DMESG-WARN][82] ([i915#1982])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][83] ([i915#3359]) +2 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-tglb6/igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
    - shard-glk:          NOTRUN -> [SKIP][84] ([fdo#109271]) +3 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-glk8/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          NOTRUN -> [FAIL][85] ([i915#2346] / [i915#533])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-iclb:         [PASS][86] -> [FAIL][87] ([i915#2346]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_flip@2x-flip-vs-panning-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][88] ([fdo#109274] / [fdo#111825])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-tglb3/igt@kms_flip@2x-flip-vs-panning-interruptible.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [PASS][89] -> [DMESG-WARN][90] ([i915#180]) +4 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-skl:          NOTRUN -> [INCOMPLETE][91] ([i915#4839])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-skl4/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-iclb:         [PASS][92] -> [SKIP][93] ([i915#3701])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-tglb:         NOTRUN -> [SKIP][94] ([i915#2587])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-tglb6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
    - shard-glk:          [PASS][95] -> [FAIL][96] ([i915#2546])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-glk2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-glk4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-tglb:         NOTRUN -> [SKIP][97] ([fdo#109280] / [fdo#111825])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
    - shard-skl:          NOTRUN -> [SKIP][98] ([fdo#109271]) +202 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-skl9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt:
    - shard-snb:          [PASS][99] -> [SKIP][100] ([fdo#109271]) +3 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-snb2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-snb2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          NOTRUN -> [FAIL][101] ([i915#1188])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-skl9/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
    - shard-apl:          NOTRUN -> [SKIP][102] ([fdo#109271]) +26 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl1/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][103] ([fdo#108145] / [i915#265]) +3 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-skl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#658])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-skl9/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][105] -> [SKIP][106] ([fdo#109441]) +3 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][107] -> [FAIL][108] ([i915#31])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-glk6/igt@kms_setmode@basic.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-glk2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-skl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#533]) +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-skl8/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_writeback@writeback-check-output:
    - shard-skl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#2437])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-skl9/igt@kms_writeback@writeback-check-output.html

  * igt@perf@polling-parameterized:
    - shard-tglb:         [PASS][111] -> [FAIL][112] ([i915#1542])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-tglb2/igt@perf@polling-parameterized.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-tglb6/igt@perf@polling-parameterized.html

  * igt@prime_nv_pcopy@test_semaphore:
    - shard-tglb:         NOTRUN -> [SKIP][113] ([fdo#109291])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-tglb6/igt@prime_nv_pcopy@test_semaphore.html

  * igt@sysfs_clients@busy:
    - shard-skl:          NOTRUN -> [SKIP][114] ([fdo#109271] / [i915#2994]) +2 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-skl8/igt@sysfs_clients@busy.html

  * igt@sysfs_clients@fair-0:
    - shard-apl:          NOTRUN -> [SKIP][115] ([fdo#109271] / [i915#2994])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl1/igt@sysfs_clients@fair-0.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-iclb:         [TIMEOUT][116] ([i915#3070]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-iclb6/igt@gem_eio@in-flight-contexts-10ms.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-iclb7/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_exec_balancer@parallel:
    - shard-iclb:         [SKIP][118] ([i915#4525]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-iclb7/igt@gem_exec_balancer@parallel.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-iclb2/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][120] ([i915#2842]) -> [PASS][121] +2 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][122] ([i915#2842]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][124] ([i915#2842]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-glk:          [FAIL][126] ([i915#2842]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [FAIL][128] ([i915#2876]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][130] ([i915#2849]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
    - shard-skl:          [DMESG-WARN][132] ([i915#1982]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-skl6/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-skl6/igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][134] ([i915#2190]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-tglb7/igt@gem_huc_copy@huc-copy.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-tglb2/igt@gem_huc_copy@huc-copy.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][136] ([i915#1436] / [i915#716]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-glk5/igt@gen9_exec_parse@allowed-all.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-glk8/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][138] ([i915#2346]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [FAIL][140] ([i915#2122]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
    - shard-iclb:         [SKIP][142] ([i915#3701]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [DMESG-WARN][144] ([i915#180]) -> [PASS][145] +2 similar issues
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [SKIP][146] ([fdo#109441]) -> [PASS][147] +1 similar issue
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-apl:          [FAIL][148] ([i915#31]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl2/igt@kms_setmode@basic.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl7/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][150] ([i915#2684]) -> [WARN][151] ([i915#1804] / [i915#2684])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-iclb:         [SKIP][152] ([fdo#111068] / [i915#658]) -> [SKIP][153] ([i915#2920]) +1 similar issue
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@runner@aborted:
    - shard-iclb:         ([FAIL][154], [FAIL][155]) ([i915#3002] / [i915#4312]) -> ([FAIL][156], [FAIL][157], [FAIL][158]) ([i915#2722] / [i915#3002] / [i915#4312])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-iclb3/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-iclb5/igt@runner@aborted.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-iclb3/igt@runner@aborted.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-iclb5/igt@runner@aborted.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-iclb1/igt@runner@aborted.html
    - shard-apl:          ([FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#4312]) -> ([FAIL][164], [FAIL][165], [FAIL][166], [FAIL][167]) ([i915#180] / [i915#3002] / [i915#4312])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl1/igt@runner@aborted.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl4/igt@runner@aborted.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl1/igt@runner@aborted.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl4/igt@runner@aborted.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl1/igt@runner@aborted.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl4/igt@runner@aborted.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl6/igt@runner@aborted.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl1/igt@runner@aborted.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl3/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#232]: https://gitlab.freedesktop.org/drm/intel/issues/232
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2481]:

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/index.html

--===============4871915914679314786==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: make intel_dp_pack_aux() static=
 again (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/98399/">https://patchwork.freedesktop.org/series/98399/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21978/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21978/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11073_full -&gt; Patchwork_21978_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21978_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_21978_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
21978_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@perf@stress-open-close:<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-iclb4/igt@perf@stress-open-close.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-ic=
lb1/igt@perf@stress-open-close.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21978_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11073/shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl8/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11073/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11073/shard-apl7/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/sha=
rd-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11073/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11073/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11073/shard-apl4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073=
/shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11073/shard-apl3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-ap=
l3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1073/shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11073/shard-apl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shar=
d-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11073/shard-apl1/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/=
shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21978/shard-apl8/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/=
shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21978/shard-apl1/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl1/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/=
shard-apl1/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21978/shard-apl1/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/=
shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21978/shard-apl2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/=
shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21978/shard-apl3/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/=
shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21978/shard-apl4/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/=
shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21978/shard-apl6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/=
shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21978/shard-apl7/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl7/boot.html">PAS=
S</a>) ([i915#4386])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-tglb7/igt@gem_eio@in-flight-contexts-1us.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/=
shard-tglb1/igt@gem_eio@in-flight-contexts-1us.html">TIMEOUT</a> ([i915#306=
3])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11073/shard-tglb6/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-tgl=
b2/igt@gem_eio@unwedge-stress.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/232">i915#232</a>)</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11073/shard-iclb5/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-icl=
b1/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a href=3D"">i915#2481</a>=
 / [i915#3070])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-iclb1/igt@gem_exec_balancer@parallel-contexts.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1978/shard-iclb5/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> ([i=
915#4525]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21978/shard-glk8/igt@gem_exec_fair@basic-none-rrul@=
rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_219=
78/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#=
2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/sh=
ard-kbl4/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21978/shard-skl5/igt@gem_lmem_swapping@verify-rando=
m.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / [i915#4613]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21978/shard-iclb4/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> ([i915#3323])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21978/shard-tglb3/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> ([i915#3323])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21978/shard-skl9/igt@gem_userptr_blits@vma-merge.ht=
ml">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21978/shard-tglb3/igt@gen9_exec_parse@shadow-peek.ht=
ml">SKIP</a> ([i915#2527] / [i915#2856])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21978/shard-iclb4/igt@gen9_exec_parse@shadow-peek.ht=
ml">SKIP</a> ([i915#2856])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21978/shard-skl5/igt@i915_pm_dc@dc6-dpms.html">FAIL=
</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21978/shard-skl9/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-glk3/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_219=
78/shard-glk9/igt@kms_big_fb@yf-tiled-32bpp-rotate-0.html">DMESG-WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21978/shard-skl9/igt@kms_ccs@pipe-c-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886]) +12 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21978/shard-skl4/igt@kms_chamelium@dp-crc-multiple.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-storm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21978/shard-apl4/igt@kms_chamelium@dp-hpd-storm.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-limited-range:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21978/shard-glk8/igt@kms_color_chamelium@pipe-d-ctm=
-limited-range.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21978/shard-tglb3/igt@kms_color_chamelium@pipe-d-ct=
m-red-to-blue.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21978/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-alpha-opaque.html">DM=
ESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/19=
82">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x10-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21978/shard-tglb6/igt@kms_cursor_crc@pipe-b-cursor-=
32x10-sliding.html">SKIP</a> ([i915#3359]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21978/shard-glk8/igt@kms_cursor_crc@pipe-b-cursor-3=
2x32-onscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21978/shard-skl8/igt@kms_cursor_legacy@flip-vs-curs=
or-atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/2346">i915#2346</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-iclb8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_21978/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">i915=
#2346</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21978/shard-tglb3/igt@kms_flip@2x-flip-vs-panning-i=
nterruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/s=
hard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +4 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21978/shard-skl4/igt@kms_flip@flip-vs-suspend@b-edp=
1.html">INCOMPLETE</a> ([i915#4839])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-iclb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp=
-ytileccs-downscaling.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_21978/shard-iclb2/igt@kms_flip_scaled_crc@fli=
p-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> ([i915#3701])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:<=
/p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21978/shard-tglb6/igt@kms_flip_scaled_crc@flip-32bp=
p-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> ([i915#2587])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-glk2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-i=
ndfb-move.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21978/shard-glk4/igt@kms_frontbuffer_tracking@fbc-1p-prim=
scrn-cur-indfb-move.html">FAIL</a> ([i915#2546])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21978/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a> / <a href=3D"http=
s://bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21978/shard-skl9/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-pri-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +202 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-snb2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-bl=
t.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21978/shard-snb2/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-=
blt.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21978/shard-skl9/igt@kms_hdr@bpc-switch.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#=
1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21978/shard-apl1/igt@kms_pipe_b_c_ivb@disable-pipe-=
b-enable-pipe-c.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21978/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / [i915#265]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21978/shard-skl9/igt@kms_psr2_su@frontbuffer-xrgb88=
88.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/=
shard-iclb8/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> (<a href=3D"h=
ttps://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +3 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-glk6/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-glk2/igt=
@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21978/shard-skl8/igt@kms_vblank@pipe-d-wait-idle.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21978/shard-skl9/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-tglb2/igt@perf@polling-parameterized.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shar=
d-tglb6/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test_semaphore:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21978/shard-tglb6/igt@prime_nv_pcopy@test_semaphore=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21978/shard-skl8/igt@sysfs_clients@busy.html">SKIP<=
/a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#=
109271</a> / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21978/shard-apl1/igt@sysfs_clients@fair-0.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-iclb6/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT=
</a> ([i915#3070]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21978/shard-iclb7/igt@gem_eio@in-flight-contexts-10ms.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-iclb7/igt@gem_exec_balancer@parallel.html">SKIP</a> ([i=
915#4525]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21978/shard-iclb2/igt@gem_exec_balancer@parallel.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21978/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +2 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21978/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11073/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21978/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html"=
>PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11073/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21978/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">P=
ASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (=
[i915#2876]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21978/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> ([i915#2849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21978/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-skl6/igt@gem_fenced_exec_thrash@no-spare-fences-busy-in=
terruptible.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_21978/shard-skl6/igt@gem_fenced_exec_thrash=
@no-spare-fences-busy-interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/sha=
rd-tglb2/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-glk5/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1=
436</a> / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21978/shard-glk8/igt@gen9_exec_parse@allowed-all.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21978/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-a=
tomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_21978/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-i=
nterruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp=
-ytile-downscaling.html">SKIP</a> ([i915#3701]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-iclb6/igt@kms_flip_sca=
led_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180=
">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_21978/shard-apl1/igt@kms_frontbuffer_tracking@fbc-suspend.html">PA=
SS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_cpu.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10944=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21978/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html">PASS</a> +1 simila=
r issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-apl2/igt@kms_setmode@basic.html">FAIL</a> ([i915#31]) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/sh=
ard-apl7/igt@kms_setmode@basic.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 ([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21978/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#180=
4</a> / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-continuous-s=
f.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111068">fdo#111068</a> / [i915#658]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_21978/shard-iclb2/igt@kms_psr2_sf@overlay-=
plane-update-continuous-sf.html">SKIP</a> ([i915#2920]) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-iclb5/igt@runner@a=
borted.html">FAIL</a>) ([i915#3002] / [i915#4312]) -&gt; (<a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-iclb3/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_21978/shard-iclb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-iclb1/igt@run=
ner@aborted.html">FAIL</a>) ([i915#2722] / [i915#3002] / [i915#4312])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11073/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl4/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11073/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11073/shard-apl4/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11073/shard-apl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / [=
i915#3002] / [i915#4312]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_21978/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-apl6=
/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21978/shard-apl1/igt@runner@aborted.html">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21978/shard-a=
pl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/180">i915#180</a> / [i915#3002] / [i915#4312])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============4871915914679314786==--
