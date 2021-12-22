Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABEE647CCB1
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Dec 2021 06:29:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C040110EAAB;
	Wed, 22 Dec 2021 05:29:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 8F75110EAAB;
 Wed, 22 Dec 2021 05:29:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 86DD5A00CC;
 Wed, 22 Dec 2021 05:29:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8752855921975358061=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "John Harrison" <john.c.harrison@intel.com>
Date: Wed, 22 Dec 2021 05:29:04 -0000
Message-ID: <164015094454.15675.4816896508045357914@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211221210212.1438670-1-John.C.Harrison@Intel.com>
In-Reply-To: <20211221210212.1438670-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Check_for_wedged_before_doing_stuff_=28rev2=29?=
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

--===============8752855921975358061==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Check for wedged before doing stuff (rev2)
URL   : https://patchwork.freedesktop.org/series/98099/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11025_full -> Patchwork_21889_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21889_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21889_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21889_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_persistence@many-contexts:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-iclb7/igt@gem_ctx_persistence@many-contexts.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb5/igt@gem_ctx_persistence@many-contexts.html

  
Known issues
------------

  Here are the changes found in Patchwork_21889_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#658])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-iclb2/igt@feature_discovery@psr2.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb6/igt@feature_discovery@psr2.html

  * igt@gem_ctx_persistence@smoketest:
    - shard-tglb:         [PASS][5] -> [FAIL][6] ([i915#2896])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-tglb5/igt@gem_ctx_persistence@smoketest.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-apl:          NOTRUN -> [SKIP][7] ([fdo#109271]) +120 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-apl2/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-tglb:         NOTRUN -> [SKIP][8] ([i915#4525])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][11] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][12] -> [FAIL][13] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][14] -> [FAIL][15] ([i915#2849])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_params@secure-non-root:
    - shard-iclb:         NOTRUN -> [SKIP][16] ([fdo#112283])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@gem_exec_params@secure-non-root.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [PASS][17] -> [DMESG-WARN][18] ([i915#118])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-glk3/igt@gem_exec_whisper@basic-queues-forked.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-glk7/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-skl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#4613])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-skl1/igt@gem_lmem_swapping@heavy-verify-random.html
    - shard-apl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#4613]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-apl6/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-kbl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#4613]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl6/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-tglb:         NOTRUN -> [SKIP][22] ([i915#4613]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@gem_lmem_swapping@verify-random.html
    - shard-iclb:         NOTRUN -> [SKIP][23] ([i915#4613]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb4/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_pxp@display-protected-crc:
    - shard-iclb:         NOTRUN -> [SKIP][24] ([i915#4270])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@gem_pxp@display-protected-crc.html

  * igt@gem_render_copy@linear-to-vebox-y-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][25] ([i915#768])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@gem_render_copy@linear-to-vebox-y-tiled.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-tglb:         NOTRUN -> [SKIP][26] ([fdo#110542])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@gem_userptr_blits@coherency-sync.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-tglb:         NOTRUN -> [SKIP][27] ([i915#2856])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-kbl:          NOTRUN -> [FAIL][28] ([i915#454])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl4/igt@i915_pm_dc@dc6-dpms.html
    - shard-tglb:         NOTRUN -> [FAIL][29] ([i915#454])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-tglb:         NOTRUN -> [SKIP][30] ([fdo#111644] / [i915#1397] / [i915#2411]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#110892])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb4/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@i915_pm_sseu@full-enable:
    - shard-tglb:         NOTRUN -> [SKIP][32] ([i915#4387])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@i915_pm_sseu@full-enable.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][33] ([fdo#111614])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3777])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#110725] / [fdo#111614])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3777])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][37] ([fdo#111615])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3777]) +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-apl2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][39] ([fdo#111615] / [i915#3689]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@kms_ccs@pipe-a-bad-aux-stride-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#3886]) +4 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl6/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109278] / [i915#3886])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#3886]) +4 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-apl6/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
    - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#3886]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-skl1/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][44] ([i915#3689]) +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_ccs.html

  * igt@kms_chamelium@hdmi-crc-nonplanar-formats:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109284] / [fdo#111827])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-apl4/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium@vga-hpd:
    - shard-tglb:         NOTRUN -> [SKIP][47] ([fdo#109284] / [fdo#111827]) +5 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@kms_chamelium@vga-hpd.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-kbl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl4/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][49] -> [DMESG-WARN][50] ([i915#1982]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-skl10/igt@kms_color@pipe-a-ctm-0-5.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-skl9/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_color@pipe-d-ctm-blue-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109278] / [i915#1149])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@kms_color@pipe-d-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-skl1/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-d-ctm-limited-range:
    - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@kms_color_chamelium@pipe-d-ctm-limited-range.html

  * igt@kms_content_protection@atomic:
    - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#109300] / [fdo#111066])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@srm:
    - shard-kbl:          NOTRUN -> [TIMEOUT][55] ([i915#1319])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl6/igt@kms_content_protection@srm.html
    - shard-apl:          NOTRUN -> [TIMEOUT][56] ([i915#1319])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-apl4/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x170-random:
    - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109278] / [fdo#109279])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@kms_cursor_crc@pipe-a-cursor-512x170-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][58] ([i915#3319])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:
    - shard-tglb:         NOTRUN -> [SKIP][59] ([fdo#109279] / [i915#3359])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen.html

  * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglb:         NOTRUN -> [SKIP][60] ([i915#3528])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][61] -> [INCOMPLETE][62] ([i915#180])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html
    - shard-kbl:          [PASS][63] -> [INCOMPLETE][64] ([i915#180] / [i915#636])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][65] -> [FAIL][66] ([i915#79])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][67] ([fdo#109274]) +4 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb4/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][68] -> [DMESG-WARN][69] ([i915#180]) +6 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html
    - shard-apl:          [PASS][70] -> [DMESG-WARN][71] ([i915#180]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-apl8/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-apl6/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [PASS][72] -> [FAIL][73] ([i915#2122])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-iclb:         NOTRUN -> [SKIP][74] ([i915#2587])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-iclb:         [PASS][75] -> [SKIP][76] ([i915#3701]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-iclb4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
    - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271]) +38 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-skl1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#109280]) +7 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-tglb:         NOTRUN -> [SKIP][79] ([fdo#111825]) +13 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][80] -> [FAIL][81] ([i915#1188])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-skl9/igt@kms_hdr@bpc-switch.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-skl4/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-tglb:         NOTRUN -> [SKIP][82] ([fdo#109289])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#533])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][84] ([fdo#108145] / [i915#265])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-kbl:          NOTRUN -> [FAIL][85] ([fdo#108145] / [i915#265])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_plane_cursor@pipe-d-viewport-size-128:
    - shard-iclb:         NOTRUN -> [SKIP][86] ([fdo#109278]) +9 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@kms_plane_cursor@pipe-d-viewport-size-128.html

  * igt@kms_plane_lowres@pipe-a-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][87] ([fdo#111615] / [fdo#112054])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@kms_plane_lowres@pipe-a-tiling-yf.html

  * igt@kms_plane_lowres@pipe-c-tiling-yf:
    - shard-iclb:         NOTRUN -> [SKIP][88] ([i915#3536])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@kms_plane_lowres@pipe-c-tiling-yf.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#658])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-skl1/igt@kms_psr2_sf@cursor-plane-update-sf.html
    - shard-apl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#658])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-apl6/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-kbl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#658])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-tglb:         NOTRUN -> [SKIP][92] ([i915#1911])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb7/igt@kms_psr2_su@page_flip-nv12.html
    - shard-iclb:         NOTRUN -> [SKIP][93] ([fdo#111068] / [i915#658])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb6/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-tglb:         NOTRUN -> [FAIL][94] ([i915#132] / [i915#3467])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][95] -> [SKIP][96] ([fdo#109441]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb1/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][97] -> [DMESG-WARN][98] ([i915#180] / [i915#295])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-apl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#2437])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-apl2/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:
    - shard-iclb:         NOTRUN -> [SKIP][100] ([i915#2530]) +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb6/igt@nouveau_crc@ctx-flip-threshold-reset-after-capture.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [PASS][101] -> [FAIL][102] ([i915#1542])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-glk4/igt@perf@polling-parameterized.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-glk4/igt@perf@polling-parameterized.html

  * igt@prime_nv_api@i915_self_import:
    - shard-tglb:         NOTRUN -> [SKIP][103] ([fdo#109291])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@prime_nv_api@i915_self_import.html

  * igt@prime_nv_pcopy@test2:
    - shard-kbl:          NOTRUN -> [SKIP][104] ([fdo#109271]) +107 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl3/igt@prime_nv_pcopy@test2.html

  * igt@prime_nv_test@nv_i915_sharing:
    - shard-iclb:         NOTRUN -> [SKIP][105] ([fdo#109291]) +2 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@prime_nv_test@nv_i915_sharing.html

  * igt@sysfs_clients@recycle:
    - shard-apl:          NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#2994])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-apl8/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@sema-25:
    - shard-kbl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#2994]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl4/igt@sysfs_clients@sema-25.html
    - shard-tglb:         NOTRUN -> [SKIP][108] ([i915#2994])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@sysfs_clients@sema-25.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-apl:          [DMESG-WARN][109] ([i915#180]) -> [PASS][110] +6 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-apl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-apl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_eio@kms:
    - shard-tglb:         [FAIL][111] -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-tglb1/igt@gem_eio@kms.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb7/igt@gem_eio@kms.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [FAIL][113] ([i915#2842]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_softpin@allocator-evict-all-engines:
    - shard-glk:          [FAIL][115] ([i915#4171]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-glk2/igt@gem_softpin@allocator-evict-all-engines.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-glk4/igt@gem_softpin@allocator-evict-all-engines.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][117] ([i915#454]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@modeset-lpsp:
    - shard-iclb:         [INCOMPLETE][119] -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-iclb7/igt@i915_pm_rpm@modeset-lpsp.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@i915_pm_rpm@modeset-lpsp.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [INCOMPLETE][121] ([i915#636]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-skl6/igt@i915_suspend@forcewake.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-skl1/igt@i915_suspend@forcewake.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-tglb:         [FAIL][123] ([i915#2346] / [i915#533]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][125] ([i915#2122]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][127] ([i915#180]) -> [PASS][128] +7 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
    - shard-iclb:         [SKIP][129] ([i915#3701]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:
    - shard-glk:          [FAIL][131] ([i915#2546]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-glk5/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-glk1/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][133] ([i915#1188]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][135] ([fdo#108145] / [i915#265]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][137] ([fdo#109441]) -> [PASS][138] +2 sim

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/index.html

--===============8752855921975358061==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Check for wedged before doing stuff (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98099/">https://patchwork.freedesktop.org/series/98099/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11025_full -&gt; Patchwork_21889_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21889_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21889_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21889_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_ctx_persistence@many-contexts:<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-iclb7/igt@gem_ctx_persistence@many-contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb5/igt@gem_ctx_persistence@many-contexts.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21889_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb6/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-tglb5/igt@gem_ctx_persistence@smoketest.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@gem_ctx_persistence@smoketest.html">FAIL</a> ([i915#2896])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-apl2/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> ([fdo#109271]) +120 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@gem_exec_balancer@parallel-keep-in-fence.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2849])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@gem_exec_params@secure-non-root.html">SKIP</a> ([fdo#112283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-glk3/igt@gem_exec_whisper@basic-queues-forked.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-glk7/igt@gem_exec_whisper@basic-queues-forked.html">DMESG-WARN</a> ([i915#118])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-skl1/igt@gem_lmem_swapping@heavy-verify-random.html">SKIP</a> ([fdo#109271] / [i915#4613])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-apl6/igt@gem_lmem_swapping@heavy-verify-random.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl6/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> ([fdo#109271] / [i915#4613]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([i915#4613]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb4/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([i915#4613]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@gem_pxp@display-protected-crc.html">SKIP</a> ([i915#4270])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-y-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@gem_render_copy@linear-to-vebox-y-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> ([fdo#110542])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl4/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> ([fdo#111644] / [i915#1397] / [i915#2411]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb4/igt@i915_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([fdo#110892])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@i915_pm_sseu@full-enable.html">SKIP</a> ([i915#4387])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-apl2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@kms_ccs@pipe-a-bad-aux-stride-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl6/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-apl6/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-skl1/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@kms_ccs@pipe-d-ccs-on-another-bo-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-nonplanar-formats:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-apl4/igt@kms_chamelium@hdmi-edid-change-during-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@kms_chamelium@vga-hpd.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-without-ddc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl4/igt@kms_chamelium@vga-hpd-without-ddc.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-skl10/igt@kms_color@pipe-a-ctm-0-5.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-skl9/igt@kms_color@pipe-a-ctm-0-5.html">DMESG-WARN</a> ([i915#1982]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-blue-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@kms_color@pipe-d-ctm-blue-to-red.html">SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-skl1/igt@kms_color_chamelium@pipe-d-ctm-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-limited-range:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@kms_color_chamelium@pipe-d-ctm-limited-range.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@kms_content_protection@atomic.html">SKIP</a> ([fdo#109300] / [fdo#111066])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl6/igt@kms_content_protection@srm.html">TIMEOUT</a> ([i915#1319])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-apl4/igt@kms_content_protection@srm.html">TIMEOUT</a> ([i915#1319])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x170-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@kms_cursor_crc@pipe-a-cursor-512x170-random.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-512x512-offscreen.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> ([i915#3528])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180])</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180] / [i915#636])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank@ab-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb4/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html">SKIP</a> ([fdo#109274]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#180]) +6 similar issues</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-apl8/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-apl6/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([i915#2587])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-iclb4/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">SKIP</a> ([i915#3701]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-skl1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#109280]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#111825]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-skl9/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-skl4/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-d-viewport-size-128:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@kms_plane_cursor@pipe-d-viewport-size-128.html">SKIP</a> ([fdo#109278]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@kms_plane_lowres@pipe-a-tiling-yf.html">SKIP</a> ([fdo#111615] / [fdo#112054])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-c-tiling-yf:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@kms_plane_lowres@pipe-c-tiling-yf.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-skl1/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-apl6/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb7/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> ([i915#1911])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb6/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> ([fdo#111068] / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@kms_psr@psr2_cursor_mmap_gtt.html">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb1/igt@kms_psr@psr2_no_drrs.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-apl2/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@ctx-flip-threshold-reset-after-capture:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb6/igt@nouveau_crc@ctx-flip-threshold-reset-after-capture.html">SKIP</a> ([i915#2530]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-glk4/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-glk4/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_self_import:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@prime_nv_api@i915_self_import.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test2:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl3/igt@prime_nv_pcopy@test2.html">SKIP</a> ([fdo#109271]) +107 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@nv_i915_sharing:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@prime_nv_test@nv_i915_sharing.html">SKIP</a> ([fdo#109291]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-apl8/igt@sysfs_clients@recycle.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl4/igt@sysfs_clients@sema-25.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb5/igt@sysfs_clients@sema-25.html">SKIP</a> ([i915#2994])</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-apl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-apl4/igt@gem_ctx_isolation@preservation-s3@bcs0.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-tglb1/igt@gem_eio@kms.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb7/igt@gem_eio@kms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict-all-engines:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-glk2/igt@gem_softpin@allocator-evict-all-engines.html">FAIL</a> ([i915#4171]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-glk4/igt@gem_softpin@allocator-evict-all-engines.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-iclb6/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb4/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-iclb7/igt@i915_pm_rpm@modeset-lpsp.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb2/igt@i915_pm_rpm@modeset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-skl6/igt@i915_suspend@forcewake.html">INCOMPLETE</a> ([i915#636]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-skl1/igt@i915_suspend@forcewake.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-glk2/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html">SKIP</a> ([i915#3701]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-modesetfrombusy:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-glk5/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html">FAIL</a> ([i915#2546]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-glk1/igt@kms_frontbuffer_tracking@fbc-modesetfrombusy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11025/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21889/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         [SKIP][137] ([fdo#109441]) -&gt; [PASS][138] +2 sim</li>
</ul>
</li>
</ul>

</body>
</html>

--===============8752855921975358061==--
