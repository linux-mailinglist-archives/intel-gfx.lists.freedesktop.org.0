Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4340F4B8129
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 08:16:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AF8A10E5CA;
	Wed, 16 Feb 2022 07:16:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6471F10E671;
 Wed, 16 Feb 2022 07:16:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5FD72A008A;
 Wed, 16 Feb 2022 07:16:10 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============2324192323556335238=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Sebastian Siewior" <bigeasy@linutronix.de>
Date: Wed, 16 Feb 2022 07:16:10 -0000
Message-ID: <164499577035.16094.15469711157502481497@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <YgqmfKhwU5spS069@linutronix.de>
In-Reply-To: <YgqmfKhwU5spS069@linutronix.de>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Depend_on_!PREEMPT=5FRT=2E?=
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

--===============2324192323556335238==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Depend on !PREEMPT_RT.
URL   : https://patchwork.freedesktop.org/series/100121/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11230_full -> Patchwork_22272_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (13 -> 12)
------------------------------

  Missing    (1): shard-dg1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22272_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_balancer@sliced:
    - {shard-rkl}:        NOTRUN -> [INCOMPLETE][1] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-5/igt@gem_exec_balancer@sliced.html

  
Known issues
------------

  Here are the changes found in Patchwork_22272_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - {shard-rkl}:        ([PASS][2], [PASS][3], [PASS][4], [FAIL][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17]) -> ([PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-6/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-6/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-6/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-4/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-4/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-2/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-2/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-6/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-6/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-6/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-5/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-5/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-5/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-5/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-5/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-5/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-4/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-4/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-4/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-2/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-1/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-1/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-1/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-1/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][38] ([i915#4991])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-apl6/igt@gem_create@create-massive.html

  * igt@gem_eio@in-flight-10ms:
    - shard-tglb:         [PASS][39] -> [TIMEOUT][40] ([i915#3063])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-tglb7/igt@gem_eio@in-flight-10ms.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-tglb5/igt@gem_eio@in-flight-10ms.html

  * igt@gem_eio@kms:
    - shard-tglb:         [PASS][41] -> [FAIL][42] ([i915#232])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-tglb6/igt@gem_eio@kms.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-tglb8/igt@gem_eio@kms.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [PASS][43] -> [INCOMPLETE][44] ([i915#4547])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-skl1/igt@gem_exec_capture@pi@rcs0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-skl9/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_endless@dispatch@vecs0:
    - shard-tglb:         [PASS][45] -> [INCOMPLETE][46] ([i915#3778])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-tglb7/igt@gem_exec_endless@dispatch@vecs0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-tglb1/igt@gem_exec_endless@dispatch@vecs0.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][47] -> [FAIL][48] ([i915#2842]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][49] ([i915#2842])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-tglb8/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [PASS][50] -> [FAIL][51] ([i915#2842])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_whisper@basic-queues-all:
    - shard-glk:          [PASS][52] -> [DMESG-WARN][53] ([i915#118])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-glk2/igt@gem_exec_whisper@basic-queues-all.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-glk4/igt@gem_exec_whisper@basic-queues-all.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-kbl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#4613])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-kbl7/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-iclb:         NOTRUN -> [SKIP][55] ([i915#3297])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-iclb8/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen3_mixed_blits:
    - shard-tglb:         NOTRUN -> [SKIP][56] ([fdo#109289])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-tglb8/igt@gen3_mixed_blits.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109289]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-iclb8/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][58] -> [DMESG-WARN][59] ([i915#1436] / [i915#716])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-apl4/igt@gen9_exec_parse@allowed-all.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-apl1/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          NOTRUN -> [DMESG-WARN][60] ([i915#1436] / [i915#716])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-skl10/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-kbl:          NOTRUN -> [FAIL][61] ([i915#454])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-kbl7/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [PASS][62] -> [INCOMPLETE][63] ([i915#3921])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-snb4/igt@i915_selftest@live@hangcheck.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-snb2/igt@i915_selftest@live@hangcheck.html

  * igt@i915_selftest@perf@region:
    - shard-tglb:         [PASS][64] -> [DMESG-WARN][65] ([i915#2867]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-tglb8/igt@i915_selftest@perf@region.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-tglb2/igt@i915_selftest@perf@region.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#3777]) +4 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-apl7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][67] ([i915#3763])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-skl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#3777]) +4 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-skl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#3886]) +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-kbl3/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#3886]) +6 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-apl6/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([fdo#109278] / [i915#3886]) +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-iclb8/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#3886]) +3 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-skl6/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][73] ([fdo#111615] / [i915#3689])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-tglb8/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][74] ([fdo#109278]) +4 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-iclb8/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs.html

  * igt@kms_chamelium@hdmi-cmp-planar-formats:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-iclb8/igt@kms_chamelium@hdmi-cmp-planar-formats.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-apl7/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
    - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-skl10/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-d-ctm-max:
    - shard-kbl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-kbl3/igt@kms_color_chamelium@pipe-d-ctm-max.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          NOTRUN -> [TIMEOUT][79] ([i915#1319])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-kbl3/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][80] ([i915#1319])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-apl4/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][81] -> [DMESG-WARN][82] ([i915#180])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x85-rapid-movement:
    - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#1888])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-skl10/igt@kms_cursor_crc@pipe-d-cursor-256x85-rapid-movement.html

  * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][84] ([fdo#109274] / [fdo#109278])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-iclb8/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-apl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#533]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-apl7/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:
    - shard-tglb:         NOTRUN -> [SKIP][86] ([fdo#109274] / [fdo#111825]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-tglb8/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-kbl:          [PASS][87] -> [DMESG-WARN][88] ([i915#180]) +4 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
    - shard-tglb:         [PASS][89] -> [DMESG-WARN][90] ([i915#2411] / [i915#2867])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-tglb8/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-tglb2/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
    - shard-kbl:          NOTRUN -> [SKIP][91] ([fdo#109271]) +55 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
    - shard-skl:          NOTRUN -> [SKIP][92] ([fdo#109271]) +72 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-skl10/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-iclb:         NOTRUN -> [SKIP][93] ([fdo#109280]) +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt:
    - shard-tglb:         NOTRUN -> [SKIP][94] ([fdo#109280] / [fdo#111825]) +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-tglb8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][95] -> [FAIL][96] ([i915#1188])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
    - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271]) +79 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-apl7/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#533]) +1 similar issue
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-skl10/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-apl:          NOTRUN -> [FAIL][99] ([fdo#108145] / [i915#265])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][100] ([fdo#108145] / [i915#265]) +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][101] -> [FAIL][102] ([fdo#108145] / [i915#265])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][103] ([i915#265])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-apl4/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][104] ([fdo#108145] / [i915#265])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-kbl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_lowres@pipe-b-tiling-y:
    - shard-tglb:         NOTRUN -> [SKIP][105] ([i915#3536])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-tglb8/igt@kms_plane_lowres@pipe-b-tiling-y.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#658]) +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-skl6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-tglb:         NOTRUN -> [FAIL][107] ([i915#132] / [i915#3467])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-tglb8/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][108] -> [SKIP][109] ([fdo#109441])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][110] -> [FAIL][111] ([i915#31])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-glk7/igt@kms_setmode@basic.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-glk3/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][112] -> [DMESG-WARN][113] ([i915#180] / [i915#295])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@nouveau_crc@pipe-a-source-outp-inactive:
    - shard-iclb:         NOTRUN -> [SKIP][114] ([i915#2530])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-iclb8/igt@nouveau_crc@pipe-a-source-outp-inactive.html

  * igt@nouveau_crc@pipe-c-source-outp-inactive:
    - shard-tglb:         NOTRUN -> [SKIP][115] ([i915#2530])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-tglb8/igt@nouveau_crc@pipe-c-source-outp-inactive.html

  * igt@sysfs_clients@pidname:
    - shard-apl:          NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#2994]) +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-apl6/igt@sysfs_clients@pidname.html

  
#### Possible fixes ####

  * igt@api_intel_allocator@two-level-inception-interruptible:
    - {shard-rkl}:        [INCOMPLETE][117] -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/igt@api_intel_allocator@two-level-inception-interruptible.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-5/igt@api_intel_allocator@two-level-inception-interruptible.html

  * igt@feature_discovery@psr2:
    - {shard-rkl}:        [SKIP][119] ([i915#658]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/igt@feature_discovery@psr2.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-6/igt@feature_discovery@psr2.html

  * igt@gem_ctx_isolation@dirty-switch@vecs0:
    - {shard-rkl}:        [DMESG-WARN][121] -> [PASS][122] +1 similar issue
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/igt@gem_ctx_isolation@dirty-switch@vecs0.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-2/igt@gem_ctx_isolation@dirty-switch@vecs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][123] ([i915#2842]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - {shard-rkl}:        [INCOMPLETE][125] ([i915#5080]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/igt@gem_exec_whisper@basic-queues-priority-all.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-6/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@kms_atomic@plane-primary-legacy:
    - {shard-rkl}:        [SKIP][127] ([i915#1845]) -> [PASS][128] +8 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/igt@kms_atomic@plane-primary-legacy.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-6/igt@kms_atomic@plane-primary-legacy.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-glk:          [DMESG-WARN][129] ([i915#118]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-glk8/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-glk7/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - {shard-rkl}:        [SKIP][131] ([i915#1845] / [i915#4098]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-6/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_color@pipe-a-degamma:
    - {shard-rkl}:        ([SKIP][133], [SKIP][134]) ([i915#1149] / [i915#1849] / [i915#4098]) -> [PASS][135]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-4/igt@kms_color@pipe-a-degamma.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/igt@kms_color@pipe-a-degamma.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-6/igt@kms_color@pipe-a-degamma.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-rapid-movement:
    - {shard-rkl}:        [SKIP][136] ([fdo#112022]) -> [PASS][137] +2 similar issues
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-128x128-rapid-movement.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x128-rapid-movement.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic:
    - {shard-rkl}:        [SKIP][138] ([fdo#111825]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-6/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [FAIL][140] ([i915#2346]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-iclb:         [FAIL][142] ([i915#2346]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_dp_aux_dev:
    - {shard-rkl}:        [SKIP][144] ([i915#1257]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/igt@kms_dp_aux_dev.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-6/igt@kms_dp_aux_dev.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled:
    - {shard-rkl}:        [SKIP][146] ([fdo#111314]) -> [PASS][147] +1 similar issue
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html

  * igt@kms_flip@dpms-off-confusion-interruptible@a-edp1:
    - shard-skl:          [DMESG-WARN][148] ([i915#1982]) -> [PASS][149]
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-skl1/igt@kms_flip@dpms-off-confusion-interruptible@a-edp1.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-skl6/igt@kms_flip@dpms-off-confusion-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [FAIL][150] ([i915#2122]) -> [PASS][151]
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
    - shard-glk:          [FAIL][152] ([i915#79]) -> [PASS][153]
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [DMESG-WARN][154] ([i915#180]) -> [PASS][155] +5 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
    - shard-iclb:         [SKIP][156] ([i915#3701]) -> [PASS][157]
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html

  * igt@kms_frontbuffer_track

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/index.html

--===============2324192323556335238==
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
<tr><td><b>Series:</b></td><td>drm/i915: Depend on !PREEMPT_RT.</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/100121/">https://patchwork.freedesktop.org/series/100121/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22272/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22272/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11230_full -&gt; Patchwork_22272_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 12)</h2>
<p>Missing    (1): shard-dg1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22272_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>igt@gem_exec_balancer@sliced:<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-rkl-5/igt@gem_exec_balancer@sliced.html=
">INCOMPLETE</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22272_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11230/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-6/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-6/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11230/shard-rkl-5/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_112=
30/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_11230/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/sha=
rd-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_11230/shard-rkl-2/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-2/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl=
-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-1/boo=
t.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_22272/shard-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-6/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard=
-rkl-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_22272/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-5/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/sh=
ard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22272/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-5/boot.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272=
/shard-rkl-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_22272/shard-rkl-4/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
272/shard-rkl-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-rkl-2/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-2/boot.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22272/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_22272/shard-rkl-1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-1/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22272/shard-rkl-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-1/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-1=
/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-apl6/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-10ms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-tglb7/igt@gem_eio@in-flight-10ms.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-tg=
lb5/igt@gem_eio@in-flight-10ms.html">TIMEOUT</a> ([i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-tglb6/igt@gem_eio@kms.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-tglb8/igt@gem=
_eio@kms.html">FAIL</a> ([i915#232])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-skl1/igt@gem_exec_capture@pi@rcs0.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-s=
kl9/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@vecs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-tglb7/igt@gem_exec_endless@dispatch@vecs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272=
/shard-tglb1/igt@gem_exec_endless@dispatch@vecs0.html">INCOMPLETE</a> ([i91=
5#3778])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/s=
hard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842]) +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-tglb8/igt@gem_exec_fair@basic-none-solo=
@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_222=
72/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#=
2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-glk2/igt@gem_exec_whisper@basic-queues-all.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2227=
2/shard-glk4/igt@gem_exec_whisper@basic-queues-all.html">DMESG-WARN</a> ([i=
915#118])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-kbl7/igt@gem_lmem_swapping@heavy-random=
.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-iclb8/igt@gem_userptr_blits@unsync-unma=
p-cycles.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gen3_mixed_blits:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-tglb8/igt@gen3_mixed_blits.html">SKIP</=
a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-iclb8/igt@gen7_exec_parse@oacontrol-tra=
cking.html">SKIP</a> ([fdo#109289]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-apl4/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shar=
d-apl1/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / =
[i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-skl10/igt@gen9_exec_parse@allowed-singl=
e.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-kbl7/igt@i915_pm_dc@dc6-dpms.html">FAIL=
</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-snb4/igt@i915_selftest@live@hangcheck.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/sha=
rd-snb2/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#3921])=
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@perf@region:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-tglb8/igt@i915_selftest@perf@region.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard=
-tglb2/igt@i915_selftest@perf@region.html">DMESG-WARN</a> ([i915#2867]) +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-apl7/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#3=
777]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3763])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:=
</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-skl7/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([fdo#109271] / [i915#=
3777]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-kbl3/igt@kms_ccs@pipe-a-crc-primary-rot=
ation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886=
]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-apl6/igt@kms_ccs@pipe-a-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +6 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-iclb8/igt@kms_ccs@pipe-b-bad-pixel-form=
at-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886]) +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-skl6/igt@kms_ccs@pipe-c-crc-sprite-plan=
es-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +=
3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-tglb8/igt@kms_ccs@pipe-d-ccs-on-another=
-bo-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-iclb8/igt@kms_ccs@pipe-d-crc-primary-ba=
sic-y_tiled_ccs.html">SKIP</a> ([fdo#109278]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-cmp-planar-formats:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-iclb8/igt@kms_chamelium@hdmi-cmp-planar=
-formats.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-apl7/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-skl10/igt@kms_color_chamelium@pipe-d-ct=
m-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-kbl3/igt@kms_color_chamelium@pipe-d-ctm=
-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-kbl3/igt@kms_content_protection@atomic.=
html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-apl4/igt@kms_content_protection@lic.htm=
l">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2272/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</=
a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x85-rapid-movement:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-skl10/igt@kms_cursor_crc@pipe-d-cursor-=
256x85-rapid-movement.html">SKIP</a> ([fdo#109271] / [i915#1888])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-iclb8/igt@kms_cursor_legacy@2x-long-non=
blocking-modeset-vs-cursor-atomic.html">SKIP</a> ([fdo#109274] / [fdo#10927=
8])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-apl7/igt@kms_cursor_legacy@pipe-d-tortu=
re-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-tglb8/igt@kms_flip@2x-dpms-vs-vblank-ra=
ce-interruptible.html">SKIP</a> ([fdo#109274] / [fdo#111825]) +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22272/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-tglb8/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_22272/shard-tglb2/igt@kms_flip@flip-vs-suspend-interruptible@c-edp=
1.html">DMESG-WARN</a> ([i915#2411] / [i915#2867])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +55 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-skl10/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-pri-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +72 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-iclb8/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#109280]) +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-tglb8/igt@kms_frontbuffer_tracking@psr-=
2p-primscrn-pri-indfb-draw-blt.html">SKIP</a> ([fdo#109280] / [fdo#111825])=
 +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-sk=
l4/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-apl7/igt@kms_pipe_b_c_ivb@disable-pipe-=
b-enable-pipe-c.html">SKIP</a> ([fdo#109271]) +79 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-skl10/igt@kms_pipe_crc_basic@suspend-re=
ad-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22272/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-apl4/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-kbl7/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-y:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-tglb8/igt@kms_plane_lowres@pipe-b-tilin=
g-y.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-skl6/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-tglb8/igt@kms_psr@psr2_no_drrs.html">FA=
IL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/sh=
ard-iclb3/igt@kms_psr@psr2_sprite_mmap_cpu.html">SKIP</a> ([fdo#109441])</l=
i>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-glk7/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-glk3/igt=
@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22272/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DM=
ESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-source-outp-inactive:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-iclb8/igt@nouveau_crc@pipe-a-source-out=
p-inactive.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-source-outp-inactive:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-tglb8/igt@nouveau_crc@pipe-c-source-out=
p-inactive.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22272/shard-apl6/igt@sysfs_clients@pidname.html">SK=
IP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_allocator@two-level-inception-interruptible:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-rkl-5/igt@api_intel_allocator@two-level-inception-inter=
ruptible.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22272/shard-rkl-5/igt@api_intel_allocator@two-level-=
inception-interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-rkl-5/igt@feature_discovery@psr2.html">SKIP</a> ([i915#=
658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2272/shard-rkl-6/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@dirty-switch@vecs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-rkl-5/igt@gem_ctx_isolation@dirty-switch@vecs0.html">DM=
ESG-WARN</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22272/shard-rkl-2/igt@gem_ctx_isolation@dirty-switch@vecs0.html">PASS=
</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22272/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority-all:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-rkl-5/igt@gem_exec_whisper@basic-queues-priority-all.ht=
ml">INCOMPLETE</a> ([i915#5080]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_22272/shard-rkl-6/igt@gem_exec_whisper@basic-queu=
es-priority-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-legacy:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-rkl-5/igt@kms_atomic@plane-primary-legacy.html">SKIP</a=
> ([i915#1845]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_22272/shard-rkl-6/igt@kms_atomic@plane-primary-legacy.html">PASS</=
a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-glk8/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">DMES=
G-WARN</a> ([i915#118]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22272/shard-glk7/igt@kms_big_fb@x-tiled-32bpp-rotate-180.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-rkl-5/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12=
_rc_ccs_cc.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-rkl-6/igt@kms_cc=
s@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-degamma:</p>
<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11230/shard-rkl-4/igt@kms_color@pipe-a-degamma.html">SKIP</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11230/shard-rkl-5/i=
gt@kms_color@pipe-a-degamma.html">SKIP</a>) ([i915#1149] / [i915#1849] / [i=
915#4098]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22272/shard-rkl-6/igt@kms_color@pipe-a-degamma.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x128-rapid-movement:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-rkl-5/igt@kms_cursor_crc@pipe-a-cursor-128x128-rapid-mo=
vement.html">SKIP</a> ([fdo#112022]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22272/shard-rkl-6/igt@kms_cursor_crc@pipe-a-c=
ursor-128x128-rapid-movement.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-rkl-5/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html"=
>SKIP</a> ([fdo#111825]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_22272/shard-rkl-6/igt@kms_cursor_legacy@cursor-vs-flip-at=
omic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">=
FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_22272/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-legac=
y.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html"=
>FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22272/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor-tog=
gle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-rkl-5/igt@kms_dp_aux_dev.html">SKIP</a> ([i915#1257]) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/sh=
ard-rkl-6/igt@kms_dp_aux_dev.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xt=
iled.html">SKIP</a> ([fdo#111314]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_22272/shard-rkl-6/igt@kms_draw_crc@draw-method-=
xrgb8888-mmap-gtt-xtiled.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-off-confusion-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-skl1/igt@kms_flip@dpms-off-confusion-interruptible@a-ed=
p1.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_22272/shard-skl6/igt@kms_flip@dpms-off-confu=
sion-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-skl2/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_22272/shard-skl7/igt@kms_flip@flip-vs-expired-=
vblank-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_22272/shard-glk1/igt@kms_flip@flip-vs-expired=
-vblank-interruptible@b-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_22272/shard-apl4/igt@kms_flip@flip-vs-suspend-int=
erruptible@c-dp1.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11230/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp=
-ytile-downscaling.html">SKIP</a> ([i915#3701]) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_22272/shard-iclb3/igt@kms_flip_sca=
led_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_track</p>
</li>
</ul>

</body>
</html>

--===============2324192323556335238==--
