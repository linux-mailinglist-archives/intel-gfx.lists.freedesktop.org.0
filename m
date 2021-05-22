Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FD138D327
	for <lists+intel-gfx@lfdr.de>; Sat, 22 May 2021 04:55:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A26816E8B9;
	Sat, 22 May 2021 02:55:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 489116E8B8;
 Sat, 22 May 2021 02:55:52 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 30F1AA47DB;
 Sat, 22 May 2021 02:55:52 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nikola Cornij" <nikola.cornij@amd.com>
Date: Sat, 22 May 2021 02:55:52 -0000
Message-ID: <162165215216.489.16213691227557788632@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210512210011.8425-1-nikola.cornij@amd.com>
In-Reply-To: <20210512210011.8425-1-nikola.cornij@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/dp=5Fmst=3A_Use_kHz_as_link_rate_units_when_settig_source_max_?=
 =?utf-8?q?link_caps_at_init_=28rev2=29?=
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
Content-Type: multipart/mixed; boundary="===============2024122651=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2024122651==
Content-Type: multipart/alternative;
 boundary="===============6904565607443290811=="

--===============6904565607443290811==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/dp_mst: Use kHz as link rate units when settig source max link caps at init (rev2)
URL   : https://patchwork.freedesktop.org/series/90099/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10113_full -> Patchwork_20163_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_20163_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-persistence:
    - shard-snb:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1099]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-snb2/igt@gem_ctx_persistence@legacy-engines-persistence.html

  * igt@gem_ctx_ringsize@idle@bcs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][2] ([i915#3316])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-skl5/igt@gem_ctx_ringsize@idle@bcs0.html

  * igt@gem_ctx_sseu@engines:
    - shard-tglb:         NOTRUN -> [SKIP][3] ([i915#280])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-tglb6/igt@gem_ctx_sseu@engines.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-apl:          NOTRUN -> [FAIL][4] ([i915#2389]) +3 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-apl6/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-glk:          [PASS][5] -> [INCOMPLETE][6] ([i915#2055] / [i915#3468]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-glk8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-glk4/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
    - shard-kbl:          [PASS][7] -> [INCOMPLETE][8] ([i915#3468])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl3/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-kbl7/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-snb:          NOTRUN -> [INCOMPLETE][9] ([i915#2055])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-snb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
    - shard-tglb:         [PASS][10] -> [INCOMPLETE][11] ([i915#3468])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-tglb1/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-tglb2/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-iclb:         [PASS][12] -> [FAIL][13] ([i915#2428])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-tglb:         [PASS][14] -> [INCOMPLETE][15] ([i915#3468] / [i915#750])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-tglb8/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-tglb7/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_mmap_gtt@fault-concurrent:
    - shard-glk:          NOTRUN -> [INCOMPLETE][16] ([i915#3468])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-glk4/igt@gem_mmap_gtt@fault-concurrent.html

  * igt@gem_mmap_gtt@fault-concurrent-x:
    - shard-snb:          NOTRUN -> [INCOMPLETE][17] ([i915#3468] / [i915#3485])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-snb5/igt@gem_mmap_gtt@fault-concurrent-x.html

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-snb:          NOTRUN -> [INCOMPLETE][18] ([i915#3468])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-snb7/igt@gem_mmap_gtt@fault-concurrent-y.html
    - shard-apl:          NOTRUN -> [INCOMPLETE][19] ([i915#3468]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-apl6/igt@gem_mmap_gtt@fault-concurrent-y.html

  * igt@gem_mmap_gtt@medium-copy-xy:
    - shard-snb:          NOTRUN -> [INCOMPLETE][20] ([i915#2055] / [i915#2502])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-snb2/igt@gem_mmap_gtt@medium-copy-xy.html

  * igt@gem_mmap_offset@clear:
    - shard-iclb:         [PASS][21] -> [FAIL][22] ([i915#3160])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-iclb3/igt@gem_mmap_offset@clear.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-iclb8/igt@gem_mmap_offset@clear.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][23] ([i915#2658]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-apl6/igt@gem_pread@exhaustion.html

  * igt@gem_render_copy@linear-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][24] ([i915#768])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-iclb1/igt@gem_render_copy@linear-to-vebox-yf-tiled.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-kbl:          NOTRUN -> [SKIP][25] ([fdo#109271]) +54 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-kbl4/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_softpin@evict-snoop:
    - shard-iclb:         NOTRUN -> [SKIP][26] ([fdo#109312])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-iclb1/igt@gem_softpin@evict-snoop.html
    - shard-tglb:         NOTRUN -> [SKIP][27] ([fdo#109312])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-tglb6/igt@gem_softpin@evict-snoop.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][28] ([i915#3002])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-apl6/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@set-cache-level:
    - shard-apl:          NOTRUN -> [FAIL][29] ([i915#3324])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-apl6/igt@gem_userptr_blits@set-cache-level.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][30] ([i915#180])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-kbl2/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen7_exec_parse@basic-allowed:
    - shard-tglb:         NOTRUN -> [SKIP][31] ([fdo#109289])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-tglb6/igt@gen7_exec_parse@basic-allowed.html
    - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#109289])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-iclb1/igt@gen7_exec_parse@basic-allowed.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271]) +168 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-apl6/igt@gen7_exec_parse@basic-offset.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-tglb:         NOTRUN -> [SKIP][34] ([fdo#112306])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-tglb6/igt@gen9_exec_parse@bb-start-cmd.html
    - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#112306])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-iclb1/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [PASS][36] -> [INCOMPLETE][37] ([i915#2880])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - shard-tglb:         NOTRUN -> [SKIP][38] ([fdo#111615]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-tglb6/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html
    - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#110723])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-iclb1/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_big_joiner@basic:
    - shard-kbl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#2705])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-kbl2/igt@kms_big_joiner@basic.html
    - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#2705])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-apl6/igt@kms_big_joiner@basic.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo:
    - shard-snb:          NOTRUN -> [SKIP][42] ([fdo#109271]) +240 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-snb7/igt@kms_ccs@pipe-a-ccs-on-another-bo.html

  * igt@kms_ccs@pipe-c-bad-aux-stride:
    - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111304])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-skl5/igt@kms_ccs@pipe-c-bad-aux-stride.html

  * igt@kms_chamelium@hdmi-hpd-after-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][44] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-iclb1/igt@kms_chamelium@hdmi-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-hpd-storm:
    - shard-kbl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-kbl2/igt@kms_chamelium@hdmi-hpd-storm.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +19 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-apl7/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color_chamelium@pipe-c-ctm-limited-range:
    - shard-snb:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-snb2/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:
    - shard-glk:          NOTRUN -> [SKIP][48] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-glk4/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-d-degamma:
    - shard-tglb:         NOTRUN -> [SKIP][49] ([fdo#109284] / [fdo#111827]) +4 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-tglb6/igt@kms_color_chamelium@pipe-d-degamma.html
    - shard-iclb:         NOTRUN -> [SKIP][50] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-iclb1/igt@kms_color_chamelium@pipe-d-degamma.html

  * igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:
    - shard-skl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-skl5/igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          NOTRUN -> [TIMEOUT][52] ([i915#1319])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-apl6/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@lic:
    - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109300] / [fdo#111066])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-iclb1/igt@kms_content_protection@lic.html
    - shard-tglb:         NOTRUN -> [SKIP][54] ([fdo#111828])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-tglb6/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x10-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][55] ([i915#3359])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-32x10-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][56] -> [INCOMPLETE][57] ([i915#300])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x85-random:
    - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109278]) +5 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-iclb1/igt@kms_cursor_crc@pipe-d-cursor-256x85-random.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
    - shard-tglb:         NOTRUN -> [SKIP][59] ([fdo#111825]) +8 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-tglb6/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html
    - shard-iclb:         NOTRUN -> [SKIP][60] ([fdo#109274] / [fdo#109278]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-iclb1/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html

  * igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglb:         NOTRUN -> [SKIP][61] ([i915#2065])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-tglb6/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html
    - shard-iclb:         NOTRUN -> [SKIP][62] ([i915#2065])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-iclb1/igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-skl:          NOTRUN -> [SKIP][63] ([fdo#109271]) +29 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-skl5/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#109274])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-iclb1/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][65] -> [FAIL][66] ([i915#2122])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
    - shard-skl:          [PASS][67] -> [FAIL][68] ([i915#2122])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-iclb:         NOTRUN -> [SKIP][69] ([fdo#109285])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-iclb1/igt@kms_force_connector_basic@force-load-detect.html
    - shard-tglb:         NOTRUN -> [SKIP][70] ([fdo#109285])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-tglb6/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([fdo#109280]) +5 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][72] -> [DMESG-WARN][73] ([i915#180]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu:
    - shard-glk:          NOTRUN -> [SKIP][74] ([fdo#109271]) +14 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-glk2/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][75] -> [FAIL][76] ([i915#1188])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][77] ([fdo#108145] / [i915#265]) +2 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][78] ([i915#265])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
    - shard-apl:          NOTRUN -> [FAIL][79] ([i915#265])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-kbl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#658]) +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-kbl4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#658]) +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-apl6/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
    - shard-skl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#658])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-skl5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
    - shard-iclb:         NOTRUN -> [SKIP][83] ([i915#658])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
    - shard-tglb:         NOTRUN -> [SKIP][84] ([i915#2920])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-tglb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html

  * igt@kms_psr@psr2_sprite_render:
    - shard-iclb:         [PASS][85] -> [SKIP][86] ([fdo#109441])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-iclb2/igt@kms_psr@psr2_sprite_render.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-iclb6/igt@kms_psr@psr2_sprite_render.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][87] -> [DMESG-WARN][88] ([i915#180] / [i915#295])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@nouveau_crc@pipe-a-source-rg:
    - shard-iclb:         NOTRUN -> [SKIP][89] ([i915#2530])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-iclb1/igt@nouveau_crc@pipe-a-source-rg.html
    - shard-tglb:         NOTRUN -> [SKIP][90] ([i915#2530])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-tglb6/igt@nouveau_crc@pipe-a-source-rg.html

  * igt@perf@polling-parameterized:
    - shard-iclb:         [PASS][91] -> [FAIL][92] ([i915#1542])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-iclb6/igt@perf@polling-parameterized.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-iclb5/igt@perf@polling-parameterized.html

  * igt@prime_nv_pcopy@test3_5:
    - shard-iclb:         NOTRUN -> [SKIP][93] ([fdo#109291])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-iclb1/igt@prime_nv_pcopy@test3_5.html
    - shard-tglb:         NOTRUN -> [SKIP][94] ([fdo#109291])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-tglb6/igt@prime_nv_pcopy@test3_5.html

  * igt@sysfs_clients@fair-0:
    - shard-apl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#2994]) +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-apl6/igt@sysfs_clients@fair-0.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-kbl:          [DMESG-WARN][96] ([i915#180]) -> [PASS][97] +3 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][98] ([i915#2369] / [i915#3063]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-tglb2/igt@gem_eio@unwedge-stress.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-tglb3/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][100] ([i915#2842]) -> [PASS][101] +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][102] ([i915#2842]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [FAIL][104] ([i915#2842]) -> [PASS][105] +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-glk4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_reloc@basic-wc-gtt-active:
    - shard-skl:          [FAIL][106] -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-skl1/igt@gem_exec_reloc@basic-wc-gtt-active.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-skl9/igt@gem_exec_reloc@basic-wc-gtt-active.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-iclb:         [INCOMPLETE][108] ([i915#3468]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-iclb8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-iclb1/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
    - shard-tglb:         [INCOMPLETE][110] ([i915#3468]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-tglb6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-tglb6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-glk:          [INCOMPLETE][112] ([i915#3468]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-glk4/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-glk2/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_pwrite@basic-random:
    - shard-glk:          [DMESG-WARN][114] ([i915#118] / [i915#95]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-glk4/igt@gem_pwrite@basic-random.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-glk2/igt@gem_pwrite@basic-random.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-skl:          [INCOMPLETE][116] ([i915#198]) -> [PASS][117] +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-skl2/igt@i915_pm_backlight@fade_with_suspend.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-skl1/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [INCOMPLETE][118] ([i915#2782]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-snb2/igt@i915_selftest@live@hangcheck.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-snb7/igt@i915_selftest@live@hangcheck.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][120] ([i915#2346]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [INCOMPLETE][122] ([i915#155] / [i915#180] / [i915#636]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@plain-flip-ts-check@a-edp1:
    - shard-skl:          [FAIL][124] ([i915#2122]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-skl2/igt@kms_flip@plain-flip-ts-check@a-edp1.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-skl2/igt@kms_flip@plain-flip-ts-check@a-edp1.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][126] ([fdo#108145] / [i915#265]) -> [PASS][127] +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][128] ([i915#1542]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-skl1/igt@perf@polling-parameterized.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-skl9/igt@perf@polling-parameterized.html

  * igt@perf_pmu@rc6-suspend:
    - shard-apl:          [DMESG-WARN][130] ([i915#180]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-apl6/igt@perf_pmu@rc6-suspend.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-apl7/igt@perf_pmu@rc6-suspend.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][132] ([i915#1804] / [i915#2684]) -> [WARN][133] ([i915#2684])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-iclb:         [SKIP][134] ([i915#2920]) -> [SKIP][135] ([i915#658]) +2 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-iclb6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2722] / [i915#3002] / [i915#3363] / [i915#602] / [i915#92]) -> ([FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166], [FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#2722] / [i915#3002] / [i915#3363] / [i915#602])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl1/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl1/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl1/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl1/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl1/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl2/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl1/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl7/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl4/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl3/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl3/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl7/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl4/igt@runner@aborted.h

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/index.html

--===============6904565607443290811==
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
<tr><td><b>Series:</b></td><td>drm/dp_mst: Use kHz as link rate units when =
settig source max link caps at init (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/90099/">https://patchwork.freedesktop.org/series/90099/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20163/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10113_full -&gt; Patchwork_20163_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20163_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-persistence:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-snb2/igt@gem_ctx_persistence@legacy-eng=
ines-persistence.html">SKIP</a> ([fdo#109271] / [i915#1099]) +2 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_ringsize@idle@bcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-skl5/igt@gem_ctx_ringsize@idle@bcs0.htm=
l">INCOMPLETE</a> ([i915#3316])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-tglb6/igt@gem_ctx_sseu@engines.html">SK=
IP</a> ([i915#280])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-apl6/igt@gem_exec_reloc@basic-wide-acti=
ve@bcs0.html">FAIL</a> ([i915#2389]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10113/shard-glk8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
163/shard-glk4/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a=
> ([i915#2055] / [i915#3468]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10113/shard-kbl3/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
163/shard-kbl7/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a=
> ([i915#3468])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-snb7/igt@gem_mmap_gtt@cpuset-basic-small=
-copy-xy.html">INCOMPLETE</a> ([i915#2055])</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10113/shard-tglb1/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_20163/shard-tglb2/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">INCOM=
PLETE</a> ([i915#3468])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163=
/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">FAIL</a> ([i915#2428=
])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-tglb8/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
163/shard-tglb7/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">INCOMPLETE</a>=
 ([i915#3468] / [i915#750])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-glk4/igt@gem_mmap_gtt@fault-concurrent.=
html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-x:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-snb5/igt@gem_mmap_gtt@fault-concurrent-=
x.html">INCOMPLETE</a> ([i915#3468] / [i915#3485])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-y:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-snb7/igt@gem_mmap_gtt@fault-concurrent-y=
.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-apl6/igt@gem_mmap_gtt@fault-concurrent-y=
.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-xy:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-snb2/igt@gem_mmap_gtt@medium-copy-xy.ht=
ml">INCOMPLETE</a> ([i915#2055] / [i915#2502])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-iclb3/igt@gem_mmap_offset@clear.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard-icl=
b8/igt@gem_mmap_offset@clear.html">FAIL</a> ([i915#3160])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-apl6/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-iclb1/igt@gem_render_copy@linear-to-veb=
ox-yf-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-kbl4/igt@gem_render_copy@x-tiled-to-veb=
ox-yf-tiled.html">SKIP</a> ([fdo#109271]) +54 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-iclb1/igt@gem_softpin@evict-snoop.html">=
SKIP</a> ([fdo#109312])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-tglb6/igt@gem_softpin@evict-snoop.html">=
SKIP</a> ([fdo#109312])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-apl6/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@set-cache-level:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-apl6/igt@gem_userptr_blits@set-cache-le=
vel.html">FAIL</a> ([i915#3324])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-kbl2/igt@gem_workarounds@suspend-resume=
-context.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allowed:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-tglb6/igt@gen7_exec_parse@basic-allowed.=
html">SKIP</a> ([fdo#109289])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-iclb1/igt@gen7_exec_parse@basic-allowed.=
html">SKIP</a> ([fdo#109289])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-apl6/igt@gen7_exec_parse@basic-offset.h=
tml">SKIP</a> ([fdo#109271]) +168 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-tglb6/igt@gen9_exec_parse@bb-start-cmd.h=
tml">SKIP</a> ([fdo#112306])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-iclb1/igt@gen9_exec_parse@bb-start-cmd.h=
tml">SKIP</a> ([fdo#112306])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-snb2/igt@i915_module_load@reload-with-fault-injection.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20163/shard-snb2/igt@i915_module_load@reload-with-fault-injection.ht=
ml">INCOMPLETE</a> ([i915#2880])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-tglb6/igt@kms_big_fb@yf-tiled-64bpp-rota=
te-0.html">SKIP</a> ([fdo#111615]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-iclb1/igt@kms_big_fb@yf-tiled-64bpp-rota=
te-0.html">SKIP</a> ([fdo#110723])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-kbl2/igt@kms_big_joiner@basic.html">SKIP=
</a> ([fdo#109271] / [i915#2705])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-apl6/igt@kms_big_joiner@basic.html">SKIP=
</a> ([fdo#109271] / [i915#2705])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-snb7/igt@kms_ccs@pipe-a-ccs-on-another-=
bo.html">SKIP</a> ([fdo#109271]) +240 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-skl5/igt@kms_ccs@pipe-c-bad-aux-stride.=
html">SKIP</a> ([fdo#109271] / [fdo#111304])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-after-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-iclb1/igt@kms_chamelium@hdmi-hpd-after-=
suspend.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-kbl2/igt@kms_chamelium@hdmi-hpd-storm.h=
tml">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-apl7/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> ([fdo#109271] / [fdo#111827]) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-limited-range:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-snb2/igt@kms_color_chamelium@pipe-c-ctm=
-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-glk4/igt@kms_color_chamelium@pipe-c-ctm=
-red-to-blue.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-degamma:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-tglb6/igt@kms_color_chamelium@pipe-d-deg=
amma.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +4 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-iclb1/igt@kms_color_chamelium@pipe-d-deg=
amma.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-degamma-lut-sizes:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-skl5/igt@kms_color_chamelium@pipe-inval=
id-degamma-lut-sizes.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-apl6/igt@kms_content_protection@legacy.=
html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-iclb1/igt@kms_content_protection@lic.htm=
l">SKIP</a> ([fdo#109300] / [fdo#111066])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-tglb6/igt@kms_content_protection@lic.htm=
l">SKIP</a> ([fdo#111828])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x10-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-=
32x10-sliding.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0163/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">INCOMPLETE</=
a> ([i915#300])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x85-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-iclb1/igt@kms_cursor_crc@pipe-d-cursor-=
256x85-random.html">SKIP</a> ([fdo#109278]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-tglb6/igt@kms_cursor_legacy@cursora-vs-f=
lipb-atomic.html">SKIP</a> ([fdo#111825]) +8 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-iclb1/igt@kms_cursor_legacy@cursora-vs-f=
lipb-atomic.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +1 similar issue</=
p>
</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-tglb6/igt@kms_dp_tiled_display@basic-tes=
t-pattern-with-chamelium.html">SKIP</a> ([i915#2065])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-iclb1/igt@kms_dp_tiled_display@basic-tes=
t-pattern-with-chamelium.html">SKIP</a> ([i915#2065])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-skl5/igt@kms_flip@2x-flip-vs-panning-vs=
-hang.html">SKIP</a> ([fdo#109271]) +29 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-iclb1/igt@kms_flip@2x-flip-vs-rmfb-inte=
rruptible.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-glk6/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a1-hdm=
i-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20163/shard-glk4/igt@kms_flip@2x-plain-flip-ts-check@ab-hdmi-a=
1-hdmi-a2.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20163/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html">FAIL</a>=
 ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-iclb1/igt@kms_force_connector_basic@forc=
e-load-detect.html">SKIP</a> ([fdo#109285])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-tglb6/igt@kms_force_connector_basic@forc=
e-load-detect.html">SKIP</a> ([fdo#109285])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-iclb1/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109280]) +5 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0163/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</=
a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-glk2/igt@kms_frontbuffer_tracking@fbcps=
r-rgb101010-draw-mmap-cpu.html">SKIP</a> ([fdo#109271]) +14 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shard=
-skl2/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-al=
pha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-al=
pha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-kbl4/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-apl6/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-skl5/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-iclb1/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-4.html">SKIP</a> ([i915#658])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-tglb6/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-4.html">SKIP</a> ([i915#2920])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-iclb2/igt@kms_psr@psr2_sprite_render.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shar=
d-iclb6/igt@kms_psr@psr2_sprite_render.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20163/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DM=
ESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-rg:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-iclb1/igt@nouveau_crc@pipe-a-source-rg.h=
tml">SKIP</a> ([i915#2530])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-tglb6/igt@nouveau_crc@pipe-a-source-rg.h=
tml">SKIP</a> ([i915#2530])</p>
</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-iclb6/igt@perf@polling-parameterized.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20163/shar=
d-iclb5/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_5:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-iclb1/igt@prime_nv_pcopy@test3_5.html">S=
KIP</a> ([fdo#109291])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-tglb6/igt@prime_nv_pcopy@test3_5.html">S=
KIP</a> ([fdo#109291])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-apl6/igt@sysfs_clients@fair-0.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-kbl3/igt@gem_ctx_isolation@preservation-s3@vecs0.html">=
DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_20163/shard-kbl2/igt@gem_ctx_isolation@preservation-s3=
@vecs0.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-tglb2/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i9=
15#2369] / [i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20163/shard-tglb3/igt@gem_eio@unwedge-stress.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20163/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20163/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-glk4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20163/shard-glk2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PA=
SS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt-active:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-skl1/igt@gem_exec_reloc@basic-wc-gtt-active.html">FAIL<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_201=
63/shard-skl9/igt@gem_exec_reloc@basic-wc-gtt-active.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10113/shard-iclb8/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INC=
OMPLETE</a> ([i915#3468]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_20163/shard-iclb1/igt@gem_mmap_gtt@cpuset-basic-small-co=
py.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10113/shard-tglb6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INC=
OMPLETE</a> ([i915#3468]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_20163/shard-tglb6/igt@gem_mmap_gtt@cpuset-basic-small-co=
py.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-glk4/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">INCOM=
PLETE</a> ([i915#3468]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20163/shard-glk2/igt@gem_mmap_gtt@cpuset-medium-copy-xy.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-random:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-glk4/igt@gem_pwrite@basic-random.html">DMESG-WARN</a> (=
[i915#118] / [i915#95]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20163/shard-glk2/igt@gem_pwrite@basic-random.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-skl2/igt@i915_pm_backlight@fade_with_suspend.html">INCO=
MPLETE</a> ([i915#198]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20163/shard-skl1/igt@i915_pm_backlight@fade_with_suspend.h=
tml">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-snb2/igt@i915_selftest@live@hangcheck.html">INCOMPLETE<=
/a> ([i915#2782]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20163/shard-snb7/igt@i915_selftest@live@hangcheck.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_20163/shard-skl2/igt@kms_cursor_legacy@flip-vs-=
cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a>=
 ([i915#155] / [i915#180] / [i915#636]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_20163/shard-kbl4/igt@kms_fbcon_fbt@fbc-sus=
pend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-skl2/igt@kms_flip@plain-flip-ts-check@a-edp1.html">FAIL=
</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20163/shard-skl2/igt@kms_flip@plain-flip-ts-check@a-edp1.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_20163/shard-skl3/igt@kms_plane_alpha_blend=
@pipe-c-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-skl1/igt@perf@polling-parameterized.html">FAIL</a> ([i9=
15#1542]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_20163/shard-skl9/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-apl6/igt@perf_pmu@rc6-suspend.html">DMESG-WARN</a> ([i9=
15#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_20163/shard-apl7/igt@perf_pmu@rc6-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> ([i915#1804] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20163/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fenc=
e.html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10113/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-=
1.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20163/shard-iclb6/igt@kms_psr2_sf@overlay-plane-upd=
ate-sf-dmg-area-1.html">SKIP</a> ([i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10113/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl1/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_10113/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl1/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_10113/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl2/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10113/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl7/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_101=
13/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl3/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/=
shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_10113/shard-kbl7/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10113/sha=
rd-kbl4/igt@runner@aborted.h">FAIL</a>, [FAIL][149], [FAIL][150], [FAIL][15=
1], [FAIL][152]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2722] / [i=
915#3002] / [i915#3363] / [i915#602] / [i915#92]) -&gt; ([FAIL][153], [FAIL=
][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [F=
AIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165],=
 [FAIL][166], [FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170]) ([fdo#109=
271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#2722] / [i915#3002] /=
 [i915#3363] / [i915#602])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============6904565607443290811==--

--===============2024122651==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2024122651==--
