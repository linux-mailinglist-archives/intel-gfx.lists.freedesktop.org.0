Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A612369E79
	for <lists+intel-gfx@lfdr.de>; Sat, 24 Apr 2021 04:14:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 795D46E1B1;
	Sat, 24 Apr 2021 02:14:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CF6F46E0FB;
 Sat, 24 Apr 2021 02:14:37 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C4A7BA3ECB;
 Sat, 24 Apr 2021 02:14:37 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Sat, 24 Apr 2021 02:14:37 -0000
Message-ID: <161923047776.2856.15981643984119736159@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210423223131.879208-1-jason@jlekstrand.net>
In-Reply-To: <20210423223131.879208-1-jason@jlekstrand.net>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_ioctl_clean-ups?=
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
Content-Type: multipart/mixed; boundary="===============1590312709=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1590312709==
Content-Type: multipart/alternative;
 boundary="===============4546695545234861237=="

--===============4546695545234861237==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: ioctl clean-ups
URL   : https://patchwork.freedesktop.org/series/89443/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10005_full -> Patchwork_19984_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19984_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19984_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19984_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_balancer@bonded-slice:
    - shard-kbl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-kbl1/igt@gem_exec_balancer@bonded-slice.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-kbl4/igt@gem_exec_balancer@bonded-slice.html
    - shard-tglb:         [PASS][3] -> [FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-tglb3/igt@gem_exec_balancer@bonded-slice.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb3/igt@gem_exec_balancer@bonded-slice.html

  * igt@gem_exec_schedule@u-submit-golden-slice@rcs0:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl7/igt@gem_exec_schedule@u-submit-golden-slice@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl2/igt@gem_exec_schedule@u-submit-golden-slice@rcs0.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-skl:          ([FAIL][7], [FAIL][8], [FAIL][9]) ([i915#1436] / [i915#2369] / [i915#3002]) -> ([FAIL][10], [FAIL][11], [FAIL][12], [FAIL][13]) ([i915#1814] / [i915#2029] / [i915#3002])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl2/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl1/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl10/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl2/igt@runner@aborted.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl8/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl2/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl2/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_19984_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][14] ([i915#3002])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb6/igt@gem_create@create-massive.html
    - shard-snb:          NOTRUN -> [DMESG-WARN][15] ([i915#3002])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-snb7/igt@gem_create@create-massive.html
    - shard-kbl:          NOTRUN -> [DMESG-WARN][16] ([i915#3002])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-kbl1/igt@gem_create@create-massive.html
    - shard-tglb:         NOTRUN -> [DMESG-WARN][17] ([i915#3002])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb2/igt@gem_create@create-massive.html
    - shard-glk:          NOTRUN -> [DMESG-WARN][18] ([i915#3002])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-glk1/igt@gem_create@create-massive.html
    - shard-apl:          NOTRUN -> [DMESG-WARN][19] ([i915#3002])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl2/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@legacy-engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#1099]) +6 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-snb5/igt@gem_ctx_persistence@legacy-engines-queued.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-skl:          NOTRUN -> [FAIL][21] ([i915#2846])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl1/igt@gem_exec_fair@basic-deadline.html
    - shard-glk:          [PASS][22] -> [FAIL][23] ([i915#2846])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-glk1/igt@gem_exec_fair@basic-deadline.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-glk2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][24] -> [FAIL][25] ([i915#2842]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [PASS][26] -> [FAIL][27] ([i915#2842])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb5/igt@gem_exec_fair@basic-pace@vcs0.html
    - shard-glk:          [PASS][28] -> [FAIL][29] ([i915#2842]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-glk5/igt@gem_exec_fair@basic-pace@vcs0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-glk8/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [PASS][30] -> [DMESG-WARN][31] ([i915#118] / [i915#95]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-glk6/igt@gem_exec_whisper@basic-queues-forked-all.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-glk1/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][32] -> [SKIP][33] ([i915#2190])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-tglb5/igt@gem_huc_copy@huc-copy.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb6/igt@gem_huc_copy@huc-copy.html
    - shard-apl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#2190])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-snb:          NOTRUN -> [WARN][35] ([i915#2658]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-snb2/igt@gem_pwrite@basic-exhaustion.html
    - shard-apl:          NOTRUN -> [WARN][36] ([i915#2658])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl6/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs:
    - shard-iclb:         NOTRUN -> [SKIP][37] ([i915#768]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb1/igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-tglb:         NOTRUN -> [SKIP][38] ([i915#3297])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb6/igt@gem_userptr_blits@unsync-overlap.html
    - shard-iclb:         NOTRUN -> [SKIP][39] ([i915#3297])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb7/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gen3_render_tiledy_blits:
    - shard-tglb:         NOTRUN -> [SKIP][40] ([fdo#109289])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb6/igt@gen3_render_tiledy_blits.html
    - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109289])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb7/igt@gen3_render_tiledy_blits.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-snb:          NOTRUN -> [SKIP][42] ([fdo#109271]) +349 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-snb7/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#112306])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb8/igt@gen9_exec_parse@secure-batches.html
    - shard-tglb:         NOTRUN -> [SKIP][44] ([fdo#112306])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb8/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          NOTRUN -> [FAIL][45] ([i915#454]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl6/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [PASS][46] -> [INCOMPLETE][47] ([i915#636])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl2/igt@i915_suspend@forcewake.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl6/igt@i915_suspend@forcewake.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#2521])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html
    - shard-tglb:         [PASS][50] -> [FAIL][51] ([i915#2521])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-tglb6/igt@kms_async_flips@alternate-sync-async-flip.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb7/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][52] ([fdo#111614]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb2/igt@kms_big_fb@linear-8bpp-rotate-270.html
    - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#110725] / [fdo#111614]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb6/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-tglb:         NOTRUN -> [SKIP][54] ([fdo#111615])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb6/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_ccs@pipe-c-crc-primary-basic:
    - shard-skl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [fdo#111304])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl10/igt@kms_ccs@pipe-c-crc-primary-basic.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [fdo#111827]) +19 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl1/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium@vga-hpd:
    - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl1/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-snb:          NOTRUN -> [SKIP][58] ([fdo#109271] / [fdo#111827]) +22 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-snb7/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-glk:          NOTRUN -> [SKIP][59] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-glk3/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html
    - shard-iclb:         NOTRUN -> [SKIP][60] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb4/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-d-ctm-max:
    - shard-tglb:         NOTRUN -> [SKIP][61] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb6/igt@kms_color_chamelium@pipe-d-ctm-max.html
    - shard-kbl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-kbl1/igt@kms_color_chamelium@pipe-d-ctm-max.html
    - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb8/igt@kms_color_chamelium@pipe-d-ctm-max.html

  * igt@kms_content_protection@srm:
    - shard-apl:          NOTRUN -> [TIMEOUT][64] ([i915#1319])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl8/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-random:
    - shard-skl:          [PASS][65] -> [FAIL][66] ([i915#54])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][67] ([fdo#109279] / [i915#3359])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding.html
    - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109278] / [fdo#109279])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb5/igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x10-random:
    - shard-kbl:          NOTRUN -> [SKIP][69] ([fdo#109271]) +33 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-32x10-random.html
    - shard-tglb:         NOTRUN -> [SKIP][70] ([i915#3359]) +3 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-32x10-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
    - shard-skl:          NOTRUN -> [SKIP][71] ([fdo#109271]) +110 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][72] -> [DMESG-WARN][73] ([i915#180])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge:
    - shard-skl:          [PASS][74] -> [DMESG-WARN][75] ([i915#1982]) +2 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl6/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl6/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          NOTRUN -> [FAIL][76] ([i915#2346] / [i915#533])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-busy-flip:
    - shard-tglb:         NOTRUN -> [SKIP][77] ([fdo#111825]) +5 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb5/igt@kms_flip@2x-busy-flip.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#109274]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1:
    - shard-glk:          [PASS][79] -> [FAIL][80] ([i915#79])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#2672]) +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:
    - shard-glk:          [PASS][82] -> [FAIL][83] ([i915#49])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:
    - shard-iclb:         NOTRUN -> [SKIP][84] ([fdo#109280]) +3 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen:
    - shard-skl:          [PASS][85] -> [FAIL][86] ([i915#49]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][87] -> [FAIL][88] ([i915#1188])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl4/igt@kms_hdr@bpc-switch.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl10/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#533]) +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl2/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][90] ([fdo#108145] / [i915#265]) +3 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][91] ([i915#265])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
    - shard-apl:          NOTRUN -> [FAIL][92] ([i915#265])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
    - shard-glk:          NOTRUN -> [FAIL][93] ([i915#265])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-glk6/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
    - shard-kbl:          NOTRUN -> [FAIL][94] ([i915#265])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max:
    - shard-iclb:         NOTRUN -> [SKIP][95] ([fdo#109278]) +8 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb8/igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-apl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#2733])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#658]) +4 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-skl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#658]) +2 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl9/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@primary_page_flip:
    - shard-skl:          [PASS][99] -> [SKIP][100] ([fdo#109271]) +11 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl1/igt@kms_psr@primary_page_flip.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl4/igt@kms_psr@primary_page_flip.html

  * igt@kms_psr@psr2_primary_render:
    - shard-iclb:         NOTRUN -> [SKIP][101] ([fdo#109441])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb4/igt@kms_psr@psr2_primary_render.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][102] -> [SKIP][103] ([fdo#109441])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-snb:          NOTRUN -> [FAIL][104] ([i915#31])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-snb7/igt@kms_setmode@basic.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][105] ([IGT#2])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl1/igt@kms_sysfs_edid_timing.html
    - shard-skl:          NOTRUN -> [FAIL][106] ([IGT#2])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl10/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [PASS][107] -> [INCOMPLETE][108] ([i915#198])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl8/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl1/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          NOTRUN -> [SKIP][109] ([fdo#109271]) +197 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl6/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@prime_nv_api@i915_self_import:
    - shard-glk:          NOTRUN -> [SKIP][110] ([fdo#109271]) +30 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-glk5/igt@prime_nv_api@i915_self_import.html
    - shard-tglb:         NOTRUN -> [SKIP][111] ([fdo#109291]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb8/igt@prime_nv_api@i915_self_import.html
    - shard-iclb:         NOTRUN -> [SKIP][112] ([fdo#109291]) +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb8/igt@prime_nv_api@i915_self_import.html

  * igt@sysfs_clients@create:
    - shard-apl:          NOTRUN -> [SKIP][113] ([fdo#109271] / [i915#2994]) +3 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl6/igt@sysfs_clients@create.html

  * igt@sysfs_clients@fair-3:
    - shard-skl:          NOTRUN -> [SKIP][114] ([fdo#109271] / [i915#2994]) +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl7/igt@sysfs_clients@fair-3.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][115] ([i915#658]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-iclb7/igt@feature_discovery@psr2.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_exec_capture@pi@vecs0:
    - shard-skl:          [INCOMPLETE][117] ([i915#198] / [i915#2369] / [i915#2624]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl2/igt@gem_exec_capture@pi@vecs0.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl4/igt@gem_exec_capture@pi@vecs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-apl:          [SKIP][119] ([fdo#109271]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl7/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-tglb:         [FAIL][121] ([i915#2842]) -> [PASS][122] +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-tglb7/igt@gem_exec_fair@basic-pace@bcs0.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb7/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [FAIL][123] ([i915#2842]) -> [PASS][124] +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-glk9/igt@gem_exec_fair@basic-throttle@rcs0.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_whisper@basic-fds:
    - shard-glk:          [DMESG-WARN][125] ([i915#118] / [i915#95]) -> [PASS][126] +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-glk1/igt@gem_exec_whisper@basic-fds.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-glk5/igt@gem_exec_whisper@basic-fds.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-iclb:         [FAIL][127] ([i915#307]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][129] ([i915#180]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-apl3/igt@gem_softpin@noreloc-s3.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl1/igt@gem_softpin@noreloc-s3.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][131] ([i915#1436] / [i915#716]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl10/igt@gen9_exec_parse@allowed-single.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl8/igt@gen9_exec_parse@allowed-single.html

  * igt@kms_atomic@plane-primary-legacy:
    - shard-snb:          [SKIP][133] ([fdo#109271]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-snb2/igt@kms_atomic@plane-primary-legacy.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-snb5/igt@kms_atomic@plane-primary-legacy.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - shard-skl:          [SKIP][135] ([fdo#109271]) -> [PASS][136] +16 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl2/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl9/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html

  * igt@kms_ccs@pipe-a-random-ccs-data:
    - shard-iclb:         [DMESG-WARN][137] ([i915#3219]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-iclb1/igt@kms_ccs@pipe-a-random-ccs-data.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb2/igt@kms_ccs@pipe-a-random-ccs-data.html

  * igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge:
    - shard-glk:          [DMESG-FAIL][139] ([i915#118] / [i915#70] / [i915#95]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-glk7/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-glk3/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:
    - shard-glk:          [FAIL][141] ([i915#49]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
    - shard-iclb:         [SKIP][143] ([i915#668]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-iclb1/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb6/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c:
    - shard-skl:          [FAIL][145] ([i915#1036]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl2/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl10/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/index.html

--===============4546695545234861237==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: ioctl clean-ups</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/89443/">https://patchwork.freedesktop.org/series/89443/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10005_full -&gt; Patchwork_19984_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19984_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19984_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19984_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@bonded-slice:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-kbl1/igt@gem_exec_balancer@bonded-slice.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-kbl4/igt@gem_exec_balancer@bonded-slice.html">FAIL</a></p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-tglb3/igt@gem_exec_balancer@bonded-slice.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb3/igt@gem_exec_balancer@bonded-slice.html">FAIL</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-submit-golden-slice@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl7/igt@gem_exec_schedule@u-submit-golden-slice@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl2/igt@gem_exec_schedule@u-submit-golden-slice@rcs0.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@runner@aborted:<ul>
<li>shard-skl:          (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl10/igt@runner@aborted.html">FAIL</a>) ([i915#1436] / [i915#2369] / [i915#3002]) -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl8/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl2/igt@runner@aborted.html">FAIL</a>) ([i915#1814] / [i915#2029] / [i915#3002])</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19984_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb6/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-snb7/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-kbl1/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb2/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-glk1/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl2/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-snb5/igt@gem_ctx_persistence@legacy-engines-queued.html">SKIP</a> ([fdo#109271] / [i915#1099]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-glk1/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-glk2/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb5/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842])</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-glk5/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-glk8/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-glk6/igt@gem_exec_whisper@basic-queues-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-glk1/igt@gem_exec_whisper@basic-queues-forked-all.html">DMESG-WARN</a> ([i915#118] / [i915#95]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-tglb5/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-snb2/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl6/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb1/igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs.html">SKIP</a> ([i915#768]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb6/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> ([i915#3297])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb7/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> ([i915#3297])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledy_blits:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb6/igt@gen3_render_tiledy_blits.html">SKIP</a> ([fdo#109289])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb7/igt@gen3_render_tiledy_blits.html">SKIP</a> ([fdo#109289])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-snb7/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> ([fdo#109271]) +349 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb8/igt@gen9_exec_parse@secure-batches.html">SKIP</a> ([fdo#112306])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb8/igt@gen9_exec_parse@secure-batches.html">SKIP</a> ([fdo#112306])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl6/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl2/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl6/igt@i915_suspend@forcewake.html">INCOMPLETE</a> ([i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> ([i915#2521])</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-tglb6/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb7/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> ([i915#2521])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb2/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> ([fdo#111614]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb6/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> ([fdo#110725] / [fdo#111614]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb6/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-primary-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl10/igt@kms_ccs@pipe-c-crc-primary-basic.html">SKIP</a> ([fdo#109271] / [fdo#111304])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl1/igt@kms_chamelium@hdmi-edid-change-during-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl1/igt@kms_chamelium@vga-hpd.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-snb7/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-glk3/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb4/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-max:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb6/igt@kms_color_chamelium@pipe-d-ctm-max.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-kbl1/igt@kms_color_chamelium@pipe-d-ctm-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb8/igt@kms_color_chamelium@pipe-d-ctm-max.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl8/igt@kms_content_protection@srm.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x256-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-256x256-random.html">FAIL</a> ([i915#54])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb7/igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding.html">SKIP</a> ([fdo#109279] / [i915#3359])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb5/igt@kms_cursor_crc@pipe-a-cursor-512x170-sliding.html">SKIP</a> ([fdo#109278] / [fdo#109279])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x10-random:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-kbl7/igt@kms_cursor_crc@pipe-b-cursor-32x10-random.html">SKIP</a> ([fdo#109271]) +33 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb2/igt@kms_cursor_crc@pipe-b-cursor-32x10-random.html">SKIP</a> ([i915#3359]) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html">SKIP</a> ([fdo#109271]) +110 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl6/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl6/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.html">DMESG-WARN</a> ([i915#1982]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-busy-flip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb5/igt@kms_flip@2x-busy-flip.html">SKIP</a> ([fdo#111825]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb8/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html">SKIP</a> ([fdo#109274]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-glk4/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@c-hdmi-a1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-onoff.html">FAIL</a> ([i915#49])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html">SKIP</a> ([fdo#109280]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen.html">FAIL</a> ([i915#49]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl4/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl10/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl2/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-glk6/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb8/igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max.html">SKIP</a> ([fdo#109278]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl9/igt@kms_psr2_su@frontbuffer.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl1/igt@kms_psr@primary_page_flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl4/igt@kms_psr@primary_page_flip.html">SKIP</a> ([fdo#109271]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_render:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb4/igt@kms_psr@psr2_primary_render.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_cpu.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-snb7/igt@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl1/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl10/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl8/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl1/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html">INCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl6/igt@kms_vblank@pipe-d-ts-continuation-idle.html">SKIP</a> ([fdo#109271]) +197 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_self_import:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-glk5/igt@prime_nv_api@i915_self_import.html">SKIP</a> ([fdo#109271]) +30 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb8/igt@prime_nv_api@i915_self_import.html">SKIP</a> ([fdo#109291]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb8/igt@prime_nv_api@i915_self_import.html">SKIP</a> ([fdo#109291]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl6/igt@sysfs_clients@create.html">SKIP</a> ([fdo#109271] / [i915#2994]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl7/igt@sysfs_clients@fair-3.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-iclb7/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vecs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl2/igt@gem_exec_capture@pi@vecs0.html">INCOMPLETE</a> ([i915#198] / [i915#2369] / [i915#2624]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl4/igt@gem_exec_capture@pi@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl7/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-tglb7/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-tglb7/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-glk9/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-glk2/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-glk1/igt@gem_exec_whisper@basic-fds.html">DMESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-glk5/igt@gem_exec_whisper@basic-fds.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy.html">FAIL</a> ([i915#307]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-apl3/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-apl1/igt@gem_softpin@noreloc-s3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl10/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl8/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-legacy:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-snb2/igt@kms_atomic@plane-primary-legacy.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-snb5/igt@kms_atomic@plane-primary-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl2/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl9/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">PASS</a> +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-iclb1/igt@kms_ccs@pipe-a-random-ccs-data.html">DMESG-WARN</a> ([i915#3219]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb2/igt@kms_ccs@pipe-a-random-ccs-data.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-glk7/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.html">DMESG-FAIL</a> ([i915#118] / [i915#70] / [i915#95]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-glk3/igt@kms_cursor_edge_walk@pipe-a-64x64-right-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html">FAIL</a> ([i915#49]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-iclb1/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html">SKIP</a> ([i915#668]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-iclb6/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10005/shard-skl2/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c.html">FAIL</a> ([i915#1036]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19984/shard-skl10/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:</li>
</ul>
</li>
</ul>

</body>
</html>

--===============4546695545234861237==--

--===============1590312709==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1590312709==--
