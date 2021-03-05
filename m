Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD92932F590
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Mar 2021 22:53:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 317D96EC77;
	Fri,  5 Mar 2021 21:53:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4D2026EC77;
 Fri,  5 Mar 2021 21:53:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D2A23A00FD;
 Fri,  5 Mar 2021 21:53:19 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jason Ekstrand" <jason@jlekstrand.net>
Date: Fri, 05 Mar 2021 21:53:19 -0000
Message-ID: <161498119985.8413.10035706457037497067@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210305170546.56472-1-jason.ekstrand@intel.com>
In-Reply-To: <20210305170546.56472-1-jason.ekstrand@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgUmV2?=
 =?utf-8?q?ert_=22drm/i915=3A_Propagate_errors_on_awaiting_already_signale?=
 =?utf-8?q?d_fences=22?=
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
Content-Type: multipart/mixed; boundary="===============0143991480=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0143991480==
Content-Type: multipart/alternative;
 boundary="===============3925567294931177914=="

--===============3925567294931177914==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Revert "drm/i915: Propagate errors on awaiting already signaled fences"
URL   : https://patchwork.freedesktop.org/series/87704/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9836_full -> Patchwork_19761_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19761_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19761_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19761_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gen9_exec_parse@basic-rejected:
    - shard-skl:          NOTRUN -> [FAIL][1] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl1/igt@gen9_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-apl:          [PASS][2] -> [FAIL][3] +3 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-apl1/igt@gen9_exec_parse@batch-without-end.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl1/igt@gen9_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-kbl:          [PASS][4] -> [FAIL][5] +6 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl3/igt@gen9_exec_parse@batch-zero-length.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl2/igt@gen9_exec_parse@batch-zero-length.html
    - shard-glk:          [PASS][6] -> [INCOMPLETE][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk9/igt@gen9_exec_parse@batch-zero-length.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-glk2/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-glk:          [PASS][8] -> [FAIL][9] +7 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk2/igt@gen9_exec_parse@bb-chained.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-glk9/igt@gen9_exec_parse@bb-chained.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-apl:          NOTRUN -> [FAIL][10] +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl1/igt@gen9_exec_parse@bb-start-out.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-skl:          [PASS][11] -> [TIMEOUT][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl1/igt@gen9_exec_parse@bb-start-param.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl9/igt@gen9_exec_parse@bb-start-param.html
    - shard-kbl:          [PASS][13] -> [TIMEOUT][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl6/igt@gen9_exec_parse@bb-start-param.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl7/igt@gen9_exec_parse@bb-start-param.html
    - shard-glk:          [PASS][15] -> [TIMEOUT][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk5/igt@gen9_exec_parse@bb-start-param.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-glk6/igt@gen9_exec_parse@bb-start-param.html
    - shard-apl:          [PASS][17] -> [TIMEOUT][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-apl7/igt@gen9_exec_parse@bb-start-param.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl8/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-skl:          [PASS][19] -> [FAIL][20] +3 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl6/igt@gen9_exec_parse@valid-registers.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl7/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_selftest@live@client:
    - shard-skl:          [PASS][21] -> [DMESG-FAIL][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl9/igt@i915_selftest@live@client.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl2/igt@i915_selftest@live@client.html

  * igt@kms_atomic_transition@plane-all-transition-nonblocking@edp-1-pipe-b:
    - shard-iclb:         [PASS][23] -> [FAIL][24] +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb7/igt@kms_atomic_transition@plane-all-transition-nonblocking@edp-1-pipe-b.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb6/igt@kms_atomic_transition@plane-all-transition-nonblocking@edp-1-pipe-b.html

  
Known issues
------------

  Here are the changes found in Patchwork_19761_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][25] ([i915#3002])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl1/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@clone:
    - shard-snb:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#1099]) +5 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-snb5/igt@gem_ctx_persistence@clone.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][27] -> [FAIL][28] ([i915#2842]) +2 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          [PASS][29] -> [FAIL][30] ([i915#2842])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl4/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl4/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#2842]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-glk9/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_reloc@basic-wide-active@rcs0:
    - shard-snb:          NOTRUN -> [FAIL][33] ([i915#2389]) +2 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-snb5/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - shard-glk:          [PASS][34] -> [DMESG-WARN][35] ([i915#118] / [i915#95])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk9/igt@gem_exec_whisper@basic-queues-priority-all.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-glk2/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#2190])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@big-copy-xy:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#307])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl10/igt@gem_mmap_gtt@big-copy-xy.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl6/igt@gem_mmap_gtt@big-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-iclb:         [PASS][39] -> [FAIL][40] ([i915#2428])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb8/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
    - shard-iclb:         [PASS][41] -> [FAIL][42] ([i915#307])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb4/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb2/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html

  * igt@gem_mmap_offset@clear:
    - shard-iclb:         [PASS][43] -> [FAIL][44] ([i915#3160])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb4/igt@gem_mmap_offset@clear.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb6/igt@gem_mmap_offset@clear.html

  * igt@gem_pread@exhaustion:
    - shard-snb:          NOTRUN -> [WARN][45] ([i915#2658])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-snb5/igt@gem_pread@exhaustion.html

  * igt@gem_userptr_blits@input-checking:
    - shard-snb:          NOTRUN -> [DMESG-WARN][46] ([i915#3002])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-snb2/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@mmap-offset-invalidate-active@wb:
    - shard-snb:          NOTRUN -> [SKIP][47] ([fdo#109271]) +302 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-snb5/igt@gem_userptr_blits@mmap-offset-invalidate-active@wb.html

  * igt@gem_userptr_blits@process-exit-mmap-busy@wc:
    - shard-apl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#1699]) +3 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl3/igt@gem_userptr_blits@process-exit-mmap-busy@wc.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][49] ([i915#2724])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-snb5/igt@gem_userptr_blits@vma-merge.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271]) +86 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl4/igt@gen7_exec_parse@basic-offset.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][51] -> [FAIL][52] ([i915#454])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb5/igt@i915_pm_dc@dc6-psr.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109293] / [fdo#109506])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb4/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#110723])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb4/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#2705])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl6/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_ccs@pipe-c-bad-rotation-90:
    - shard-skl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [fdo#111304])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl4/igt@kms_ccs@pipe-c-bad-rotation-90.html

  * igt@kms_chamelium@hdmi-hpd-storm:
    - shard-kbl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl3/igt@kms_chamelium@hdmi-hpd-storm.html

  * igt@kms_chamelium@hdmi-hpd-storm-disable:
    - shard-skl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl4/igt@kms_chamelium@hdmi-hpd-storm-disable.html
    - shard-iclb:         NOTRUN -> [SKIP][59] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb4/igt@kms_chamelium@hdmi-hpd-storm-disable.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-iclb:         NOTRUN -> [FAIL][60] ([i915#1149] / [i915#315])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb4/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_color@pipe-a-ctm-max:
    - shard-skl:          [PASS][61] -> [DMESG-WARN][62] ([i915#1982])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl8/igt@kms_color@pipe-a-ctm-max.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl9/igt@kms_color@pipe-a-ctm-max.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [fdo#111827]) +16 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl3/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
    - shard-snb:          NOTRUN -> [SKIP][64] ([fdo#109271] / [fdo#111827]) +20 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-snb5/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][65] ([i915#1319])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl3/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][66] ([fdo#109278] / [fdo#109279])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb4/igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][67] ([fdo#109278]) +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb4/igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          NOTRUN -> [DMESG-FAIL][68] ([IGT#6])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
    - shard-kbl:          NOTRUN -> [DMESG-FAIL][69] ([IGT#6])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
    - shard-apl:          NOTRUN -> [DMESG-FAIL][70] ([IGT#6])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-kbl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#533])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl3/igt@kms_cursor_legacy@pipe-d-torture-bo.html
    - shard-skl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#533])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl1/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][73] -> [INCOMPLETE][74] ([i915#155] / [i915#180] / [i915#636])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][75] -> [FAIL][76] ([i915#2122])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk1/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([fdo#109274])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb4/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-tglb:         [PASS][78] -> [FAIL][79] ([i915#2598])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@b-dp1:
    - shard-apl:          [PASS][80] -> [DMESG-WARN][81] ([i915#180])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-apl7/igt@kms_flip@flip-vs-suspend@b-dp1.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl8/igt@kms_flip@flip-vs-suspend@b-dp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
    - shard-apl:          NOTRUN -> [FAIL][82] ([i915#2641])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html
    - shard-skl:          NOTRUN -> [FAIL][83] ([i915#2628])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:
    - shard-skl:          [PASS][84] -> [FAIL][85] ([i915#49])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-iclb:         NOTRUN -> [SKIP][86] ([fdo#109280]) +4 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#533]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl7/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [PASS][88] -> [DMESG-WARN][89] ([i915#180])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][90] ([fdo#108145] / [i915#265]) +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][91] ([fdo#108145] / [i915#265]) +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][92] ([fdo#108145] / [i915#265]) +2 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
    - shard-skl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#658]) +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#658]) +7 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:
    - shard-iclb:         NOTRUN -> [SKIP][95] ([i915#658])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html
    - shard-kbl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#658]) +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html

  * igt@kms_psr@psr2_dpms:
    - shard-iclb:         [PASS][97] -> [SKIP][98] ([fdo#109441])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb2/igt@kms_psr@psr2_dpms.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb3/igt@kms_psr@psr2_dpms.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][99] ([IGT#2])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl6/igt@kms_sysfs_edid_timing.html

  * igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][100] ([fdo#109271]) +80 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl1/igt@kms_universal_plane@disable-primary-vs-flip-pipe-d.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          NOTRUN -> [SKIP][101] ([fdo#109271]) +163 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl7/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][102] ([fdo#109271] / [i915#2437])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl3/igt@kms_writeback@writeback-check-output.html

  * igt@nouveau_crc@pipe-a-ctx-flip-detection:
    - shard-iclb:         NOTRUN -> [SKIP][103] ([i915#2530])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb4/igt@nouveau_crc@pipe-a-ctx-flip-detection.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-iclb:         NOTRUN -> [SKIP][104] ([fdo#109289]) +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb4/igt@perf@per-context-mode-unprivileged.html

  * igt@perf@stress-open-close:
    - shard-apl:          NOTRUN -> [INCOMPLETE][105] ([i915#2369])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl6/igt@perf@stress-open-close.html

  * igt@runner@aborted:
    - shard-snb:          NOTRUN -> [FAIL][106] ([i915#3002] / [i915#698])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-snb2/igt@runner@aborted.html

  * igt@sysfs_clients@recycle-many:
    - shard-snb:          NOTRUN -> [FAIL][107] ([i915#3028])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-snb2/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@split-10@bcs0:
    - shard-kbl:          NOTRUN -> [SKIP][108] ([fdo#109271] / [i915#3026])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl3/igt@sysfs_clients@split-10@bcs0.html

  * igt@sysfs_clients@split-10@vcs0:
    - shard-skl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#3026]) +3 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl1/igt@sysfs_clients@split-10@vcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-glk:          [TIMEOUT][110] ([i915#2918]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk7/igt@gem_ctx_persistence@close-replace-race.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-glk9/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][112] ([i915#2369] / [i915#3063]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-tglb3/igt@gem_eio@unwedge-stress.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-tglb7/igt@gem_eio@unwedge-stress.html
    - shard-skl:          [TIMEOUT][114] ([i915#2369] / [i915#2771]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl1/igt@gem_eio@unwedge-stress.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [FAIL][116] ([i915#2846]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl6/igt@gem_exec_fair@basic-deadline.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl7/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][118] ([i915#2842]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [FAIL][120] ([i915#2842]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-iclb:         [DMESG-WARN][122] ([i915#2803]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb8/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb4/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [DMESG-WARN][124] ([i915#118] / [i915#95]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-glk5/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@i915_module_load@reload:
    - shard-apl:          [DMESG-WARN][126] ([i915#1982]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-apl3/igt@i915_module_load@reload.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl7/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [INCOMPLETE][128] ([i915#2782]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-snb7/igt@i915_selftest@live@hangcheck.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-snb7/igt@i915_selftest@live@hangcheck.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [FAIL][130] ([i915#2597]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-tglb8/igt@kms_async_flips@test-time-stamp.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-tglb8/igt@kms_async_flips@test-time-stamp.html

  * {igt@kms_ccs@pipe-a-random-ccs-data}:
    - shard-iclb:         [DMESG-WARN][132] -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb1/igt@kms_ccs@pipe-a-random-ccs-data.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb4/igt@kms_ccs@pipe-a-random-ccs-data.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
    - shard-skl:          [FAIL][134] ([i915#54]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
    - shard-glk:          [FAIL][136] ([i915#79]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][138] ([i915#180]) -> [PASS][139] +6 similar issues
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@wf_vblank-ts-check@b-edp1:
    - shard-skl:          [FAIL][140] ([i915#2122]) -> [PASS][141] +1 similar issue
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl10/igt@kms_flip@wf_vblank-ts-check@b-edp1.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl6/igt@kms_flip@wf_vblank-ts-check@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:
    - shard-iclb:         [SKIP][142] ([i915#668]) -> [PASS][143]
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][144] ([i915#1188]) -> [PASS][145]
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][146] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][147]
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb4/igt@kms_psr

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/index.html

--===============3925567294931177914==
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
<tr><td><b>Series:</b></td><td>Revert &quot;drm/i915: Propagate errors on awaiting already signaled fences&quot;</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/87704/">https://patchwork.freedesktop.org/series/87704/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9836_full -&gt; Patchwork_19761_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19761_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19761_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19761_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gen9_exec_parse@basic-rejected:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl1/igt@gen9_exec_parse@basic-rejected.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-apl1/igt@gen9_exec_parse@batch-without-end.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl1/igt@gen9_exec_parse@batch-without-end.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl3/igt@gen9_exec_parse@batch-zero-length.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl2/igt@gen9_exec_parse@batch-zero-length.html">FAIL</a> +6 similar issues</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk9/igt@gen9_exec_parse@batch-zero-length.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-glk2/igt@gen9_exec_parse@batch-zero-length.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk2/igt@gen9_exec_parse@bb-chained.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-glk9/igt@gen9_exec_parse@bb-chained.html">FAIL</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl1/igt@gen9_exec_parse@bb-start-out.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl1/igt@gen9_exec_parse@bb-start-param.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl9/igt@gen9_exec_parse@bb-start-param.html">TIMEOUT</a></p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl6/igt@gen9_exec_parse@bb-start-param.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl7/igt@gen9_exec_parse@bb-start-param.html">TIMEOUT</a></p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk5/igt@gen9_exec_parse@bb-start-param.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-glk6/igt@gen9_exec_parse@bb-start-param.html">TIMEOUT</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-apl7/igt@gen9_exec_parse@bb-start-param.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl8/igt@gen9_exec_parse@bb-start-param.html">TIMEOUT</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl6/igt@gen9_exec_parse@valid-registers.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl7/igt@gen9_exec_parse@valid-registers.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl9/igt@i915_selftest@live@client.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl2/igt@i915_selftest@live@client.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-transition-nonblocking@edp-1-pipe-b:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb7/igt@kms_atomic_transition@plane-all-transition-nonblocking@edp-1-pipe-b.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb6/igt@kms_atomic_transition@plane-all-transition-nonblocking@edp-1-pipe-b.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19761_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl1/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@clone:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-snb5/igt@gem_ctx_persistence@clone.html">SKIP</a> ([fdo#109271] / [i915#1099]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl4/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl4/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-glk9/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@rcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-snb5/igt@gem_exec_reloc@basic-wide-active@rcs0.html">FAIL</a> ([i915#2389]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk9/igt@gem_exec_whisper@basic-queues-priority-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-glk2/igt@gem_exec_whisper@basic-queues-priority-all.html">DMESG-WARN</a> ([i915#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl1/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-xy:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl10/igt@gem_mmap_gtt@big-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl6/igt@gem_mmap_gtt@big-copy-xy.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb3/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb8/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a> ([i915#2428])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb4/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb2/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb4/igt@gem_mmap_offset@clear.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb6/igt@gem_mmap_offset@clear.html">FAIL</a> ([i915#3160])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-snb5/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-snb2/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@mmap-offset-invalidate-active@wb:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-snb5/igt@gem_userptr_blits@mmap-offset-invalidate-active@wb.html">SKIP</a> ([fdo#109271]) +302 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap-busy@wc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl3/igt@gem_userptr_blits@process-exit-mmap-busy@wc.html">SKIP</a> ([fdo#109271] / [i915#1699]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-snb5/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#2724])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl4/igt@gen7_exec_parse@basic-offset.html">SKIP</a> ([fdo#109271]) +86 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb5/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb6/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb4/igt@i915_pm_rpm@modeset-pc8-residency-stress.html">SKIP</a> ([fdo#109293] / [fdo#109506])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb4/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl6/igt@kms_big_joiner@invalid-modeset.html">SKIP</a> ([fdo#109271] / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl4/igt@kms_ccs@pipe-c-bad-rotation-90.html">SKIP</a> ([fdo#109271] / [fdo#111304])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl3/igt@kms_chamelium@hdmi-hpd-storm.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm-disable:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl4/igt@kms_chamelium@hdmi-hpd-storm-disable.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +9 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb4/igt@kms_chamelium@hdmi-hpd-storm-disable.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb4/igt@kms_color@pipe-a-ctm-0-75.html">FAIL</a> ([i915#1149] / [i915#315])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-max:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl8/igt@kms_color@pipe-a-ctm-max.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl9/igt@kms_color@pipe-a-ctm-max.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl3/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-snb5/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl3/igt@kms_content_protection@lic.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb4/igt@kms_cursor_crc@pipe-b-cursor-512x170-offscreen.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb4/igt@kms_cursor_crc@pipe-d-cursor-64x21-sliding.html">SKIP</a> ([fdo#109278]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html">DMESG-FAIL</a> ([IGT#6])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html">DMESG-FAIL</a> ([IGT#6])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html">DMESG-FAIL</a> ([IGT#6])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl3/igt@kms_cursor_legacy@pipe-d-torture-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl1/igt@kms_cursor_legacy@pipe-d-torture-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#155] / [i915#180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk1/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-glk8/igt@kms_flip@2x-plain-flip-fb-recreate@ab-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb4/igt@kms_flip@2x-wf_vblank-ts-check.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-tglb1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-tglb6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> ([i915#2598])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-apl7/igt@kms_flip@flip-vs-suspend@b-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl8/igt@kms_flip@flip-vs-suspend@b-dp1.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html">FAIL</a> ([i915#2641])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html">FAIL</a> ([i915#2628])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-pgflip-blt.html">FAIL</a> ([i915#49])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([fdo#109280]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl7/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl3/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html">SKIP</a> ([i915#658])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb2/igt@kms_psr@psr2_dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb3/igt@kms_psr@psr2_dpms.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl6/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl1/igt@kms_universal_plane@disable-primary-vs-flip-pipe-d.html">SKIP</a> ([fdo#109271]) +80 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl7/igt@kms_vblank@pipe-d-ts-continuation-idle.html">SKIP</a> ([fdo#109271]) +163 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl3/igt@kms_writeback@writeback-check-output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-a-ctx-flip-detection:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb4/igt@nouveau_crc@pipe-a-ctx-flip-detection.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb4/igt@perf@per-context-mode-unprivileged.html">SKIP</a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@stress-open-close:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl6/igt@perf@stress-open-close.html">INCOMPLETE</a> ([i915#2369])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-snb2/igt@runner@aborted.html">FAIL</a> ([i915#3002] / [i915#698])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-snb2/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915#3028])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10@bcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl3/igt@sysfs_clients@split-10@bcs0.html">SKIP</a> ([fdo#109271] / [i915#3026])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10@vcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl1/igt@sysfs_clients@split-10@vcs0.html">SKIP</a> ([fdo#109271] / [i915#3026]) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@close-replace-race:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk7/igt@gem_ctx_persistence@close-replace-race.html">TIMEOUT</a> ([i915#2918]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-glk9/igt@gem_ctx_persistence@close-replace-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-tglb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-tglb7/igt@gem_eio@unwedge-stress.html">PASS</a></p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl1/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#2771]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl2/igt@gem_eio@unwedge-stress.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl7/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-glk1/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb8/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> ([i915#2803]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb4/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html">DMESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-glk5/igt@gem_exec_whisper@basic-queues-forked-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-apl3/igt@i915_module_load@reload.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-apl7/igt@i915_module_load@reload.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-snb7/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#2782]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-snb7/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-tglb8/igt@kms_async_flips@test-time-stamp.html">FAIL</a> ([i915#2597]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-tglb8/igt@kms_async_flips@test-time-stamp.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@kms_ccs@pipe-a-random-ccs-data}:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb1/igt@kms_ccs@pipe-a-random-ccs-data.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb4/igt@kms_ccs@pipe-a-random-ccs-data.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html">FAIL</a> ([i915#54]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-glk9/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-glk2/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl10/igt@kms_flip@wf_vblank-ts-check@b-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl6/igt@kms_flip@wf_vblank-ts-check@b-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html">SKIP</a> ([i915#668]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-iclb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-shrfb-draw-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19761/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9836/shard-iclb4/igt@kms_psr">SKIP</a> ([fdo#109642] / [fdo#111068] / [i915#658]) -&gt; [PASS][147]</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3925567294931177914==--

--===============0143991480==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0143991480==--
