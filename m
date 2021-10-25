Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D434399BD
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Oct 2021 17:10:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D084D6E063;
	Mon, 25 Oct 2021 15:10:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A79186E049;
 Mon, 25 Oct 2021 15:10:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 9E26CAA917;
 Mon, 25 Oct 2021 15:10:39 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7643985262246357096=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wan Jiabing" <wanjiabing@vivo.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Oct 2021 15:10:39 -0000
Message-ID: <163517463960.17091.4465511679138505551@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211025113316.24424-1-wanjiabing@vivo.com>
In-Reply-To: <20211025113316.24424-1-wanjiabing@vivo.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Use_ERR=5FCAST_instead_of_ERR=5FPTR=28PTR=5FERR=28=29?=
 =?utf-8?q?=29?=
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

--===============7643985262246357096==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Use ERR_CAST instead of ERR_PTR(PTR_ERR())
URL   : https://patchwork.freedesktop.org/series/96246/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10783_full -> Patchwork_21436_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_21436_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-apl:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [FAIL][24], [PASS][25]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl7/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl7/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl7/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl7/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl6/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl6/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl6/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl6/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl4/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl4/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl4/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl3/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl3/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl2/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl2/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl2/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl2/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl1/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl3/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl4/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl4/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl4/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl4/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl6/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl6/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl6/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl6/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl7/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl7/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl7/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl8/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl7/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl8/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl8/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl8/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl1/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl1/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl1/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl2/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl2/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl3/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl3/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl3/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@display-3x:
    - shard-tglb:         NOTRUN -> [SKIP][51] ([i915#1839])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb5/igt@feature_discovery@display-3x.html

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-tglb:         [PASS][52] -> [INCOMPLETE][53] ([i915#456])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-tglb8/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb7/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][54] -> [FAIL][55] ([i915#2842])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][56] ([i915#2842]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb2/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [PASS][57] -> [FAIL][58] ([i915#2842])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-glk7/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [PASS][59] -> [FAIL][60] ([i915#2842] / [i915#3468])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-tglb:         [PASS][61] -> [FAIL][62] ([i915#2842])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-tglb3/igt@gem_exec_fair@basic-pace@vecs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][63] -> [SKIP][64] ([i915#2190])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-tglb2/igt@gem_huc_copy@huc-copy.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_pxp@verify-pxp-stale-ctx-execution:
    - shard-tglb:         NOTRUN -> [SKIP][65] ([i915#4270])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb5/igt@gem_pxp@verify-pxp-stale-ctx-execution.html

  * igt@gem_userptr_blits@access-control:
    - shard-tglb:         NOTRUN -> [SKIP][66] ([i915#3297])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb5/igt@gem_userptr_blits@access-control.html

  * igt@gen3_render_linear_blits:
    - shard-tglb:         NOTRUN -> [SKIP][67] ([fdo#109289]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb2/igt@gen3_render_linear_blits.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][68] -> [FAIL][69] ([i915#454]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-tglb:         NOTRUN -> [SKIP][70] ([i915#3826])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb2/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][71] -> [FAIL][72] ([i915#2521])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-tglb:         NOTRUN -> [SKIP][73] ([i915#404])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@linear-32bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][74] ([fdo#111614])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb5/igt@kms_big_fb@linear-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-glk:          [PASS][75] -> [DMESG-WARN][76] ([i915#118])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-glk2/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-glk3/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#3777])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-skl8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
    - shard-kbl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#3777])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-kbl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-glk:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#3777])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-glk3/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][80] ([fdo#111615]) +5 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb2/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-tglb:         NOTRUN -> [SKIP][81] ([i915#2705])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb2/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#3886]) +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-skl9/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#3886]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl2/igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_ccs:
    - shard-glk:          NOTRUN -> [SKIP][84] ([fdo#109271]) +40 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-glk3/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][85] ([i915#3689] / [i915#3886]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb2/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([i915#3689]) +2 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb5/igt@kms_ccs@pipe-c-missing-ccs-buffer-yf_tiled_ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271]) +20 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl6/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium@dp-hpd-enable-disable-mode:
    - shard-kbl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-kbl1/igt@kms_chamelium@dp-hpd-enable-disable-mode.html

  * igt@kms_chamelium@hdmi-crc-single:
    - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [fdo#111827])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl2/igt@kms_chamelium@hdmi-crc-single.html

  * igt@kms_chamelium@hdmi-hpd:
    - shard-skl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-skl9/igt@kms_chamelium@hdmi-hpd.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-5:
    - shard-tglb:         NOTRUN -> [SKIP][91] ([fdo#109284] / [fdo#111827]) +4 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb2/igt@kms_color_chamelium@pipe-b-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-d-ctm-max:
    - shard-glk:          NOTRUN -> [SKIP][92] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-glk3/igt@kms_color_chamelium@pipe-d-ctm-max.html

  * igt@kms_content_protection@type1:
    - shard-tglb:         NOTRUN -> [SKIP][93] ([fdo#111828])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb2/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x10-random:
    - shard-tglb:         NOTRUN -> [SKIP][94] ([i915#3359]) +3 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-32x10-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][95] ([i915#3319])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-32x32-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][96] ([fdo#109279] / [i915#3359]) +3 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-iclb:         [PASS][97] -> [FAIL][98] ([i915#2346])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-iclb4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-skl:          [PASS][99] -> [FAIL][100] ([i915#2346])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-skl:          NOTRUN -> [SKIP][101] ([fdo#109271] / [i915#533])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-skl9/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-tglb:         [PASS][102] -> [INCOMPLETE][103] ([i915#2411] / [i915#456])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-tglb5/igt@kms_fbcon_fbt@fbc-suspend.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@plain-flip-ts-check@b-edp1:
    - shard-skl:          [PASS][104] -> [FAIL][105] ([i915#2122])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-skl10/igt@kms_flip@plain-flip-ts-check@b-edp1.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-skl10/igt@kms_flip@plain-flip-ts-check@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-iclb:         [PASS][106] -> [SKIP][107] ([i915#3701])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][108] ([fdo#109271]) +69 similar issues
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-skl8/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite:
    - shard-tglb:         NOTRUN -> [SKIP][109] ([fdo#111825]) +13 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][110] -> [FAIL][111] ([i915#1188])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][112] -> [DMESG-WARN][113] ([i915#180]) +5 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html
    - shard-apl:          NOTRUN -> [DMESG-WARN][114] ([i915#180])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:
    - shard-kbl:          NOTRUN -> [SKIP][115] ([fdo#109271]) +12 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-kbl1/igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-glk:          NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#533])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-glk3/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][117] ([i915#265])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][118] ([fdo#108145] / [i915#265]) +1 similar issue
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-tglb:         NOTRUN -> [SKIP][119] ([i915#2920])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-skl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#658]) +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-skl9/igt@kms_psr2_su@frontbuffer.html
    - shard-iclb:         [PASS][121] -> [SKIP][122] ([fdo#109642] / [fdo#111068] / [i915#658])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-iclb1/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][123] -> [SKIP][124] ([fdo#109441])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-iclb6/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][125] -> [FAIL][126] ([i915#31])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-glk7/igt@kms_setmode@basic.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-glk1/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [PASS][127] -> [DMESG-WARN][128] ([i915#180]) +3 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@nouveau_crc@pipe-c-source-outp-inactive:
    - shard-tglb:         NOTRUN -> [SKIP][129] ([i915#2530])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb5/igt@nouveau_crc@pipe-c-source-outp-inactive.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][130] -> [FAIL][131] ([i915#1542])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-skl9/igt@perf@polling-parameterized.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-skl4/igt@perf@polling-parameterized.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][132] -> [FAIL][133] ([i915#1722])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-skl10/igt@perf@polling-small-buf.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-skl10/igt@perf@polling-small-buf.html

  * igt@prime_nv_test@i915_import_cpu_mmap:
    - shard-tglb:         NOTRUN -> [SKIP][134] ([fdo#109291]) +2 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb2/igt@prime_nv_test@i915_import_cpu_mmap.html

  * igt@prime_vgem@basic-userptr:
    - shard-tglb:         NOTRUN -> [SKIP][135] ([i915#3301])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb5/igt@prime_vgem@basic-userptr.html

  * igt@sysfs_clients@fair-0:
    - shard-skl:          NOTRUN -> [SKIP][136] ([fdo#109271] / [i915#2994]) +1 similar issue
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-skl10/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@sema-25:
    - shard-glk:          NOTRUN -> [SKIP][137] ([fdo#109271] / [i915#2994])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-glk3/igt@sysfs_clients@sema-25.html

  * igt@sysfs_clients@sema-50:
    - shard-tglb:         NOTRUN -> [SKIP][138] ([i915#2994])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb5/igt@sysfs_clients@sema-50.html

  * igt@sysfs_clients@split-50:
    - shard-kbl:          NOTRUN -> [SKIP][139] ([fdo#109271] / [i915#2994])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-kbl1/igt@sysfs_clients@split-50.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][140] ([i915#2846]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-glk7/igt@gem_exec_fair@basic-deadline.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-glk1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [FAIL][142] ([i915#2842]) -> [PASS][143] +1 similar issue
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-glk4/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [FAIL][144] ([i915#2842]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][146] ([i915#2842]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [INCOMPLETE][148] ([i915#198]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-skl7/igt@i915_selftest@mock@requests.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-skl10/igt@i915_selftest@mock@requests.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-iclb:         [FAIL][150] ([fdo#103375]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-iclb2/igt@i915_suspend@fence-restore-untiled.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-iclb1/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][152] ([i915#2411] / [i915#4211]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-skl:          [FAIL][154] ([i915#2346]) -> [PASS][155]
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-tglb:         [INCOMPLETE][156] ([i915#2411] / [i915#456]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-tglb7/igt@kms_fbcon_fbt@psr-suspend.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb5/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [FAIL][158] ([i915#79]) -> [PASS][159]
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [DMESG-WARN][160] ([i915#180]) -> [PASS][161] +1 similar issue
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][162] ([fdo#108145] / [i915#265]) -> [PASS][163]
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][164] ([fdo#109441]) -> [PASS][165] +1 similar issue
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-a-accuracy-idle:
    - shard-glk:          [FAIL][166] ([i915#43]) -> [PASS][167]
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-glk9/igt@kms_vblank@pipe-a-accuracy-idle.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-glk5/igt@kms_vblank@pipe-a-accuracy-idle.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][168] ([i915#180]) -> [PASS][169] +2 similar issues
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-kbl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-kbl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@perf@polling:
    - shard-skl:          [FAIL][170] ([i915#1542]) -> [PASS][171]
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-skl9/igt@perf@polling.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/P

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/index.html

--===============7643985262246357096==
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
<tr><td><b>Series:</b></td><td>drm/i915: Use ERR_CAST instead of ERR_PTR(PT=
R_ERR())</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/96246/">https://patchwork.freedesktop.org/series/96246/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21436/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21436/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10783_full -&gt; Patchwork_21436_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21436_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10783/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl7/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl7/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10783/shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_10783/shard-apl6/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/sha=
rd-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_10783/shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_10783/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10783/shard-apl4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783=
/shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_10783/shard-apl3/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-ap=
l3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl2/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0783/shard-apl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_10783/shard-apl1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shard-apl1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10783/shar=
d-apl1/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_10783/shard-apl1/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/=
shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21436/shard-apl4/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/=
shard-apl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21436/shard-apl6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/=
shard-apl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21436/shard-apl6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/=
shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21436/shard-apl7/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/=
shard-apl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21436/shard-apl8/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/=
shard-apl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21436/shard-apl1/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl1/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/=
shard-apl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21436/shard-apl2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/=
shard-apl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21436/shard-apl3/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-apl3/boot.html">PAS=
S</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-3x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-tglb5/igt@feature_discovery@display-3x.=
html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-tglb8/igt@gem_ctx_isolation@preservation-s3@bcs0.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21436/shard-tglb7/igt@gem_ctx_isolation@preservation-s3@bcs0.html">INCOMP=
LETE</a> ([i915#456])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1436/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i=
915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-tglb2/igt@gem_exec_fair@basic-none-vip@=
rcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/sh=
ard-glk7/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/s=
hard-apl7/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842] / =
[i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-tglb3/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/=
shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842])=
</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-tglb2/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tgl=
b6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-ctx-execution:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-tglb5/igt@gem_pxp@verify-pxp-stale-ctx-=
execution.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-tglb5/igt@gem_userptr_blits@access-cont=
rol.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen3_render_linear_blits:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-tglb2/igt@gen3_render_linear_blits.html=
">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-iclb3=
/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-tglb2/igt@kms_addfb_basic@invalid-smem-=
bo-on-discrete.html">SKIP</a> ([i915#3826])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-skl6/igt@kms_async_flips@alternate-sync-async-flip.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21436/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip.html">FA=
IL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-tglb2/igt@kms_atomic@plane-primary-over=
lay-mutable-zpos.html">SKIP</a> ([i915#404])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-tglb5/igt@kms_big_fb@linear-32bpp-rotat=
e-270.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-glk2/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21=
436/shard-glk3/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">DMESG-WARN</a>=
 ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21436/shard-skl8/igt@kms_big_fb@x-tiled-max-hw-strid=
e-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21436/shard-kbl1/igt@kms_big_fb@x-tiled-max-hw-strid=
e-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-glk3/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-tglb2/igt@kms_big_fb@yf-tiled-8bpp-rota=
te-90.html">SKIP</a> ([fdo#111615]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-tglb2/igt@kms_big_joiner@invalid-modese=
t.html">SKIP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-skl9/igt@kms_ccs@pipe-a-random-ccs-data=
-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-apl2/igt@kms_ccs@pipe-c-crc-primary-bas=
ic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-glk3/igt@kms_ccs@pipe-c-missing-ccs-buf=
fer-y_tiled_ccs.html">SKIP</a> ([fdo#109271]) +40 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-tglb2/igt@kms_ccs@pipe-c-missing-ccs-bu=
ffer-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886]) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-tglb5/igt@kms_ccs@pipe-c-missing-ccs-bu=
ffer-yf_tiled_ccs.html">SKIP</a> ([i915#3689]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-apl6/igt@kms_cdclk@mode-transition.html=
">SKIP</a> ([fdo#109271]) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-kbl1/igt@kms_chamelium@dp-hpd-enable-di=
sable-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-single:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-apl2/igt@kms_chamelium@hdmi-crc-single.=
html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-skl9/igt@kms_chamelium@hdmi-hpd.html">S=
KIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-5:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-tglb2/igt@kms_color_chamelium@pipe-b-ct=
m-0-5.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-max:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-glk3/igt@kms_color_chamelium@pipe-d-ctm=
-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-tglb2/igt@kms_content_protection@type1.=
html">SKIP</a> ([fdo#111828])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x10-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-=
32x10-random.html">SKIP</a> ([i915#3359]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-=
32x32-rapid-movement.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-=
512x512-offscreen.html">SKIP</a> ([fdo#109279] / [i915#3359]) +3 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-iclb4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-trans=
itions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21436/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomi=
c-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21436/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.=
html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-skl9/igt@kms_cursor_legacy@pipe-d-singl=
e-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-tglb5/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard=
-tglb7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#2411] / [i=
915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-skl10/igt@kms_flip@plain-flip-ts-check@b-edp1.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1436/shard-skl10/igt@kms_flip@plain-flip-ts-check@b-edp1.html">FAIL</a> ([i=
915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp=
-ytile.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21436/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-t=
o-64bpp-ytile.html">SKIP</a> ([i915#3701])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-skl8/igt@kms_frontbuffer_tracking@fbc-f=
arfromfence-mmap-gtt.html">SKIP</a> ([fdo#109271]) +69 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-tglb5/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-spr-indfb-draw-pwrite.html">SKIP</a> ([fdo#111825]) +13 similar=
 issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-sk=
l8/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10783/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-=
kbl4/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> ([i915#180]) +5 si=
milar issues</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21436/shard-apl6/igt@kms_hdr@bpc-switch-suspend.html=
">DMESG-WARN</a> ([i915#180])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-kbl1/igt@kms_pipe_b_c_ivb@pipe-b-dpms-o=
ff-modeset-pipe-c.html">SKIP</a> ([fdo#109271]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-glk3/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-=
alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-tglb5/igt@kms_psr2_sf@overlay-primary-u=
pdate-sf-dmg-area-4.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21436/shard-skl9/igt@kms_psr2_su@frontbuffer.html">S=
KIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10783/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-ic=
lb1/igt@kms_psr2_su@frontbuffer.html">SKIP</a> ([fdo#109642] / [fdo#111068]=
 / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-i=
clb6/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-glk7/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-glk1/igt=
@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21436/shard-apl6/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">DM=
ESG-WARN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-outp-inactive:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-tglb5/igt@nouveau_crc@pipe-c-source-out=
p-inactive.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-skl9/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard=
-skl4/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-skl10/igt@perf@polling-small-buf.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21436/shard-sk=
l10/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1722])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@i915_import_cpu_mmap:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-tglb2/igt@prime_nv_test@i915_import_cpu=
_mmap.html">SKIP</a> ([fdo#109291]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-tglb5/igt@prime_vgem@basic-userptr.html=
">SKIP</a> ([i915#3301])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-skl10/igt@sysfs_clients@fair-0.html">SK=
IP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-glk3/igt@sysfs_clients@sema-25.html">SK=
IP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-tglb5/igt@sysfs_clients@sema-50.html">S=
KIP</a> ([i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21436/shard-kbl1/igt@sysfs_clients@split-50.html">S=
KIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-glk7/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([=
i915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21436/shard-glk1/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-glk4/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21436/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PA=
SS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-apl2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21436/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21436/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@requests:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-skl7/igt@i915_selftest@mock@requests.html">INCOMPLETE</=
a> ([i915#198]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_21436/shard-skl10/igt@i915_selftest@mock@requests.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-iclb2/igt@i915_suspend@fence-restore-untiled.html">FAIL=
</a> ([fdo#103375]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21436/shard-iclb1/igt@i915_suspend@fence-restore-untiled.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-suspend.html">IN=
COMPLETE</a> ([i915#2411] / [i915#4211]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_21436/shard-tglb2/igt@kms_cursor_crc@pipe=
-d-cursor-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">=
FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_21436/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-toggl=
e.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-tglb7/igt@kms_fbcon_fbt@psr-suspend.html">INCOMPLETE</a=
> ([i915#2411] / [i915#456]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_21436/shard-tglb5/igt@kms_fbcon_fbt@psr-suspend.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">F=
AIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21436/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@b-edp1.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_21436/shard-apl2/igt@kms_flip@flip-vs-suspend-int=
erruptible@c-dp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.ht=
ml">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_21436/shard-skl10/igt@kms_plane_alpha_ble=
nd@pipe-b-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (=
[fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21436/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-accuracy-idle:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-glk9/igt@kms_vblank@pipe-a-accuracy-idle.html">FAIL</a>=
 ([i915#43]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21436/shard-glk5/igt@kms_vblank@pipe-a-accuracy-idle.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-kbl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html=
">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21436/shard-kbl1/igt@kms_vblank@pipe-c-ts-continuati=
on-suspend.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10783/shard-skl9/igt@perf@polling.html">FAIL</a> ([i915#1542]) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P">PASS</a></li>
</ul>
</li>
</ul>

</body>
</html>

--===============7643985262246357096==--
