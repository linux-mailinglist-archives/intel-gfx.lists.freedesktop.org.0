Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6FDB42982C
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Oct 2021 22:33:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECD906E95E;
	Mon, 11 Oct 2021 20:33:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 628A16E95E;
 Mon, 11 Oct 2021 20:33:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 58D54A0169;
 Mon, 11 Oct 2021 20:33:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2305436553980533896=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Thanneeru Srinivasulu" <thanneeru.srinivasulu@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Oct 2021 20:33:01 -0000
Message-ID: <163398438131.22681.4799255558416152109@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211011152106.3424810-1-thanneeru.srinivasulu@intel.com>
In-Reply-To: <20211011152106.3424810-1-thanneeru.srinivasulu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/guc=3A_Inject_probe_errors_for_MMIO_send=2C_CT_send?=
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

--===============2305436553980533896==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/guc: Inject probe errors for MMIO send, CT send
URL   : https://patchwork.freedesktop.org/series/95683/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10716_full -> Patchwork_21305_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21305_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21305_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21305_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-tglb:         NOTRUN -> [SKIP][1] +3 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  
Known issues
------------

  Here are the changes found in Patchwork_21305_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@display-2x:
    - shard-tglb:         NOTRUN -> [SKIP][2] ([i915#1839])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@feature_discovery@display-2x.html

  * igt@gem_ctx_persistence@process:
    - shard-snb:          NOTRUN -> [SKIP][3] ([fdo#109271] / [i915#1099])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-snb7/igt@gem_ctx_persistence@process.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-tglb:         NOTRUN -> [SKIP][4] ([i915#280])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][5] ([i915#2842])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][6] ([i915#2842])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][7] -> [FAIL][8] ([i915#2842])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglb:         [PASS][9] -> [FAIL][10] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-tglb7/igt@gem_exec_fair@basic-pace@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          NOTRUN -> [FAIL][11] ([i915#2842]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_pread@exhaustion:
    - shard-glk:          NOTRUN -> [WARN][12] ([i915#2658])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-glk2/igt@gem_pread@exhaustion.html
    - shard-snb:          NOTRUN -> [WARN][13] ([i915#2658])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-snb2/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-tglb:         NOTRUN -> [WARN][14] ([i915#2658])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-tglb:         NOTRUN -> [SKIP][15] ([i915#4270]) +1 similar issue
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb2/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][16] ([i915#3002])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl6/igt@gem_userptr_blits@input-checking.html
    - shard-kbl:          NOTRUN -> [DMESG-WARN][17] ([i915#3002])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl1/igt@gem_userptr_blits@input-checking.html

  * igt@gen3_render_mixed_blits:
    - shard-tglb:         NOTRUN -> [SKIP][18] ([fdo#109289]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@gen3_render_mixed_blits.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1436] / [i915#716])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-skl9/igt@gen9_exec_parse@allowed-single.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-skl7/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-large:
    - shard-tglb:         NOTRUN -> [SKIP][21] ([i915#2856]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@gen9_exec_parse@bb-large.html

  * igt@i915_module_load@reload:
    - shard-skl:          [PASS][22] -> [DMESG-WARN][23] ([i915#1982]) +2 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-skl4/igt@i915_module_load@reload.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-skl7/igt@i915_module_load@reload.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [PASS][24] -> [FAIL][25] ([i915#4275])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-iclb5/igt@i915_pm_dc@dc9-dpms.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-iclb2/igt@i915_pm_dc@dc9-dpms.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#1937])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-tglb:         NOTRUN -> [WARN][27] ([i915#2681] / [i915#2684])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-tglb:         NOTRUN -> [SKIP][28] ([fdo#111644] / [i915#1397] / [i915#2411])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@i915_query@query-topology-unsupported:
    - shard-tglb:         NOTRUN -> [SKIP][29] ([fdo#109302])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@i915_query@query-topology-unsupported.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180]) +2 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-apl6/igt@i915_suspend@fence-restore-untiled.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl7/igt@i915_suspend@fence-restore-untiled.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][32] ([i915#180])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl1/igt@i915_suspend@forcewake.html
    - shard-apl:          NOTRUN -> [DMESG-WARN][33] ([i915#180])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl6/igt@i915_suspend@forcewake.html

  * igt@i915_suspend@sysfs-reader:
    - shard-tglb:         [PASS][34] -> [INCOMPLETE][35] ([i915#456]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-tglb8/igt@i915_suspend@sysfs-reader.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb7/igt@i915_suspend@sysfs-reader.html

  * igt@kms_atomic_transition@plane-all-modeset-transition:
    - shard-tglb:         NOTRUN -> [SKIP][36] ([i915#1769])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_atomic_transition@plane-all-modeset-transition.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][37] ([fdo#111614])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3777])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3777]) +2 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-tglb:         NOTRUN -> [SKIP][40] ([fdo#111615]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-tglb:         NOTRUN -> [SKIP][41] ([i915#2705])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb2/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][42] ([i915#3689] / [i915#3886]) +4 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#3886]) +16 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#3886])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-glk2/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#3886]) +5 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl1/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][46] ([i915#3689]) +11 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb2/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-tglb:         NOTRUN -> [SKIP][47] ([i915#3742])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-tglb:         NOTRUN -> [SKIP][48] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [fdo#111827]) +23 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl8/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-snb:          NOTRUN -> [SKIP][50] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-snb2/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_chamelium@vga-hpd:
    - shard-glk:          NOTRUN -> [SKIP][51] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-glk2/igt@kms_chamelium@vga-hpd.html

  * igt@kms_chamelium@vga-hpd-with-enabled-mode:
    - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [fdo#111827])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-skl1/igt@kms_chamelium@vga-hpd-with-enabled-mode.html

  * igt@kms_color_chamelium@pipe-b-degamma:
    - shard-kbl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl4/igt@kms_color_chamelium@pipe-b-degamma.html

  * igt@kms_concurrent@pipe-d:
    - shard-tglb:         NOTRUN -> [FAIL][54] ([i915#1385])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_concurrent@pipe-d.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][55] ([i915#1319]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl3/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][56] ([i915#3319]) +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][57] ([fdo#109279] / [i915#3359]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-max-size-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][58] ([i915#3359]) +6 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-max-size-rapid-movement.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-left-edge:
    - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271]) +12 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-skl1/igt@kms_cursor_edge_walk@pipe-d-128x128-left-edge.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
    - shard-glk:          [PASS][60] -> [FAIL][61] ([i915#72])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][62] -> [FAIL][63] ([i915#2346])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-kbl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#533])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl1/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][65] -> [FAIL][66] ([i915#2122])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-glk4/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-tglb:         NOTRUN -> [SKIP][67] ([fdo#111825]) +28 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb2/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
    - shard-skl:          [PASS][68] -> [INCOMPLETE][69] ([i915#146] / [i915#198])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:
    - shard-snb:          NOTRUN -> [SKIP][70] ([fdo#109271]) +148 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][71] -> [DMESG-WARN][72] ([i915#180]) +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt:
    - shard-glk:          NOTRUN -> [SKIP][73] ([fdo#109271]) +28 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-glk2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-kbl:          NOTRUN -> [SKIP][74] ([fdo#109271]) +97 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          NOTRUN -> [FAIL][75] ([i915#1188])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-tglb:         NOTRUN -> [SKIP][76] ([i915#1187])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb2/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#533]) +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][78] ([fdo#108145] / [i915#265])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-glk:          NOTRUN -> [FAIL][79] ([i915#265]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-glk2/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
    - shard-kbl:          NOTRUN -> [FAIL][80] ([i915#265]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][81] ([i915#265])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_lowres@pipe-d-tiling-y:
    - shard-tglb:         NOTRUN -> [SKIP][82] ([i915#3536]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_plane_lowres@pipe-d-tiling-y.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#2733])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl3/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
    - shard-glk:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#658])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-glk2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#658]) +5 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
    - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#658]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
    - shard-tglb:         NOTRUN -> [SKIP][87] ([i915#2920]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][88] -> [SKIP][89] ([fdo#109441]) +2 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-iclb7/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-tglb:         NOTRUN -> [FAIL][90] ([i915#132] / [i915#3467]) +3 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][91] ([IGT#2])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl2/igt@kms_sysfs_edid_timing.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-apl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#2437])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl1/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-tglb:         NOTRUN -> [SKIP][93] ([i915#2437])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-apl:          NOTRUN -> [SKIP][94] ([fdo#109271]) +260 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl8/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@nouveau_crc@pipe-c-source-outp-inactive:
    - shard-tglb:         NOTRUN -> [SKIP][95] ([i915#2530]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@nouveau_crc@pipe-c-source-outp-inactive.html

  * igt@prime_nv_test@i915_import_pread_pwrite:
    - shard-tglb:         NOTRUN -> [SKIP][96] ([fdo#109291]) +2 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb2/igt@prime_nv_test@i915_import_pread_pwrite.html

  * igt@sysfs_clients@fair-1:
    - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#2994]) +4 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl6/igt@sysfs_clients@fair-1.html
    - shard-kbl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#2994])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl1/igt@sysfs_clients@fair-1.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-tglb:         [INCOMPLETE][99] ([i915#456]) -> [PASS][100] +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-tglb7/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [FAIL][101] ([i915#2410]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb5/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][103] ([i915#2369] / [i915#3063] / [i915#3648]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-tglb3/igt@gem_eio@unwedge-stress.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [FAIL][105] ([i915#2846]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-kbl3/igt@gem_exec_fair@basic-deadline.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl7/igt@gem_exec_fair@basic-deadline.html
    - shard-glk:          [FAIL][107] ([i915#2846]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-glk8/igt@gem_exec_fair@basic-deadline.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-glk1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][109] ([i915#2842]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html
    - shard-glk:          [FAIL][111] ([i915#2842]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-glk3/igt@gem_exec_fair@basic-none-share@rcs0.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-glk9/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-kbl:          [FAIL][113] ([i915#2842]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-kbl2/igt@gem_exec_fair@basic-none@vecs0.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-tglb:         [FAIL][115] ([i915#2842]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-tglb7/igt@gem_exec_fair@basic-pace@vcs0.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb6/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-glk:          [DMESG-WARN][117] ([i915#118]) -> [PASS][118] +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-glk4/igt@gem_exec_whisper@basic-fds-forked.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-glk2/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@gem_userptr_blits@set-cache-level:
    - shard-skl:          [DMESG-WARN][119] ([i915#1982]) -> [PASS][120] +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-skl2/igt@gem_userptr_blits@set-cache-level.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-skl2/igt@gem_userptr_blits@set-cache-level.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][121] ([i915#1436] / [i915#716]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-glk4/igt@gen9_exec_parse@allowed-all.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-glk2/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][123] ([i915#454]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-iclb1/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_sseu@full-enable:
    - shard-glk:          [FAIL][125] -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-glk2/igt@i915_pm_sseu@full-enable.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-glk3/igt@i915_pm_sseu@full-enable.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-apl:          [DMESG-WARN][127] ([i915#180]) -> [PASS][128] +1 similar issue
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-apl8/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl6/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][129] ([i915#180]) -> [PASS][130] +6 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][131] ([fdo#108145] / [i915#265]) -> [PASS][132] +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [SKIP][133] ([fdo#109441]) -> [PASS][134] +1 similar issue
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-iclb3/igt@kms_psr@psr2_dpms.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-iclb2/igt@kms_psr@psr2_dpms.html

  * igt@kms_vblank@pipe-c-accuracy-idle:
    - shard-skl:          [FAIL][135] ([i915#43]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-skl2/igt@kms_vblank@pipe-c-accuracy-idle.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2130

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/index.html

--===============2305436553980533896==
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
<tr><td><b>Series:</b></td><td>drm/i915/guc: Inject probe errors for MMIO send, CT send</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/95683/">https://patchwork.freedesktop.org/series/95683/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10716_full -&gt; Patchwork_21305_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21305_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_21305_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21305_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21305_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-2x:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@feature_discovery@display-2x.html">SKIP</a> ([i915#1839])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-snb7/igt@gem_ctx_persistence@process.html">SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-tglb7/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-glk2/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-snb2/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb2/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html">SKIP</a> ([i915#4270]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl6/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl1/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen3_render_mixed_blits:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@gen3_render_mixed_blits.html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-skl9/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-skl7/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@gen9_exec_parse@bb-large.html">SKIP</a> ([i915#2856]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-skl4/igt@i915_module_load@reload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-skl7/igt@i915_module_load@reload.html">DMESG-WARN</a> ([i915#1982]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-iclb5/igt@i915_pm_dc@dc9-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-iclb2/igt@i915_pm_dc@dc9-dpms.html">FAIL</a> ([i915#4275])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl3/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#2681] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@i915_pm_rpm@modeset-non-lpsp.html">SKIP</a> ([fdo#111644] / [i915#1397] / [i915#2411])</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@i915_query@query-topology-unsupported.html">SKIP</a> ([fdo#109302])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-apl6/igt@i915_suspend@fence-restore-untiled.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl7/igt@i915_suspend@fence-restore-untiled.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl1/igt@i915_suspend@forcewake.html">DMESG-WARN</a> ([i915#180])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl6/igt@i915_suspend@forcewake.html">DMESG-WARN</a> ([i915#180])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-tglb8/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb7/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a> ([i915#456]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_atomic_transition@plane-all-modeset-transition.html">SKIP</a> ([i915#1769])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_big_fb@x-tiled-32bpp-rotate-270.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#111615]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb2/igt@kms_big_joiner@invalid-modeset.html">SKIP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl2/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-glk2/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl1/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb2/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_cdclk@mode-transition.html">SKIP</a> ([i915#3742])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_chamelium@dp-crc-multiple.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl8/igt@kms_chamelium@hdmi-edid-change-during-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-snb2/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-glk2/igt@kms_chamelium@vga-hpd.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-skl1/igt@kms_chamelium@vga-hpd-with-enabled-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-degamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl4/igt@kms_color_chamelium@pipe-b-degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_concurrent@pipe-d:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_concurrent@pipe-d.html">FAIL</a> ([i915#1385])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl3/igt@kms_content_protection@lic.html">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html">SKIP</a> ([i915#3319]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-512x170-sliding.html">SKIP</a> ([fdo#109279] / [i915#3359]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-max-size-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-max-size-rapid-movement.html">SKIP</a> ([i915#3359]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-left-edge:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-skl1/igt@kms_cursor_edge_walk@pipe-d-128x128-left-edge.html">SKIP</a> ([fdo#109271]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-glk1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html">FAIL</a> ([i915#72])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl1/igt@kms_cursor_legacy@pipe-d-single-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-glk4/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-glk2/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb2/igt@kms_flip@2x-plain-flip-ts-check.html">SKIP</a> ([fdo#111825]) +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-skl4/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html">INCOMPLETE</a> ([i915#146] / [i915#198])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-snb2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> ([fdo#109271]) +148 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-glk2/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-pgflip-blt.html">SKIP</a> ([fdo#109271]) +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +97 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-skl1/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb2/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-glk2/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html">FAIL</a> ([i915#265]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html">FAIL</a> ([i915#265]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-d-tiling-y:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_plane_lowres@pipe-d-tiling-y.html">SKIP</a> ([i915#3536]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl3/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-glk2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +5 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html">SKIP</a> ([i915#2920]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-iclb7/igt@kms_psr@psr2_no_drrs.html">SKIP</a> ([fdo#109441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_psr@psr2_primary_blt.html">FAIL</a> ([i915#132] / [i915#3467]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl2/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl1/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl8/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html">SKIP</a> ([fdo#109271]) +260 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-outp-inactive:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@nouveau_crc@pipe-c-source-outp-inactive.html">SKIP</a> ([i915#2530]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_nv_test@i915_import_pread_pwrite:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb2/igt@prime_nv_test@i915_import_pread_pwrite.html">SKIP</a> ([fdo#109291]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl6/igt@sysfs_clients@fair-1.html">SKIP</a> ([fdo#109271] / [i915#2994]) +4 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl1/igt@sysfs_clients@fair-1.html">SKIP</a> ([fdo#109271] / [i915#2994])</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-tglb7/igt@gem_ctx_isolation@preservation-s3@bcs0.html">INCOMPLETE</a> ([i915#456]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb3/igt@gem_ctx_isolation@preservation-s3@bcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#2410]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb5/igt@gem_ctx_persistence@many-contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-tglb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063] / [i915#3648]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb1/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-kbl3/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl7/igt@gem_exec_fair@basic-deadline.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-glk8/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-glk1/igt@gem_exec_fair@basic-deadline.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-iclb8/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-glk3/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-glk9/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-kbl2/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl4/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-tglb7/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-tglb6/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-glk4/igt@gem_exec_whisper@basic-fds-forked.html">DMESG-WARN</a> ([i915#118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-glk2/igt@gem_exec_whisper@basic-fds-forked.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@set-cache-level:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-skl2/igt@gem_userptr_blits@set-cache-level.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-skl2/igt@gem_userptr_blits@set-cache-level.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-glk4/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [i915#716]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-glk2/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-iclb3/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-iclb1/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-glk2/igt@i915_pm_sseu@full-enable.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-glk3/igt@i915_pm_sseu@full-enable.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-apl8/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-apl6/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-iclb3/igt@kms_psr@psr2_dpms.html">SKIP</a> ([fdo#109441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21305/shard-iclb2/igt@kms_psr@psr2_dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-accuracy-idle:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10716/shard-skl2/igt@kms_vblank@pipe-c-accuracy-idle.html">FAIL</a> ([i915#43]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2130">PASS</a></li>
</ul>
</li>
</ul>

</body>
</html>

--===============2305436553980533896==--
