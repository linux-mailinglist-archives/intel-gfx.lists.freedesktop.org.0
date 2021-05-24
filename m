Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9867A38DE56
	for <lists+intel-gfx@lfdr.de>; Mon, 24 May 2021 02:10:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B660B6E055;
	Mon, 24 May 2021 00:10:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 057016E040;
 Mon, 24 May 2021 00:10:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E49A1A7DFC;
 Mon, 24 May 2021 00:10:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Mon, 24 May 2021 00:10:09 -0000
Message-ID: <162181500990.10903.2714182472824766072@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210521153253.518037-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210521153253.518037-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Move_LMEM_=28VRAM=29_management_over_to_TTM_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============1422533954=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1422533954==
Content-Type: multipart/alternative;
 boundary="===============5370384716037696944=="

--===============5370384716037696944==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Move LMEM (VRAM) management over to TTM (rev3)
URL   : https://patchwork.freedesktop.org/series/90022/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10120_full -> Patchwork_20170_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20170_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20170_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20170_full:

### Piglit changes ###

#### Possible regressions ####

  * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 1 8 3:
    - pig-glk-j5005:      NOTRUN -> [INCOMPLETE][1] +1 similar issue
   [1]: None

  
Known issues
------------

  Here are the changes found in Patchwork_20170_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-clear:
    - shard-glk:          [PASS][2] -> [DMESG-WARN][3] ([i915#118] / [i915#95])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-glk1/igt@gem_create@create-clear.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-glk9/igt@gem_create@create-clear.html

  * igt@gem_create@create-massive:
    - shard-snb:          NOTRUN -> [DMESG-WARN][4] ([i915#3002])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-snb7/igt@gem_create@create-massive.html
    - shard-skl:          NOTRUN -> [DMESG-WARN][5] ([i915#3002])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl7/igt@gem_create@create-massive.html

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-kbl:          [PASS][6] -> [DMESG-WARN][7] ([i915#180]) +5 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process:
    - shard-snb:          NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#1099]) +4 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-snb2/igt@gem_ctx_persistence@legacy-engines-mixed-process.html

  * igt@gem_ctx_ringsize@active@bcs0:
    - shard-skl:          [PASS][9] -> [INCOMPLETE][10] ([i915#3316])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl9/igt@gem_ctx_ringsize@active@bcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl9/igt@gem_ctx_ringsize@active@bcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-glk6/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#2842]) +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-tglb5/igt@gem_exec_fair@basic-pace@bcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-tglb5/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-apl:          NOTRUN -> [FAIL][15] ([i915#2389]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-apl3/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_mmap_gtt@big-copy-odd:
    - shard-glk:          [PASS][16] -> [FAIL][17] ([i915#307])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-glk2/igt@gem_mmap_gtt@big-copy-odd.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-glk2/igt@gem_mmap_gtt@big-copy-odd.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-apl:          NOTRUN -> [INCOMPLETE][18] ([i915#3468])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-apl1/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@gem_mmap_gtt@medium-copy-xy:
    - shard-snb:          [PASS][19] -> [INCOMPLETE][20] ([i915#2055] / [i915#2502] / [i915#3468])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-snb2/igt@gem_mmap_gtt@medium-copy-xy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-snb2/igt@gem_mmap_gtt@medium-copy-xy.html

  * igt@gem_userptr_blits@set-cache-level:
    - shard-apl:          NOTRUN -> [FAIL][21] ([i915#3324])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-apl3/igt@gem_userptr_blits@set-cache-level.html

  * igt@gen9_exec_parse@bb-large:
    - shard-apl:          NOTRUN -> [FAIL][22] ([i915#3296])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-apl1/igt@gen9_exec_parse@bb-large.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#1937])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-apl1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_selftest@live@execlists:
    - shard-apl:          NOTRUN -> [DMESG-FAIL][24] ([i915#3462])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-apl3/igt@i915_selftest@live@execlists.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-kbl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#2705])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl4/igt@kms_big_joiner@invalid-modeset.html
    - shard-apl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#2705])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-apl7/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_chamelium@dp-hpd:
    - shard-skl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl7/igt@kms_chamelium@dp-hpd.html

  * igt@kms_chamelium@dp-mode-timings:
    - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [fdo#111827]) +26 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-apl3/igt@kms_chamelium@dp-mode-timings.html

  * igt@kms_color@pipe-c-ctm-0-5:
    - shard-skl:          [PASS][29] -> [DMESG-WARN][30] ([i915#1982])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl4/igt@kms_color@pipe-c-ctm-0-5.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl4/igt@kms_color@pipe-c-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-25:
    - shard-snb:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +19 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-snb5/igt@kms_color_chamelium@pipe-a-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-5:
    - shard-kbl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl4/igt@kms_color_chamelium@pipe-c-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
    - shard-glk:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-glk5/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          NOTRUN -> [TIMEOUT][34] ([i915#1319])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-apl7/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
    - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271]) +35 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:
    - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271]) +65 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl4/igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x21-random:
    - shard-glk:          NOTRUN -> [SKIP][37] ([fdo#109271]) +32 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-glk5/igt@kms_cursor_crc@pipe-d-cursor-64x21-random.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
    - shard-snb:          NOTRUN -> [SKIP][38] ([fdo#109271]) +355 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-snb2/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#2346] / [i915#533])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#2122]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#79])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-skl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#2672])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-apl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#2642])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-apl7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-kbl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#2672])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html
    - shard-glk:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#2672])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-glk5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          NOTRUN -> [FAIL][49] ([i915#1188])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#533]) +4 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-apl7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - shard-kbl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#533])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl4/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][52] ([i915#265])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][53] ([i915#265])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][54] ([fdo#108145] / [i915#265]) +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][55] -> [FAIL][56] ([fdo#108145] / [i915#265])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][57] ([fdo#108145] / [i915#265])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#2733])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-apl7/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
    - shard-apl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#658]) +6 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
    - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#658])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#658]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
    - shard-glk:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#658])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-glk5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#2437])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-apl3/igt@kms_writeback@writeback-check-output.html
    - shard-skl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#2437])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl3/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-glk:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#2437])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-glk5/igt@kms_writeback@writeback-pixel-formats.html
    - shard-kbl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#2437])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl7/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][67] -> [FAIL][68] ([i915#1542])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl3/igt@perf@polling-parameterized.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl9/igt@perf@polling-parameterized.html

  * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
    - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271]) +254 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-apl1/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html

  * igt@sysfs_clients@fair-0:
    - shard-kbl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#2994])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl4/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@fair-7:
    - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#2994]) +6 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-apl7/igt@sysfs_clients@fair-7.html

  * igt@sysfs_heartbeat_interval@mixed@vcs0:
    - shard-skl:          [PASS][72] -> [FAIL][73] ([i915#1731])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl3/igt@sysfs_heartbeat_interval@mixed@vcs0.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl9/igt@sysfs_heartbeat_interval@mixed@vcs0.html

  * igt@sysfs_timeslice_duration@timeout@vecs0:
    - shard-tglb:         [PASS][74] -> [FAIL][75] ([i915#1755])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-tglb5/igt@sysfs_timeslice_duration@timeout@vecs0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-tglb8/igt@sysfs_timeslice_duration@timeout@vecs0.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][76] ([i915#2846]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-glk1/igt@gem_exec_fair@basic-deadline.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-glk9/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [FAIL][78] ([i915#2842]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-tglb8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][80] ([i915#2842]) -> [PASS][81] +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][82] ([i915#1436] / [i915#716]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl4/igt@gen9_exec_parse@allowed-single.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl7/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [INCOMPLETE][84] ([i915#155]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl2/igt@i915_suspend@sysfs-reader.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl7/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-glk:          [FAIL][86] ([i915#72]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled:
    - shard-skl:          [DMESG-WARN][88] ([i915#1982]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [INCOMPLETE][90] ([i915#155] / [i915#180] / [i915#636]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:
    - shard-glk:          [FAIL][92] ([i915#79]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][94] ([i915#180]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
    - shard-apl:          [DMESG-WARN][96] ([i915#180]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-skl:          [INCOMPLETE][98] ([i915#198]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  
#### Warnings ####

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-snb:          [INCOMPLETE][100] ([i915#2055]) -> [INCOMPLETE][101] ([i915#2055] / [i915#3468])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-snb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-snb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
    - shard-skl:          [INCOMPLETE][102] ([i915#198] / [i915#3468]) -> [INCOMPLETE][103] ([i915#198])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl2/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl2/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-skl:          [INCOMPLETE][104] ([i915#198]) -> [INCOMPLETE][105] ([i915#198] / [i915#3468])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl7/igt@gem_mmap_gtt@fault-concurrent-x.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl4/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][106], [FAIL][107], [FAIL][108], [FAIL][109], [FAIL][110], [FAIL][111], [FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#2292] / [i915#2722] / [i915#3002] / [i915#3363] / [i915#92]) -> ([FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#2292] / [i915#2722] / [i915#3002] / [i915#3363])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl4/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl4/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl3/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl7/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl4/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl1/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl1/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl1/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl3/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl3/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl7/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl4/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl2/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl2/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl4/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl4/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl7/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl7/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl1/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl1/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl1/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl3/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl2/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl1/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl2/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl1/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl1/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl4/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl4/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl3/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl1/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl1/igt@runner@aborted.html
    - shard-apl:          ([FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141]) ([i915#180] / [i915#2722] / [i915#3002] / [i915#3363]) -> ([FAIL][142], [FAIL][143], [FAIL][144]) ([fdo#109271] / [i915#2722] / [i915#3363])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-apl1/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-apl1/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-apl7/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-apl6/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-apl3/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-apl6/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-apl1/igt@runner@aborted.html
    - shard-skl:          ([FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150]) ([i915#1436] / [i915#2426] / [i915#2722] / [i915#3002] / [i915#3363]) -> ([FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157]) ([i915#1436] / [i915#1814] / [i915#2029] / [i915#2722] / [i915#3002] / [i915#3363])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl4/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl9/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl4/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl7/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl2/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl3/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl4/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl7/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl4/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl7/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl2/igt@runner@aborted.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl3/igt@runner@aborted.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl3/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedeskt

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/index.html

--===============5370384716037696944==
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
<tr><td><b>Series:</b></td><td>drm/i915: Move LMEM (VRAM) management over t=
o TTM (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/90022/">https://patchwork.freedesktop.org/series/90022/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20170/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20170/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10120_full -&gt; Patchwork_20170_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20170_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_20170_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
20170_full:</p>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 =
1 8 3:<ul>
<li>pig-glk-j5005:      NOTRUN -&gt; <a href=3D"None">INCOMPLETE</a> +1 sim=
ilar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20170_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-clear:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-glk1/igt@gem_create@create-clear.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-gl=
k9/igt@gem_create@create-clear.html">DMESG-WARN</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/118">i915#118</a> / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20170/shard-snb7/igt@gem_create@create-massive.html"=
>DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20170/shard-skl7/igt@gem_create@create-massive.html"=
>DMESG-WARN</a> ([i915#3002])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vecs0.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_20170/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vecs0.html">DMESG-=
WARN</a> ([i915#180]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-snb2/igt@gem_ctx_persistence@legacy-eng=
ines-mixed-process.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/1099">i915#1099</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_ringsize@active@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-skl9/igt@gem_ctx_ringsize@active@bcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/sha=
rd-skl9/igt@gem_ctx_ringsize@active@bcs0.html">INCOMPLETE</a> ([i915#3316])=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_201=
70/shard-glk6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#=
2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-tglb5/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/s=
hard-tglb5/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842]) +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-apl3/igt@gem_exec_reloc@basic-wide-acti=
ve@bcs0.html">FAIL</a> ([i915#2389]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-glk2/igt@gem_mmap_gtt@big-copy-odd.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-=
glk2/igt@gem_mmap_gtt@big-copy-odd.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-apl1/igt@gem_mmap_gtt@fault-concurrent-=
x.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-xy:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-snb2/igt@gem_mmap_gtt@medium-copy-xy.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shar=
d-snb2/igt@gem_mmap_gtt@medium-copy-xy.html">INCOMPLETE</a> ([i915#2055] / =
[i915#2502] / [i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@set-cache-level:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-apl3/igt@gem_userptr_blits@set-cache-le=
vel.html">FAIL</a> ([i915#3324])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-apl1/igt@gen9_exec_parse@bb-large.html"=
>FAIL</a> ([i915#3296])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-apl1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp=
-dp.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-apl3/igt@i915_selftest@live@execlists.h=
tml">DMESG-FAIL</a> ([i915#3462])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20170/shard-kbl4/igt@kms_big_joiner@invalid-modeset.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / [i915#2705])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20170/shard-apl7/igt@kms_big_joiner@invalid-modeset.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / [i915#2705])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-skl7/igt@kms_chamelium@dp-hpd.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11=
1827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-mode-timings:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-apl3/igt@kms_chamelium@dp-mode-timings.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-5:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-skl4/igt@kms_color@pipe-c-ctm-0-5.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-s=
kl4/igt@kms_color@pipe-c-ctm-0-5.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-25:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-snb5/igt@kms_color_chamelium@pipe-a-ctm=
-0-25.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-5:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-kbl4/igt@kms_color_chamelium@pipe-c-ctm=
-0-5.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-glk5/igt@kms_color_chamelium@pipe-inval=
id-ctm-matrix-sizes.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-apl7/igt@kms_content_protection@legacy.=
html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-skl7/igt@kms_cursor_crc@pipe-b-cursor-3=
2x32-onscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a>) +35 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-kbl4/igt@kms_cursor_crc@pipe-d-cursor-2=
56x256-onscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a>) +65 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x21-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-glk5/igt@kms_cursor_crc@pipe-d-cursor-6=
4x21-random.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a>) +32 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-snb2/igt@kms_cursor_edge_walk@pipe-d-12=
8x128-right-edge.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a>) +355 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_20170/shard-skl9/igt@kms_cursor_legacy@flip-vs-c=
ursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#5=
33])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-skl2/igt@kms_flip@flip-vs-absolute-wf_vblank-interrupti=
ble@b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_20170/shard-skl2/igt@kms_flip@flip-vs-absolute-wf_vblank=
-interruptible@b-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20170/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a>=
 ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-skl7/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-apl7/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-64bpp-ytile.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20170/shard-kbl7/igt@kms_flip_scaled_crc@flip-64bpp-=
ytile-to-32bpp-ytilercccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#2672])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20170/shard-glk5/igt@kms_flip_scaled_crc@flip-64bpp-=
ytile-to-32bpp-ytilercccs.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#2672])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">=
i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20170/shard-apl7/igt@kms_pipe_crc_basic@compare-crc-=
sanitycheck-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533]) +4 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20170/shard-kbl4/igt@kms_pipe_crc_basic@compare-crc-=
sanitycheck-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-apl3/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20170/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">=
FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145"=
>fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-kbl7/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-7efc.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D108145">fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-c=
lipping-clamping:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-apl7/igt@kms_plane_scaling@scaler-with-=
clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a=
> / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-apl7/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-3.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-skl3/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20170/shard-kbl7/igt@kms_psr2_sf@overlay-primary-upd=
ate-sf-dmg-area-3.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +1 similar issue</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20170/shard-glk5/igt@kms_psr2_sf@overlay-primary-upd=
ate-sf-dmg-area-3.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20170/shard-apl3/igt@kms_writeback@writeback-check-o=
utput.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / [i915#2437])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20170/shard-skl3/igt@kms_writeback@writeback-check-o=
utput.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / [i915#2437])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20170/shard-glk5/igt@kms_writeback@writeback-pixel-f=
ormats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / [i915#2437])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20170/shard-kbl7/igt@kms_writeback@writeback-pixel-f=
ormats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / [i915#2437])</p>
</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-skl3/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard=
-skl9/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://git=
lab.freedeskt">i915#1542</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-apl1/igt@prime_nv_api@i915_nv_reimport_=
twice_check_flink_name.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109271">fdo#109271</a>) +254 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-kbl4/igt@sysfs_clients@fair-0.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-apl7/igt@sysfs_clients@fair-7.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / [i915#2994]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-skl3/igt@sysfs_heartbeat_interval@mixed@vcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
170/shard-skl9/igt@sysfs_heartbeat_interval@mixed@vcs0.html">FAIL</a> ([i91=
5#1731])</li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@vecs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-tglb5/igt@sysfs_timeslice_duration@timeout@vecs0.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_20170/shard-tglb8/igt@sysfs_timeslice_duration@timeout@vecs0.html">FAIL</=
a> ([i915#1755])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-glk1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([=
i915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20170/shard-glk9/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20170/shard-tglb8/igt@gem_exec_fair@basic-none-share@rcs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-glk4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20170/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">=
PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-skl4/igt@gen9_exec_parse@allowed-single.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i91=
5#1436</a> / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_20170/shard-skl7/igt@gen9_exec_parse@allowed-single.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-kbl2/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a>=
 ([i915#155]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20170/shard-kbl7/igt@i915_suspend@sysfs-reader.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-glk7/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legac=
y.html">FAIL</a> ([i915#72]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20170/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-v=
s-cursor-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-ytiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-skl3/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-yt=
iled.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl3/igt@kms_draw_crc@draw-met=
hod-xrgb2101010-pwrite-ytiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a>=
 ([i915#155] / [i915#180] / [i915#636]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl4/igt@kms_fbcon_fbt@fbc-sus=
pend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_20170/shard-glk6/igt@kms_flip@flip-vs-expired=
-vblank-interruptible@c-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10120/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20170/shard-kbl2/igt@kms_flip@flip-vs-suspend-inte=
rruptible@a-dp1.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10120/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20170/shard-apl3/igt@kms_flip@flip-vs-suspend-inte=
rruptible@a-dp1.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.htm=
l">INCOMPLETE</a> ([i915#198]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20170/shard-skl7/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-b.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10120/shard-snb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">I=
NCOMPLETE</a> ([i915#2055]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_20170/shard-snb7/igt@gem_mmap_gtt@cpuset-basic-small-c=
opy-xy.html">INCOMPLETE</a> ([i915#2055] / [i915#3468])</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10120/shard-skl2/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">I=
NCOMPLETE</a> ([i915#198] / [i915#3468]) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl2/igt@gem_mmap_gtt@cpuset-=
basic-small-copy-xy.html">INCOMPLETE</a> ([i915#198])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-skl7/igt@gem_mmap_gtt@fault-concurrent-x.html">INCOMPLE=
TE</a> ([i915#198]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20170/shard-skl4/igt@gem_mmap_gtt@fault-concurrent-x.html">INC=
OMPLETE</a> ([i915#198] / [i915#3468])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl4/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10120/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl7/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10120/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl1/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
0120/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl1/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1012=
0/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl3/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/s=
hard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_10120/shard-kbl4/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shar=
d-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10120/shard-kbl2/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-k=
bl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_10120/shard-kbl4/igt@runner@aborted.html">FAIL</a>) =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#1092=
71</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i=
915#1436</a> / [i915#180] / [i915#1814] / [i915#2292] / [i915#2722] / [i915=
#3002] / [i915#3363] / [i915#92]) -&gt; (<a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_20170/shard-kbl7/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/sh=
ard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20170/shard-kbl1/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170=
/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl1/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
170/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl2/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20170/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl2/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20170/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl1/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20170/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl4/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_20170/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-kbl1/igt@runne=
r@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20170/shard-kbl1/igt@runner@aborted.html">FAIL</a>) (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436=
</a> / [i915#180] / [i915#1814] / [i915#2292] / [i915#2722] / [i915#3002] /=
 [i915#3363])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-apl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10120/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-apl6/igt@runner@aborte=
d.html">FAIL</a>) ([i915#180] / [i915#2722] / [i915#3002] / [i915#3363]) -&=
gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/sh=
ard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20170/shard-apl6/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170=
/shard-apl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#2722] / [i915=
#3363])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10120/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl9/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10120/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl7/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_10120/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10120/shard-skl3/igt@runner@aborted.h=
tml">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1436">i915#1436</a> / [i915#2426] / [i915#2722] / [i915#3002] / [i915#3363]=
) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2017=
0/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl7/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0170/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl7/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_20170/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_20170/shard-skl3/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20170/shard-skl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / [i915#1814]=
 / [i915#2029] / [i915#2722] / [i915#3002] / [i915#3363])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5370384716037696944==--

--===============1422533954==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1422533954==--
