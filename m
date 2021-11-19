Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 408D14566FE
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Nov 2021 01:47:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A5786E9D8;
	Fri, 19 Nov 2021 00:47:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 28EF96E9D8;
 Fri, 19 Nov 2021 00:47:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1DCEBA9932;
 Fri, 19 Nov 2021 00:47:52 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7971513034701468438=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kahola, Mika" <mika.kahola@intel.com>
Date: Fri, 19 Nov 2021 00:47:52 -0000
Message-ID: <163728287208.2300.18352245032706790409@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211118085424.685686-1-mika.kahola@intel.com>
In-Reply-To: <20211118085424.685686-1-mika.kahola@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display/dg2=3A_Add_CD_clock_squashing?=
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

--===============7971513034701468438==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display/dg2: Add CD clock squashing
URL   : https://patchwork.freedesktop.org/series/97058/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10900_full -> Patchwork_21626_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21626_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_prime@basic-crc@second-to-first:
    - {shard-rkl}:        ([PASS][1], [SKIP][2]) -> ([SKIP][3], [FAIL][4])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-rkl-6/igt@kms_prime@basic-crc@second-to-first.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-rkl-4/igt@kms_prime@basic-crc@second-to-first.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-rkl-4/igt@kms_prime@basic-crc@second-to-first.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-rkl-2/igt@kms_prime@basic-crc@second-to-first.html

  
Known issues
------------

  Here are the changes found in Patchwork_21626_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-skl:          NOTRUN -> [DMESG-WARN][5] ([i915#3002])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl7/igt@gem_create@create-massive.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [PASS][6] -> [TIMEOUT][7] ([i915#2369] / [i915#2481] / [i915#3070])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-iclb3/igt@gem_eio@unwedge-stress.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-iclb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_capture@pi@vecs0:
    - shard-iclb:         NOTRUN -> [INCOMPLETE][8] ([i915#2369])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-iclb7/igt@gem_exec_capture@pi@vecs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-iclb7/igt@gem_exec_fair@basic-none@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-iclb4/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          NOTRUN -> [FAIL][11] ([i915#2842]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
    - shard-tglb:         NOTRUN -> [FAIL][12] ([i915#2842]) +4 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][13] ([i915#2842]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-tglb:         [PASS][14] -> [FAIL][15] ([i915#2842])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][16] -> [FAIL][17] ([i915#2842])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html
    - shard-iclb:         [PASS][18] -> [FAIL][19] ([i915#2849])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_whisper@basic-forked-all:
    - shard-glk:          [PASS][20] -> [DMESG-WARN][21] ([i915#118])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-glk9/igt@gem_exec_whisper@basic-forked-all.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-glk2/igt@gem_exec_whisper@basic-forked-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#2190])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-apl4/igt@gem_huc_copy@huc-copy.html
    - shard-kbl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#2190])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-kbl4/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-tglb:         NOTRUN -> [SKIP][24] ([i915#4555] / [i915#4565])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb8/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-iclb:         NOTRUN -> [WARN][25] ([i915#2658])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-iclb8/igt@gem_pwrite@basic-exhaustion.html
    - shard-tglb:         NOTRUN -> [WARN][26] ([i915#2658])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb8/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-tglb:         NOTRUN -> [SKIP][27] ([i915#4270])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_softpin@noreloc-s3:
    - shard-tglb:         [PASS][28] -> [INCOMPLETE][29] ([i915#1373] / [i915#456])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-tglb5/igt@gem_softpin@noreloc-s3.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb7/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-skl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#3323])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl10/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-tglb:         NOTRUN -> [DMESG-WARN][31] ([i915#3002])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-tglb:         NOTRUN -> [SKIP][32] ([i915#3297]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [FAIL][33] ([i915#3318])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-apl3/igt@gem_userptr_blits@vma-merge.html
    - shard-skl:          NOTRUN -> [FAIL][34] ([i915#3318])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl10/igt@gem_userptr_blits@vma-merge.html

  * igt@gen3_render_linear_blits:
    - shard-tglb:         NOTRUN -> [SKIP][35] ([fdo#109289]) +4 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb8/igt@gen3_render_linear_blits.html

  * igt@gen9_exec_parse@bb-large:
    - shard-tglb:         NOTRUN -> [SKIP][36] ([i915#2856])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb5/igt@gen9_exec_parse@bb-large.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          NOTRUN -> [FAIL][37] ([i915#454])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl7/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
    - shard-tglb:         NOTRUN -> [SKIP][38] ([fdo#109506] / [i915#2411])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - shard-skl:          [PASS][39] -> [DMESG-WARN][40] ([i915#1982])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-skl9/igt@i915_pm_rpm@modeset-lpsp.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl9/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress:
    - shard-tglb:         NOTRUN -> [SKIP][41] ([fdo#111644] / [i915#1397] / [i915#2411])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@i915_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][42] -> [FAIL][43] ([i915#2521])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl8/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([fdo#111614]) +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-skl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#3777]) +4 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][46] ([i915#3763])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl9/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-tglb:         NOTRUN -> [SKIP][47] ([fdo#111615]) +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][48] ([i915#3743]) +3 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl9/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#3886]) +3 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-apl1/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][50] ([i915#3689] / [i915#3886]) +3 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][51] ([fdo#111615] / [i915#3689]) +5 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#3886]) +15 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl10/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#3886]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-kbl1/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][54] ([i915#3689]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_ccs.html

  * igt@kms_chamelium@hdmi-audio-edid:
    - shard-kbl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-kbl1/igt@kms_chamelium@hdmi-audio-edid.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-apl3/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          NOTRUN -> [DMESG-WARN][57] ([i915#1982])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl7/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-5:
    - shard-tglb:         NOTRUN -> [SKIP][58] ([fdo#109284] / [fdo#111827]) +5 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@kms_color_chamelium@pipe-b-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [fdo#111827]) +35 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl4/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_content_protection@type1:
    - shard-tglb:         NOTRUN -> [SKIP][60] ([fdo#111828])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-random:
    - shard-tglb:         NOTRUN -> [SKIP][61] ([fdo#109279] / [i915#3359]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-512x170-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][62] -> [INCOMPLETE][63] ([i915#300])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
    - shard-tglb:         [PASS][64] -> [INCOMPLETE][65] ([i915#2411] / [i915#456]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-tglb8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x10-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][66] ([i915#3359]) +5 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-32x10-rapid-movement.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x32-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][67] ([i915#3319]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-32x32-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding:
    - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271]) +86 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-apl3/igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          NOTRUN -> [FAIL][69] ([i915#2346] / [i915#533])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-flip-vs-rmfb:
    - shard-tglb:         NOTRUN -> [SKIP][70] ([fdo#111825]) +21 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb8/igt@kms_flip@2x-flip-vs-rmfb.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][71] -> [DMESG-WARN][72] ([i915#180]) +4 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-apl:          [PASS][73] -> [DMESG-WARN][74] ([i915#180])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-apl6/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:
    - shard-skl:          NOTRUN -> [FAIL][75] ([i915#2122]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-skl:          NOTRUN -> [INCOMPLETE][76] ([i915#3699])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
    - shard-iclb:         [PASS][77] -> [SKIP][78] ([i915#3701])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2672])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-apl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:
    - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271]) +498 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl4/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-rte:
    - shard-glk:          [PASS][81] -> [FAIL][82] ([i915#1888] / [i915#2546])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-rte.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-rte.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-tglb:         [PASS][83] -> [INCOMPLETE][84] ([i915#2828] / [i915#456])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:
    - shard-kbl:          NOTRUN -> [SKIP][85] ([fdo#109271]) +29 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-kbl4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          NOTRUN -> [FAIL][86] ([i915#1188])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-swap:
    - shard-tglb:         NOTRUN -> [SKIP][87] ([i915#1187])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb5/igt@kms_hdr@static-swap.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#533])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-apl3/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#533]) +2 similar issues
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl7/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][90] -> [FAIL][91] ([fdo#108145] / [i915#265])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][92] ([i915#265]) +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          NOTRUN -> [FAIL][93] ([fdo#108145] / [i915#265]) +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][94] ([fdo#111615] / [fdo#112054])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-apl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#2733])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-apl3/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html
    - shard-skl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#2733])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl10/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_prime@basic-crc@first-to-second:
    - shard-tglb:         NOTRUN -> [SKIP][97] ([i915#1836])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb8/igt@kms_prime@basic-crc@first-to-second.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-tglb:         NOTRUN -> [SKIP][98] ([i915#2920]) +3 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-skl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#658]) +7 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl7/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - shard-iclb:         [PASS][100] -> [SKIP][101] ([fdo#109441]) +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-tglb:         NOTRUN -> [FAIL][102] ([i915#132] / [i915#3467]) +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb8/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][103] -> [FAIL][104] ([i915#31])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-glk5/igt@kms_setmode@basic.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-glk9/igt@kms_setmode@basic.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][105] ([IGT#2])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-apl3/igt@kms_sysfs_edid_timing.html
    - shard-skl:          NOTRUN -> [FAIL][106] ([IGT#2])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl10/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-d-ts-continuation-modeset-hang:
    - shard-iclb:         NOTRUN -> [SKIP][107] ([fdo#109278])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-iclb8/igt@kms_vblank@pipe-d-ts-continuation-modeset-hang.html

  * igt@kms_vrr@flip-suspend:
    - shard-tglb:         NOTRUN -> [SKIP][108] ([fdo#109502])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb8/igt@kms_vrr@flip-suspend.html

  * igt@kms_writeback@writeback-check-output:
    - shard-skl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#2437])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl10/igt@kms_writeback@writeback-check-output.html

  * igt@nouveau_crc@pipe-c-source-outp-complete:
    - shard-tglb:         NOTRUN -> [SKIP][110] ([i915#2530]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb5/igt@nouveau_crc@pipe-c-source-outp-complete.html

  * igt@perf@polling-parameterized:
    - shard-iclb:         [PASS][111] -> [FAIL][112] ([i915#1542])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-iclb4/igt@perf@polling-parameterized.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-iclb8/igt@perf@polling-parameterized.html

  * igt@prime_nv_pcopy@test2:
    - shard-tglb:         NOTRUN -> [SKIP][113] ([fdo#109291])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@prime_nv_pcopy@test2.html

  * igt@sysfs_clients@fair-0:
    - shard-skl:          NOTRUN -> [SKIP][114] ([fdo#109271] / [i915#2994]) +5 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl9/igt@sysfs_clients@fair-0.html
    - shard-apl:          NOTRUN -> [SKIP][115] ([fdo#109271] / [i915#2994]) +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-apl4/igt@sysfs_clients@fair-0.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-tglb:         NOTRUN -> [SKIP][116] ([fdo#109307])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@tools_test@sysfs_l3_parity.html

  
#### Possible fixes ####

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][117] ([i915#2369] / [i915#3063] / [i915#3648]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-tglb8/igt@gem_eio@unwedge-stress.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_capture@pi@vcs0:
    - shard-iclb:         [INCOMPLETE][119] ([i915#2369]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-iclb4/igt@gem_exec_capture@pi@vcs0.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-iclb7/igt@gem_exec_capture@pi@vcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [FAIL][121] ([i915#2842]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-glk3/igt@gem_exec_fair@basic-none@rcs0.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-glk7/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [FAIL][123] ([i915#2842]) -> [PASS][124] +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [DMESG-WARN][125] ([i915#180]) -> [PASS][126] +3 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-apl8/igt@gem_workarounds@suspend-resume-context.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-apl1/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_backlight@bad-brightness:
    - {shard-rkl}:        [SKIP][127] ([i915#3012]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-rkl-2/igt@i915_pm_backlight@bad-brightness.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-rkl-6/igt@i915_pm_backlight@bad-brightness.html

  * igt@i915_pm_dc@dc6-psr:
    - {shard-rkl}:        ([SKIP][129], [SKIP][130]) ([i915#658]) -> [PASS][131]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-rkl-1/igt@i915_pm_dc@dc6-psr.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-rkl-4/igt@i915_pm_dc@dc6-psr.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html
    - shard-iclb:         [FAIL][132] ([i915#454]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-iclb7/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-glk:          [DMESG-WARN][134] ([i915#118]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_big_fb@linear-8bpp-rotate-180:
    - {shard-rkl}:        ([SKIP][136], [SKIP][137]) ([i915#1845]) -> [PASS][138] +5 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-rkl-1/igt@kms_big_fb@linear-8bpp-rotate-180.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-rkl-4/igt@kms_big_fb@linear-8bpp-rotate-180.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-180.html

  * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180:
    - {shard-rkl}:        ([PASS][139], [SKIP][140]) ([i915#1845]) -> [PASS][141] +3 similar issues
   [13

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/index.html

--===============7971513034701468438==
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
<tr><td><b>Series:</b></td><td>drm/i915/display/dg2: Add CD clock squashing</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/97058/">https://patchwork.freedesktop.org/series/97058/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10900_full -&gt; Patchwork_21626_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21626_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_prime@basic-crc@second-to-first:<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-rkl-6/igt@kms_prime@basic-crc@second-to-first.html">PASS</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-rkl-4/igt@kms_prime@basic-crc@second-to-first.html">SKIP</a>) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-rkl-4/igt@kms_prime@basic-crc@second-to-first.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-rkl-2/igt@kms_prime@basic-crc@second-to-first.html">FAIL</a>)</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21626_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl7/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-iclb3/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-iclb5/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#2481] / [i915#3070])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vecs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-iclb7/igt@gem_exec_capture@pi@vecs0.html">INCOMPLETE</a> ([i915#2369])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-iclb7/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-iclb4/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2849])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-glk9/igt@gem_exec_whisper@basic-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-glk2/igt@gem_exec_whisper@basic-forked-all.html">DMESG-WARN</a> ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-apl4/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-kbl4/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb8/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> ([i915#4555] / [i915#4565])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-iclb8/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb8/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-tglb5/igt@gem_softpin@noreloc-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb7/igt@gem_softpin@noreloc-s3.html">INCOMPLETE</a> ([i915#1373] / [i915#456])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl10/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@gem_userptr_blits@unsync-unmap-after-close.html">SKIP</a> ([i915#3297]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-apl3/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl10/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen3_render_linear_blits:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb8/igt@gen3_render_linear_blits.html">SKIP</a> ([fdo#109289]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb5/igt@gen9_exec_parse@bb-large.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl7/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf-stress-pc8:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html">SKIP</a> ([fdo#109506] / [i915#2411])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-skl9/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl9/igt@i915_pm_rpm@modeset-lpsp.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@i915_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> ([fdo#111644] / [i915#1397] / [i915#2411])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl8/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> ([fdo#111614]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl9/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3763])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0.html">SKIP</a> ([fdo#111615]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl9/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-apl1/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@kms_ccs@pipe-b-crc-primary-basic-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl10/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-kbl1/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio-edid:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-kbl1/igt@kms_chamelium@hdmi-audio-edid.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-apl3/igt@kms_chamelium@hdmi-edid-change-during-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl7/igt@kms_color@pipe-a-ctm-0-75.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-5:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@kms_color_chamelium@pipe-b-ctm-0-5.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl4/igt@kms_color_chamelium@pipe-b-ctm-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@kms_content_protection@type1.html">SKIP</a> ([fdo#111828])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-512x170-random.html">SKIP</a> ([fdo#109279] / [i915#3359]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">INCOMPLETE</a> ([i915#300])</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-tglb8/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb7/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">INCOMPLETE</a> ([i915#2411] / [i915#456]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x10-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-32x10-rapid-movement.html">SKIP</a> ([i915#3359]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x32-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-32x32-sliding.html">SKIP</a> ([i915#3319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-apl3/igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding.html">SKIP</a> ([fdo#109271]) +86 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb8/igt@kms_flip@2x-flip-vs-rmfb.html">SKIP</a> ([fdo#111825]) +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#180]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-apl6/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@b-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl10/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html">INCOMPLETE</a> ([i915#3699])</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html">SKIP</a> ([i915#3701])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-apl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl4/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109271]) +498 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-rte:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-glk6/igt@kms_frontbuffer_tracking@fbc-2p-rte.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-rte.html">FAIL</a> ([i915#1888] / [i915#2546])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-suspend.html">INCOMPLETE</a> ([i915#2828] / [i915#456])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-kbl4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html">SKIP</a> ([fdo#109271]) +29 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb5/igt@kms_hdr@static-swap.html">SKIP</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-apl3/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl7/igt@kms_pipe_crc_basic@read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> ([i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html">SKIP</a> ([fdo#111615] / [fdo#112054])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-apl3/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo#109271] / [i915#2733])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl10/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo#109271] / [i915#2733])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc@first-to-second:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb8/igt@kms_prime@basic-crc@first-to-second.html">SKIP</a> ([i915#1836])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP</a> ([i915#2920]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl7/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-iclb3/igt@kms_psr@psr2_cursor_plane_move.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb8/igt@kms_psr@psr2_sprite_plane_move.html">FAIL</a> ([i915#132] / [i915#3467]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-glk5/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-glk9/igt@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-apl3/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl10/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-modeset-hang:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-iclb8/igt@kms_vblank@pipe-d-ts-continuation-modeset-hang.html">SKIP</a> ([fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb8/igt@kms_vrr@flip-suspend.html">SKIP</a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl10/igt@kms_writeback@writeback-check-output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-outp-complete:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb5/igt@nouveau_crc@pipe-c-source-outp-complete.html">SKIP</a> ([i915#2530]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-iclb4/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-iclb8/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test2:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@prime_nv_pcopy@test2.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-skl9/igt@sysfs_clients@fair-0.html">SKIP</a> ([fdo#109271] / [i915#2994]) +5 similar issues</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-apl4/igt@sysfs_clients@fair-0.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb3/igt@tools_test@sysfs_l3_parity.html">SKIP</a> ([fdo#109307])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-tglb8/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063] / [i915#3648]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-tglb6/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-iclb4/igt@gem_exec_capture@pi@vcs0.html">INCOMPLETE</a> ([i915#2369]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-iclb7/igt@gem_exec_capture@pi@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-glk3/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-glk7/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-apl8/igt@gem_workarounds@suspend-resume-context.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-apl1/igt@gem_workarounds@suspend-resume-context.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@bad-brightness:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-rkl-2/igt@i915_pm_backlight@bad-brightness.html">SKIP</a> ([i915#3012]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-rkl-6/igt@i915_pm_backlight@bad-brightness.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>
<p>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-rkl-1/igt@i915_pm_dc@dc6-psr.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-rkl-4/igt@i915_pm_dc@dc6-psr.html">SKIP</a>) ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html">PASS</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-iclb6/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-iclb7/igt@i915_pm_dc@dc6-psr.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-0.html">DMESG-WARN</a> ([i915#118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-180:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-rkl-1/igt@kms_big_fb@linear-8bpp-rotate-180.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10900/shard-rkl-4/igt@kms_big_fb@linear-8bpp-rotate-180.html">SKIP</a>) ([i915#1845]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21626/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-180.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>{shard-rkl}:        ([PASS][139], [SKIP][140]) ([i915#1845]) -&gt; [PASS][141] +3 similar issues<br />
   [13</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7971513034701468438==--
