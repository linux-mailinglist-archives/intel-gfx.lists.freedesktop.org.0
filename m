Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6BF487C4B
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 19:40:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 938A410EB6E;
	Fri,  7 Jan 2022 18:40:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0571A10EBA5;
 Fri,  7 Jan 2022 18:40:18 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EA42AA008A;
 Fri,  7 Jan 2022 18:40:17 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4810258206358066408=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Fri, 07 Jan 2022 18:40:17 -0000
Message-ID: <164158081792.24388.9326800638332114931@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220107142343.56811-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20220107142343.56811-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Asynchronous_vma_unbinding_=28rev6=29?=
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

--===============4810258206358066408==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Asynchronous vma unbinding (rev6)
URL   : https://patchwork.freedesktop.org/series/98055/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11053_full -> Patchwork_21942_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21942_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_gttfill@engines@vecs0:
    - {shard-rkl}:        [PASS][1] -> ([PASS][2], [INCOMPLETE][3])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-rkl-6/igt@gem_exec_gttfill@engines@vecs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-rkl-4/igt@gem_exec_gttfill@engines@vecs0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-rkl-5/igt@gem_exec_gttfill@engines@vecs0.html

  * igt@gem_exec_parallel@fds@vcs0:
    - {shard-rkl}:        [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-rkl-5/igt@gem_exec_parallel@fds@vcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-rkl-5/igt@gem_exec_parallel@fds@vcs0.html

  * igt@gem_userptr_blits@create-destroy-sync:
    - {shard-rkl}:        NOTRUN -> [INCOMPLETE][6] +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-rkl-5/igt@gem_userptr_blits@create-destroy-sync.html

  
Known issues
------------

  Here are the changes found in Patchwork_21942_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-skl:          NOTRUN -> [DMESG-WARN][7] ([i915#3002])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl9/igt@gem_create@create-massive.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-tglb:         NOTRUN -> [SKIP][8] ([i915#280])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb2/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_eio@in-flight-1us:
    - shard-tglb:         [PASS][9] -> [TIMEOUT][10] ([i915#3063])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-tglb5/igt@gem_eio@in-flight-1us.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb1/igt@gem_eio@in-flight-1us.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#2846])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-kbl4/igt@gem_exec_fair@basic-deadline.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-kbl6/igt@gem_exec_fair@basic-deadline.html
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#2846])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-glk7/igt@gem_exec_fair@basic-deadline.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-glk8/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-skl:          NOTRUN -> [SKIP][15] ([fdo#109271]) +198 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl3/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [PASS][16] -> [FAIL][17] ([i915#2842]) +3 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [PASS][18] -> [FAIL][19] ([i915#2842])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][20] -> [FAIL][21] ([i915#2842])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_lmem_swapping@random:
    - shard-glk:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#4613])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-glk4/igt@gem_lmem_swapping@random.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-skl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#4613])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl3/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-tglb:         NOTRUN -> [SKIP][24] ([i915#4270])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb3/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-skl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#3323])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl9/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][26] ([i915#3002])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-kbl4/igt@gem_userptr_blits@input-checking.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-tglb:         NOTRUN -> [SKIP][27] ([i915#2527] / [i915#2856])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb2/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-iclb:         NOTRUN -> [SKIP][28] ([i915#2856])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-iclb5/igt@gen9_exec_parse@unaligned-access.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          NOTRUN -> [FAIL][29] ([i915#454])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-tglb:         NOTRUN -> [SKIP][30] ([fdo#109303])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb1/igt@i915_query@query-topology-known-pci-ids.html

  * igt@i915_selftest@live@gt_pm:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][31] ([i915#1886] / [i915#2291])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl9/igt@i915_selftest@live@gt_pm.html

  * igt@i915_suspend@sysfs-reader:
    - shard-apl:          [PASS][32] -> [DMESG-WARN][33] ([i915#180]) +7 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-apl6/igt@i915_suspend@sysfs-reader.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-apl8/igt@i915_suspend@sysfs-reader.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][34] -> [FAIL][35] ([i915#2521])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][36] ([fdo#111614])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb2/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-glk:          [PASS][37] -> [DMESG-WARN][38] ([i915#118])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-glk9/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-glk5/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-tglb:         [PASS][39] -> [FAIL][40] ([i915#3743])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-tglb2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][41] ([i915#3743])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#3777])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-kbl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#3777]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([i915#3689]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb3/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_ccs.html

  * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#3886])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-apl1/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#3886])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-kbl4/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#3886]) +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-glk4/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][48] ([fdo#111615] / [i915#3689]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb3/igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#3886]) +7 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl5/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][50] ([i915#3689] / [i915#3886])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb2/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-crc-primary-rotation-180-yf_tiled_ccs:
    - shard-apl:          NOTRUN -> [SKIP][51] ([fdo#109271]) +24 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-apl1/igt@kms_ccs@pipe-d-crc-primary-rotation-180-yf_tiled_ccs.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-glk:          NOTRUN -> [SKIP][52] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-glk4/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@dp-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-kbl4/igt@kms_chamelium@dp-hpd-for-each-pipe.html

  * igt@kms_color_chamelium@pipe-c-degamma:
    - shard-tglb:         NOTRUN -> [SKIP][54] ([fdo#109284] / [fdo#111827]) +4 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb2/igt@kms_color_chamelium@pipe-c-degamma.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [fdo#111827])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-apl1/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-d-degamma:
    - shard-skl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl9/igt@kms_color_chamelium@pipe-d-degamma.html

  * igt@kms_content_protection@legacy:
    - shard-glk:          NOTRUN -> [SKIP][57] ([fdo#109271]) +38 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-glk4/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x10-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][58] ([i915#3359])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-32x10-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          NOTRUN -> [INCOMPLETE][59] ([i915#300])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][60] ([fdo#109279] / [i915#3359]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][61] ([fdo#109274] / [fdo#109278])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-iclb5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-tglb:         NOTRUN -> [SKIP][62] ([i915#4103])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][63] ([fdo#109274] / [fdo#111825]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb2/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [PASS][64] -> [FAIL][65] ([i915#79]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-dp1:
    - shard-kbl:          [PASS][66] -> [FAIL][67] ([i915#79])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-kbl6/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@b-dp1:
    - shard-apl:          [PASS][68] -> [INCOMPLETE][69] ([i915#180])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-apl2/igt@kms_flip@flip-vs-suspend@b-dp1.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-apl6/igt@kms_flip@flip-vs-suspend@b-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-tglb:         [PASS][70] -> [FAIL][71] ([i915#2122])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-tglb2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb8/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:
    - shard-skl:          [PASS][72] -> [FAIL][73] ([i915#2122])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
    - shard-kbl:          NOTRUN -> [SKIP][74] ([fdo#109271]) +39 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite:
    - shard-tglb:         NOTRUN -> [SKIP][75] ([fdo#109280] / [fdo#111825]) +6 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          NOTRUN -> [FAIL][76] ([i915#1188]) +1 similar issue
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][77] ([fdo#108145] / [i915#265]) +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
    - shard-apl:          NOTRUN -> [FAIL][78] ([fdo#108145] / [i915#265])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][79] ([i915#265])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][80] -> [FAIL][81] ([fdo#108145] / [i915#265]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-c-overlay-size-256:
    - shard-iclb:         [PASS][82] -> [FAIL][83] ([i915#1888] / [i915#4729])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-iclb7/igt@kms_plane_cursor@pipe-c-overlay-size-256.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-iclb7/igt@kms_plane_cursor@pipe-c-overlay-size-256.html

  * igt@kms_plane_lowres@pipe-b-tiling-x:
    - shard-tglb:         NOTRUN -> [SKIP][84] ([i915#3536])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb1/igt@kms_plane_lowres@pipe-b-tiling-x.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-glk:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#2733])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-glk4/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#658])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl9/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
    - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#658])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-apl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-kbl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#658]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-kbl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-tglb:         NOTRUN -> [SKIP][89] ([i915#1911])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109441])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-tglb:         NOTRUN -> [FAIL][91] ([i915#132] / [i915#3467])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb3/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][92] -> [SKIP][93] ([fdo#109441])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-iclb6/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_sysfs_edid_timing:
    - shard-skl:          NOTRUN -> [FAIL][94] ([IGT#2])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl3/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][95] -> [DMESG-WARN][96] ([i915#180] / [i915#295])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-query-forked-hang:
    - shard-snb:          NOTRUN -> [SKIP][97] ([fdo#109271]) +12 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-snb7/igt@kms_vblank@pipe-d-query-forked-hang.html

  * igt@kms_vrr@flipline:
    - shard-tglb:         NOTRUN -> [SKIP][98] ([fdo#109502])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb3/igt@kms_vrr@flipline.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-skl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#2437]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl5/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-tglb:         NOTRUN -> [SKIP][100] ([fdo#109289])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb2/igt@perf@per-context-mode-unprivileged.html

  * igt@prime_nv_pcopy@test3_2:
    - shard-tglb:         NOTRUN -> [SKIP][101] ([fdo#109291]) +2 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb1/igt@prime_nv_pcopy@test3_2.html

  * igt@sysfs_clients@fair-7:
    - shard-glk:          NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#2994])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-glk4/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@pidname:
    - shard-tglb:         NOTRUN -> [SKIP][103] ([i915#2994])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb3/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@recycle-many:
    - shard-apl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#2994])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-apl1/igt@sysfs_clients@recycle-many.html
    - shard-skl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#2994])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl9/igt@sysfs_clients@recycle-many.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@nonpriv-switch@vecs0:
    - {shard-rkl}:        [INCOMPLETE][106] -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-rkl-5/igt@gem_ctx_isolation@nonpriv-switch@vecs0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-rkl-5/igt@gem_ctx_isolation@nonpriv-switch@vecs0.html

  * igt@gem_ctx_persistence@engines-hang@rcs0:
    - {shard-dg1}:        [DMESG-WARN][108] ([i915#4892]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-dg1-18/igt@gem_ctx_persistence@engines-hang@rcs0.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-dg1-18/igt@gem_ctx_persistence@engines-hang@rcs0.html

  * igt@gem_eio@in-flight-suspend:
    - shard-apl:          [DMESG-WARN][110] ([i915#180]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-apl1/igt@gem_eio@in-flight-suspend.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-apl1/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@unwedge-stress:
    - {shard-tglu}:       [TIMEOUT][112] ([i915#3063] / [i915#3648]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-tglu-8/igt@gem_eio@unwedge-stress.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglu-6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@bonded-pair:
    - {shard-tglu}:       [FAIL][114] ([i915#1888]) -> [PASS][115] +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-tglu-6/igt@gem_exec_balancer@bonded-pair.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglu-8/igt@gem_exec_balancer@bonded-pair.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-iclb:         [SKIP][116] ([i915#4525]) -> [PASS][117] +4 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-iclb8/igt@gem_exec_balancer@parallel-out-fence.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-iclb4/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-apl:          [FAIL][118] ([i915#2842]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-apl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-apl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [FAIL][120] ([i915#2842]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs0.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][122] ([i915#2849]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_fence@expired-history:
    - {shard-rkl}:        [DMESG-WARN][124] -> ([PASS][125], [PASS][126])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-rkl-5/igt@gem_exec_fence@expired-history.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-rkl-4/igt@gem_exec_fence@expired-history.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-rkl-1/igt@gem_exec_fence@expired-history.html

  * igt@gem_exec_whisper@basic-normal-all:
    - {shard-rkl}:        ([PASS][127], [FAIL][128]) -> [PASS][129]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-rkl-4/igt@gem_exec_whisper@basic-normal-all.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-rkl-5/igt@gem_exec_whisper@basic-normal-all.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-rkl-1/igt@gem_exec_whisper@basic-normal-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][130] ([i915#2190]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-tglb7/igt@gem_huc_copy@huc-copy.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb5/igt@gem_huc_copy@huc-copy.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [DMESG-WARN][132] ([i915#1436] / [i915#716]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-skl9/igt@gen9_exec_parse@allowed-all.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl10/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - {shard-rkl}:        [SKIP][134] ([i915#3012]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-rkl-2/igt@i915_pm_backlight@fade_with_suspend.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-rkl-6/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][136] ([i915#454]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [INCOMPLETE][138] ([i915#3921]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-snb7/igt@i915_selftest@live@hangcheck.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-snb7/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - {shard-tglu}:       [DMESG-WARN][140] ([i915#402]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-tglu-6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Pat

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/index.html

--===============4810258206358066408==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>drm/i915: Asynchronous vma unbinding (rev6)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98055/">https://patchwork.freedesktop.org/series/98055/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11053_full -&gt; Patchwork_21942_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21942_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_gttfill@engines@vecs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-rkl-6/igt@gem_exec_gttfill@engines@vecs0.html">PASS</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-rkl-4/igt@gem_exec_gttfill@engines@vecs0.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-rkl-5/igt@gem_exec_gttfill@engines@vecs0.html">INCOMPLETE</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@fds@vcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-rkl-5/igt@gem_exec_parallel@fds@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-rkl-5/igt@gem_exec_parallel@fds@vcs0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-sync:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-rkl-5/igt@gem_userptr_blits@create-destroy-sync.html">INCOMPLETE</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21942_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl9/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb2/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-1us:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-tglb5/igt@gem_eio@in-flight-1us.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb1/igt@gem_eio@in-flight-1us.html">TIMEOUT</a> ([i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-kbl4/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-kbl6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-glk7/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-glk8/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl3/igt@gem_exec_fair@basic-flow@rcs0.html">SKIP</a> ([fdo#109271]) +198 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-kbl6/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#2842]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-glk4/igt@gem_lmem_swapping@random.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl3/igt@gem_lmem_swapping@random-engines.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb3/igt@gem_pxp@protected-raw-src-copy-not-readible.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl9/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-kbl4/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb2/igt@gen9_exec_parse@bb-start-cmd.html">SKIP</a> ([i915#2527] / [i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-iclb5/igt@gen9_exec_parse@unaligned-access.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb1/igt@i915_query@query-topology-known-pci-ids.html">SKIP</a> ([fdo#109303])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl9/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> ([i915#1886] / [i915#2291])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-apl6/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-apl8/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a> ([i915#180]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb2/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-glk9/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-glk5/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">DMESG-WARN</a> ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-tglb2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl5/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-kbl4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb3/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-apl1/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-kbl4/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-glk4/igt@kms_ccs@pipe-b-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb3/igt@kms_ccs@pipe-b-crc-primary-rotation-180-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl5/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb2/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-rotation-180-yf_tiled_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-apl1/igt@kms_ccs@pipe-d-crc-primary-rotation-180-yf_tiled_ccs.html">SKIP</a> ([fdo#109271]) +24 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-glk4/igt@kms_chamelium@dp-crc-multiple.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-kbl4/igt@kms_chamelium@dp-hpd-for-each-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-degamma:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb2/igt@kms_color_chamelium@pipe-c-degamma.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-apl1/igt@kms_color_chamelium@pipe-d-ctm-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-degamma:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl9/igt@kms_color_chamelium@pipe-d-degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-glk4/igt@kms_content_protection@legacy.html">SKIP</a> ([fdo#109271]) +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x10-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-32x10-onscreen.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">INCOMPLETE</a> ([i915#300])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-512x170-offscreen.html">SKIP</a> ([fdo#109279] / [i915#3359]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-iclb5/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html">SKIP</a> ([fdo#109274] / [fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html">SKIP</a> ([i915#4103])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb2/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html">SKIP</a> ([fdo#109274] / [fdo#111825]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">FAIL</a> ([i915#79]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-kbl7/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-kbl6/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-apl2/igt@kms_flip@flip-vs-suspend@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-apl6/igt@kms_flip@flip-vs-suspend@b-dp1.html">INCOMPLETE</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-tglb2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb8/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl5/igt@kms_flip@plain-flip-ts-check-interruptible@a-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +39 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-pwrite.html">SKIP</a> ([fdo#109280] / [fdo#111825]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-c-overlay-size-256:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-iclb7/igt@kms_plane_cursor@pipe-c-overlay-size-256.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-iclb7/igt@kms_plane_cursor@pipe-c-overlay-size-256.html">FAIL</a> ([i915#1888] / [i915#4729])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb1/igt@kms_plane_lowres@pipe-b-tiling-x.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-glk4/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl9/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-apl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-kbl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> ([i915#1911])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_gtt.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb3/igt@kms_psr@psr2_no_drrs.html">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-iclb6/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl3/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-forked-hang:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-snb7/igt@kms_vblank@pipe-d-query-forked-hang.html">SKIP</a> ([fdo#109271]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb3/igt@kms_vrr@flipline.html">SKIP</a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl5/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb2/igt@perf@per-context-mode-unprivileged.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_2:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb1/igt@prime_nv_pcopy@test3_2.html">SKIP</a> ([fdo#109291]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-glk4/igt@sysfs_clients@fair-7.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb3/igt@sysfs_clients@pidname.html">SKIP</a> ([i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-apl1/igt@sysfs_clients@recycle-many.html">SKIP</a> ([fdo#109271] / [i915#2994])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl9/igt@sysfs_clients@recycle-many.html">SKIP</a> ([fdo#109271] / [i915#2994])</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@nonpriv-switch@vecs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-rkl-5/igt@gem_ctx_isolation@nonpriv-switch@vecs0.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-rkl-5/igt@gem_ctx_isolation@nonpriv-switch@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-hang@rcs0:</p>
<ul>
<li>{shard-dg1}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-dg1-18/igt@gem_ctx_persistence@engines-hang@rcs0.html">DMESG-WARN</a> ([i915#4892]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-dg1-18/igt@gem_ctx_persistence@engines-hang@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-apl1/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-apl1/igt@gem_eio@in-flight-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-tglu-8/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#3063] / [i915#3648]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglu-6/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-pair:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-tglu-6/igt@gem_exec_balancer@bonded-pair.html">FAIL</a> ([i915#1888]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglu-8/igt@gem_exec_balancer@bonded-pair.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-iclb8/igt@gem_exec_balancer@parallel-out-fence.html">SKIP</a> ([i915#4525]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-iclb4/igt@gem_exec_balancer@parallel-out-fence.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-apl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-apl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@expired-history:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-rkl-5/igt@gem_exec_fence@expired-history.html">DMESG-WARN</a> -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-rkl-4/igt@gem_exec_fence@expired-history.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-rkl-1/igt@gem_exec_fence@expired-history.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-normal-all:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-rkl-4/igt@gem_exec_whisper@basic-normal-all.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-rkl-5/igt@gem_exec_whisper@basic-normal-all.html">FAIL</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-rkl-1/igt@gem_exec_whisper@basic-normal-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-tglb5/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-skl9/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [i915#716]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-skl10/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_suspend:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-rkl-2/igt@i915_pm_backlight@fade_with_suspend.html">SKIP</a> ([i915#3012]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-rkl-6/igt@i915_pm_backlight@fade_with_suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-snb7/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#3921]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21942/shard-snb7/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-0:</p>
<ul>
<li>{shard-tglu}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11053/shard-tglu-6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">DMESG-WARN</a> ([i915#402]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Pat">PASS</a></li>
</ul>
</li>
</ul>

</body>
</html>

--===============4810258206358066408==--
