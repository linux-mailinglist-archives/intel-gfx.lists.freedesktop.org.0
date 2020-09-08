Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D9C261DAF
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 21:41:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F306D6E152;
	Tue,  8 Sep 2020 19:41:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 66FA26E152;
 Tue,  8 Sep 2020 19:41:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 603D5A47E2;
 Tue,  8 Sep 2020 19:41:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Alejandro Sior" <aho@sior.be>
Date: Tue, 08 Sep 2020 19:41:01 -0000
Message-ID: <159959406135.21757.10717619934402182761@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <743818af-fa38-e31a-1780-84a6a7e72e25@web.de>
In-Reply-To: <743818af-fa38-e31a-1780-84a6a7e72e25@web.de>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gvt=3A_Prevent_NULL_pointer_dereference_in_intel=5Fvgpu?=
 =?utf-8?b?X3JlZ19yd19lZGlkKCk=?=
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
Content-Type: multipart/mixed; boundary="===============1783688536=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1783688536==
Content-Type: multipart/alternative;
 boundary="===============7183792004352409480=="

--===============7183792004352409480==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gvt: Prevent NULL pointer dereference in intel_vgpu_reg_rw_edid()
URL   : https://patchwork.freedesktop.org/series/81470/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8982_full -> Patchwork_18455_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18455_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18455_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18455_full:

### IGT changes ###

#### Possible regressions ####

  * igt@perf@enable-disable:
    - shard-skl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl8/igt@perf@enable-disable.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl10/igt@perf@enable-disable.html

  
Known issues
------------

  Here are the changes found in Patchwork_18455_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-cpu-active:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#198] / [i915#2439])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl5/igt@gem_exec_reloc@basic-cpu-active.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl3/igt@gem_exec_reloc@basic-cpu-active.html

  * igt@gem_exec_reloc@basic-cpu-gtt-active:
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#2439]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb7/igt@gem_exec_reloc@basic-cpu-gtt-active.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb7/igt@gem_exec_reloc@basic-cpu-gtt-active.html
    - shard-snb:          [PASS][7] -> [INCOMPLETE][8] ([i915#2439] / [i915#82]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-snb2/igt@gem_exec_reloc@basic-cpu-gtt-active.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-snb1/igt@gem_exec_reloc@basic-cpu-gtt-active.html

  * igt@gem_exec_reloc@basic-wc-active:
    - shard-iclb:         [PASS][9] -> [INCOMPLETE][10] ([i915#2439]) +2 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-iclb5/igt@gem_exec_reloc@basic-wc-active.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-iclb8/igt@gem_exec_reloc@basic-wc-active.html

  * igt@gem_exec_reloc@basic-wc-cpu-active:
    - shard-apl:          [PASS][11] -> [INCOMPLETE][12] ([i915#1635] / [i915#2439]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-apl7/igt@gem_exec_reloc@basic-wc-cpu-active.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-apl3/igt@gem_exec_reloc@basic-wc-cpu-active.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-glk:          [PASS][13] -> [INCOMPLETE][14] ([i915#2439]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-glk7/igt@gem_exec_reloc@basic-write-read-active.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-glk1/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_schedule@deep@rcs0:
    - shard-skl:          [PASS][15] -> [INCOMPLETE][16] ([i915#2439]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl10/igt@gem_exec_schedule@deep@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl5/igt@gem_exec_schedule@deep@rcs0.html

  * igt@gem_exec_whisper@basic-contexts-all:
    - shard-hsw:          [PASS][17] -> [INCOMPLETE][18] ([i915#2439])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-hsw8/igt@gem_exec_whisper@basic-contexts-all.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-hsw1/igt@gem_exec_whisper@basic-contexts-all.html

  * igt@gem_exec_whisper@basic-forked:
    - shard-kbl:          [PASS][19] -> [INCOMPLETE][20] ([i915#2439]) +2 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-kbl2/igt@gem_exec_whisper@basic-forked.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-kbl1/igt@gem_exec_whisper@basic-forked.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-skl:          [PASS][21] -> [TIMEOUT][22] ([i915#1958])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl3/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl3/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@i915_suspend@forcewake:
    - shard-skl:          [PASS][23] -> [INCOMPLETE][24] ([i915#636])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl1/igt@i915_suspend@forcewake.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl1/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - shard-skl:          [PASS][25] -> [DMESG-WARN][26] ([i915#1982]) +5 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl7/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl4/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-0:
    - shard-apl:          [PASS][27] -> [DMESG-WARN][28] ([i915#1635] / [i915#1982])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-apl7/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-apl2/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [PASS][29] -> [FAIL][30] ([i915#96])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-vga1:
    - shard-hsw:          [PASS][31] -> [INCOMPLETE][32] ([i915#2055])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-hsw1/igt@kms_flip@flip-vs-suspend-interruptible@b-vga1.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-hsw4/igt@kms_flip@flip-vs-suspend-interruptible@b-vga1.html

  * igt@kms_flip@plain-flip-ts-check@c-dp1:
    - shard-kbl:          [PASS][33] -> [FAIL][34] ([i915#2122])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-kbl3/igt@kms_flip@plain-flip-ts-check@c-dp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-kbl6/igt@kms_flip@plain-flip-ts-check@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack:
    - shard-iclb:         [PASS][35] -> [DMESG-WARN][36] ([i915#1982])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack.html

  * igt@kms_frontbuffer_tracking@fbc-farfromfence:
    - shard-kbl:          [PASS][37] -> [DMESG-WARN][38] ([i915#1982]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-farfromfence.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-farfromfence.html
    - shard-tglb:         [PASS][39] -> [DMESG-WARN][40] ([i915#1982])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-farfromfence.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-farfromfence.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#1188])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@perf@polling-parameterized:
    - shard-glk:          [PASS][43] -> [FAIL][44] ([i915#1542])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-glk4/igt@perf@polling-parameterized.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-glk4/igt@perf@polling-parameterized.html

  
#### Possible fixes ####

  * igt@gem_exec_reloc@basic-cpu-wc-active:
    - shard-tglb:         [INCOMPLETE][45] ([i915#2439]) -> [PASS][46] +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb5/igt@gem_exec_reloc@basic-cpu-wc-active.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb1/igt@gem_exec_reloc@basic-cpu-wc-active.html

  * igt@gem_exec_reloc@basic-gtt-read-active:
    - shard-skl:          [DMESG-FAIL][47] ([i915#2439]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl6/igt@gem_exec_reloc@basic-gtt-read-active.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl2/igt@gem_exec_reloc@basic-gtt-read-active.html

  * igt@gem_exec_reloc@basic-gtt-wc-active:
    - shard-apl:          [INCOMPLETE][49] ([i915#1635] / [i915#2439]) -> [PASS][50] +2 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-apl2/igt@gem_exec_reloc@basic-gtt-wc-active.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-apl6/igt@gem_exec_reloc@basic-gtt-wc-active.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-skl:          [INCOMPLETE][51] ([i915#2439]) -> [PASS][52] +3 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl5/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl3/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_reloc@basic-spin@vecs0:
    - shard-glk:          [INCOMPLETE][53] ([i915#2439]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-glk5/igt@gem_exec_reloc@basic-spin@vecs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-glk9/igt@gem_exec_reloc@basic-spin@vecs0.html

  * igt@gem_exec_reloc@basic-wc-cpu-active:
    - shard-hsw:          [INCOMPLETE][55] ([i915#2439]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-hsw4/igt@gem_exec_reloc@basic-wc-cpu-active.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-hsw2/igt@gem_exec_reloc@basic-wc-cpu-active.html

  * igt@gem_exec_reloc@basic-wc-gtt-active:
    - shard-iclb:         [INCOMPLETE][57] ([i915#2439]) -> [PASS][58] +4 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-iclb7/igt@gem_exec_reloc@basic-wc-gtt-active.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-iclb5/igt@gem_exec_reloc@basic-wc-gtt-active.html

  * igt@gem_exec_reloc@basic-write-gtt-active:
    - shard-snb:          [INCOMPLETE][59] ([i915#2439] / [i915#82]) -> [PASS][60] +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-snb7/igt@gem_exec_reloc@basic-write-gtt-active.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-snb2/igt@gem_exec_reloc@basic-write-gtt-active.html

  * igt@gem_exec_whisper@basic-queues-all:
    - shard-kbl:          [INCOMPLETE][61] ([i915#2439]) -> [PASS][62] +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-kbl7/igt@gem_exec_whisper@basic-queues-all.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-kbl2/igt@gem_exec_whisper@basic-queues-all.html

  * igt@i915_selftest@live@gem_execbuf:
    - shard-skl:          [INCOMPLETE][63] ([i915#2440]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl4/igt@i915_selftest@live@gem_execbuf.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl4/igt@i915_selftest@live@gem_execbuf.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-0:
    - shard-kbl:          [DMESG-WARN][65] ([i915#1982]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-kbl4/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-kbl7/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - shard-apl:          [DMESG-WARN][67] ([i915#1635] / [i915#1982]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-apl4/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-apl4/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][69] ([i915#2122]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-glk7/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1:
    - shard-hsw:          [INCOMPLETE][71] -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-hsw8/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-hsw6/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-kbl:          [DMESG-WARN][73] ([i915#180]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-kbl7/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-kbl7/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:
    - shard-tglb:         [DMESG-WARN][75] ([i915#1982]) -> [PASS][76] +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:
    - shard-skl:          [FAIL][77] ([i915#49]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl10/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][79] ([fdo#108145] / [i915#265]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-y:
    - shard-skl:          [DMESG-WARN][81] ([i915#1982]) -> [PASS][82] +1 similar issue
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl10/igt@kms_plane_lowres@pipe-a-tiling-y.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl9/igt@kms_plane_lowres@pipe-a-tiling-y.html

  * igt@sysfs_preempt_timeout@timeout@rcs0:
    - shard-skl:          [FAIL][83] ([i915#2060]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl7/igt@sysfs_preempt_timeout@timeout@rcs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl4/igt@sysfs_preempt_timeout@timeout@rcs0.html

  
#### Warnings ####

  * igt@gem_exec_reloc@basic-wc-active:
    - shard-hsw:          [INCOMPLETE][85] ([i915#2439]) -> [DMESG-FAIL][86] ([i915#2439])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-hsw4/igt@gem_exec_reloc@basic-wc-active.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-hsw1/igt@gem_exec_reloc@basic-wc-active.html

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][87] ([i915#658]) -> [SKIP][88] ([i915#588])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@runner@aborted:
    - shard-tglb:         ([FAIL][89], [FAIL][90], [FAIL][91], [FAIL][92], [FAIL][93], [FAIL][94], [FAIL][95], [FAIL][96], [FAIL][97], [FAIL][98], [FAIL][99], [FAIL][100], [FAIL][101], [FAIL][102], [FAIL][103], [FAIL][104], [FAIL][105], [FAIL][106], [FAIL][107], [FAIL][108], [FAIL][109], [FAIL][110], [FAIL][111]) ([i915#1764] / [i915#2263] / [i915#2398] / [i915#2439]) -> ([FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135]) ([i915#2263] / [i915#2398] / [i915#2439])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb3/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb7/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb6/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb2/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb1/igt@runner@aborted.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb6/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb5/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb8/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb3/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb6/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb1/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb8/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb2/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb2/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb5/igt@runner@aborted.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb3/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb5/igt@runner@aborted.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb8/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb5/igt@runner@aborted.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb2/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb2/igt@runner@aborted.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb6/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb1/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb3/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb5/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb8/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb1/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb8/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb2/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb2/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb1/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb7/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb8/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb5/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb7/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb5/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb2/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb7/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb3/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb6/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb1/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb8/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb6/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb2/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb1/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb6/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb3/igt@runner@aborted.html
    - shard-skl:          ([FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151]) ([i915#1436] / [i915#1611] / [i915#2263] / [i915#2439]) -> ([FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165]) ([i915#1611] / [i915#2263] / [i915#2439])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl4/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl7/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl10/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl10/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl1/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl3/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl5/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl7/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl6/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl10/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl3/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl4/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl2/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl6/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl2/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl8/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl8/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl5/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl1/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl3/igt@runner@aborted.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl8/igt@runner@aborted.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl3/igt@runner@aborted.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl9/igt@runner@aborted.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl5/igt@runner@aborted.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl3/igt@runner@aborted.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl7/igt@runner@aborted.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl4/igt@runner@aborted.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl10/igt@runner@aborted.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl6/igt@runner@aborted.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl9/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1611]: https://gitlab.freedesktop.org/drm/intel/issues/1611
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#1764]: https://gitlab.freedesktop.org/drm/intel/issues/1764
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2055]: https://gitlab.freedesktop.org/drm/intel/issues/2055
  [i915#2060]: https://gitlab.freedesktop.org/drm/intel/issues/2060
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2263]: https://gitlab.freedesktop.org/drm/intel/issues/2263
  [i915#2398]: https://gitlab.freedesktop.org/drm/intel/issues/2398
  [i915#2439]: https://gitlab.freedesktop.org/drm/intel/issues/2439
  [i915#2440]: https://gitlab.freedesktop.org/drm/intel/issues/2440
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#588]: https://gitlab.freedesktop.org/drm/intel/issues/588
  [i915#636]: https://gitlab.freedesktop.org/drm/intel/issues/636
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#96]: https://gitlab.freedesktop.org/drm/intel/issues/96


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8982 -> Patchwork_18455

  CI-20190529: 20190529
  CI_DRM_8982: 666ff2a4ca80b0715a8709ef5462d16b8c92d8ef @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5779: f52bf19b5f02d52fc3e201c6467ec3f511227fba @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18455: cc442c9d2d41b46f6f59d8378d3013a12f5ca91e @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/index.html

--===============7183792004352409480==
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
<tr><td><b>Series:</b></td><td>drm/i915/gvt: Prevent NULL pointer dereferen=
ce in intel_vgpu_reg_rw_edid()</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/81470/">https://patchwork.freedesktop.org/series/81470/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_18455/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18455/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_8982_full -&gt; Patchwork_18455_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18455_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_18455_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
18455_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@perf@enable-disable:<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-skl8/igt@perf@enable-disable.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl10/i=
gt@perf@enable-disable.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18455_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-cpu-active:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-skl5/igt@gem_exec_reloc@basic-cpu-active.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/s=
hard-skl3/igt@gem_exec_reloc@basic-cpu-active.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-active:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8982/shard-tglb7/igt@gem_exec_reloc@basic-cpu-gtt-active.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_184=
55/shard-tglb7/igt@gem_exec_reloc@basic-cpu-gtt-active.html">INCOMPLETE</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#243=
9</a>) +2 similar issues</p>
</li>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8982/shard-snb2/igt@gem_exec_reloc@basic-cpu-gtt-active.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1845=
5/shard-snb1/igt@gem_exec_reloc@basic-cpu-gtt-active.html">INCOMPLETE</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/82">i915#8=
2</a>) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-active:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-iclb5/igt@gem_exec_reloc@basic-wc-active.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/s=
hard-iclb8/igt@gem_exec_reloc@basic-wc-active.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu-active:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-apl7/igt@gem_exec_reloc@basic-wc-cpu-active.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1845=
5/shard-apl3/igt@gem_exec_reloc@basic-wc-cpu-active.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#=
2439</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-glk7/igt@gem_exec_reloc@basic-write-read-active.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
18455/shard-glk1/igt@gem_exec_reloc@basic-write-read-active.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">i91=
5#2439</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@deep@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-skl10/igt@gem_exec_schedule@deep@rcs0.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shar=
d-skl5/igt@gem_exec_schedule@deep@rcs0.html">INCOMPLETE</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) +2 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-all:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-hsw8/igt@gem_exec_whisper@basic-contexts-all.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_184=
55/shard-hsw1/igt@gem_exec_whisper@basic-contexts-all.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-kbl2/igt@gem_exec_whisper@basic-forked.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/sha=
rd-kbl1/igt@gem_exec_whisper@basic-forked.html">INCOMPLETE</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>) +2 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-skl3/igt@gem_userptr_blits@unsync-unmap-cycles.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
8455/shard-skl3/igt@gem_userptr_blits@unsync-unmap-cycles.html">TIMEOUT</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#195=
8</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-skl1/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl1=
/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/636">i915#636</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-skl7/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455=
/shard-skl4/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">DMESG-WARN</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>=
) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-apl7/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455=
/shard-apl2/igt@kms_big_fb@x-tiled-64bpp-rotate-0.html">DMESG-WARN</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#19=
82</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18455/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-lega=
cy.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/96">i915#96</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-vga1:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-hsw1/igt@kms_flip@flip-vs-suspend-interruptible@b-vga1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18455/shard-hsw4/igt@kms_flip@flip-vs-suspend-interruptible@b-vga1.h=
tml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2055">i915#2055</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-kbl3/igt@kms_flip@plain-flip-ts-check@c-dp1.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1845=
5/shard-kbl6/igt@kms_flip@plain-flip-ts-check@c-dp1.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrack:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-iclb7/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-fliptrac=
k.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18455/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-1p-shrfb-flipt=
rack.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-farfromfence:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8982/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-farfromfence.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18455/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-farfromfence.html">DMES=
G-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982=
">i915#1982</a>) +2 similar issues</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_8982/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-farfromfence.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_18455/shard-tglb8/igt@kms_frontbuffer_tracking@fbc-farfromfence.html">DM=
ESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/19=
82">i915#1982</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-skl5/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl=
3/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-glk4/igt@perf@polling-parameterized.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-=
glk4/igt@perf@polling-parameterized.html">FAIL</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-cpu-wc-active:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-tglb5/igt@gem_exec_reloc@basic-cpu-wc-active.html">INCOM=
PLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439"=
>i915#2439</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18455/shard-tglb1/igt@gem_exec_reloc@basic-cpu-wc-active.html">PAS=
S</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-active:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-skl6/igt@gem_exec_reloc@basic-gtt-read-active.html">DMES=
G-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439=
">i915#2439</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_18455/shard-skl2/igt@gem_exec_reloc@basic-gtt-read-active.html">P=
ASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-active:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-apl2/igt@gem_exec_reloc@basic-gtt-wc-active.html">INCOMP=
LETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1635">=
i915#1635</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2439">i915#2439</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_18455/shard-apl6/igt@gem_exec_reloc@basic-gtt-wc-active.html"=
>PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-skl5/igt@gem_exec_reloc@basic-many-active@rcs0.html">INC=
OMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/243=
9">i915#2439</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_18455/shard-skl3/igt@gem_exec_reloc@basic-many-active@rcs0.html"=
>PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-spin@vecs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-glk5/igt@gem_exec_reloc@basic-spin@vecs0.html">INCOMPLET=
E</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">i91=
5#2439</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_18455/shard-glk9/igt@gem_exec_reloc@basic-spin@vecs0.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu-active:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-hsw4/igt@gem_exec_reloc@basic-wc-cpu-active.html">INCOMP=
LETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">=
i915#2439</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_18455/shard-hsw2/igt@gem_exec_reloc@basic-wc-cpu-active.html">PASS<=
/a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt-active:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-iclb7/igt@gem_exec_reloc@basic-wc-gtt-active.html">INCOM=
PLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439"=
>i915#2439</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18455/shard-iclb5/igt@gem_exec_reloc@basic-wc-gtt-active.html">PAS=
S</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-active:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-snb7/igt@gem_exec_reloc@basic-write-gtt-active.html">INC=
OMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/243=
9">i915#2439</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/82">i915#82</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_18455/shard-snb2/igt@gem_exec_reloc@basic-write-gtt-active.htm=
l">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-all:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-kbl7/igt@gem_exec_whisper@basic-queues-all.html">INCOMPL=
ETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">i=
915#2439</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18455/shard-kbl2/igt@gem_exec_whisper@basic-queues-all.html">PASS</a=
> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_execbuf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-skl4/igt@i915_selftest@live@gem_execbuf.html">INCOMPLETE=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2440">i915=
#2440</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18455/shard-skl4/igt@i915_selftest@live@gem_execbuf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-kbl4/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html">DMESG-WA=
RN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i9=
15#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18455/shard-kbl7/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html">PASS</a> =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-apl4/igt@kms_cursor_legacy@basic-flip-before-cursor-vary=
ing-size.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1635">i915#1635</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_18455/shard-apl4/igt@kms_cursor_legacy@b=
asic-flip-before-cursor-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate-interruptibl=
e@bc-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_18455/shard-glk7/igt@kms_flip@2x-plain-f=
lip-fb-recreate-interruptible@bc-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-hsw8/igt@kms_flip@2x-plain-flip-ts-check-interruptible@a=
b-vga1-hdmi-a1.html">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_18455/shard-hsw6/igt@kms_flip@2x-plain-flip-ts=
-check-interruptible@ab-vga1-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-kbl7/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#=
180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18455/shard-kbl7/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-in=
dfb-plflip-blt.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb8/igt@kms_frontbuffer_tr=
acking@fbcpsr-1p-primscrn-indfb-plflip-blt.html">PASS</a> +2 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-c=
pu.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/49">i915#49</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_18455/shard-skl10/igt@kms_frontbuffer_tracking@psr-rgb565-draw=
-mmap-cpu.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_18455/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage=
-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-y:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-skl10/igt@kms_plane_lowres@pipe-a-tiling-y.html">DMESG-W=
ARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1982">i=
915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18455/shard-skl9/igt@kms_plane_lowres@pipe-a-tiling-y.html">PASS</a>=
 +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_preempt_timeout@timeout@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-skl7/igt@sysfs_preempt_timeout@timeout@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2060">i915#2=
060</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18455/shard-skl4/igt@sysfs_preempt_timeout@timeout@rcs0.html">PASS</a></l=
i>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-wc-active:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-hsw4/igt@gem_exec_reloc@basic-wc-active.html">INCOMPLETE=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">i915=
#2439</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_18455/shard-hsw1/igt@gem_exec_reloc@basic-wc-active.html">DMESG-FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">i915#24=
39</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-iclb4/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18=
455/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/588">i915#588</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-tglb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb7/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_8982/shard-tglb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb2/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_8982/shard-tglb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb6/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8=
982/shard-tglb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb8/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982=
/shard-tglb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb6/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/sh=
ard-tglb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb8/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard=
-tglb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_8982/shard-tglb2/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tg=
lb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_8982/shard-tglb3/igt@runner@aborted.html">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb5=
/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_8982/shard-tglb8/igt@runner@aborted.html">FAIL</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb5/ig=
t@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_8982/shard-tglb2/igt@runner@aborted.html">FAIL</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb2/igt@r=
unner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_8982/shard-tglb6/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-tglb1/igt@ru=
nner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/1764">i915#1764</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/2263">i915#2263</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/2398">i915#2398</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/2439">i915#2439</a>) -&gt; (<a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb3/igt@runner=
@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_18455/shard-tglb5/igt@runner@aborted.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb8/igt@r=
unner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18455/shard-tglb1/igt@runner@aborted.html">FAIL</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb8/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_18455/shard-tglb2/igt@runner@aborted.html">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-t=
glb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_18455/shard-tglb1/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/sh=
ard-tglb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_18455/shard-tglb8/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_184=
55/shard-tglb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb7/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_18455/shard-tglb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb2/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_18455/shard-tglb7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb3/igt@runner=
@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_18455/shard-tglb6/igt@runner@aborted.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb1/igt@r=
unner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_18455/shard-tglb8/igt@runner@aborted.html">FAIL</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-tglb6/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_18455/shard-tglb2/igt@runner@aborted.html">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-t=
glb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_18455/shard-tglb6/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/sh=
ard-tglb3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/2263">i915#2263</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/2398">i915#2398</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_8982/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl7/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_8982/shard-skl10/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl10/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
8982/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl3/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/=
shard-skl5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl7/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard=
-skl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_8982/shard-skl10/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl=
3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_8982/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl2/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/CI_DRM_8982/shard-skl6/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8982/shard-skl2/igt@run=
ner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_8982/shard-skl8/igt@runner@aborted.html">FAIL</a>) (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/intel/issues/1611">i915#1611</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2263">i915#2263=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2439">i91=
5#2439</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_18455/shard-skl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl5/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_18455/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl3/igt@runner=
@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_18455/shard-skl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl3/igt@run=
ner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_18455/shard-skl9/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl5/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_18455/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-skl7/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_18455/shard-skl4/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shard-sk=
l10/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_18455/shard-skl6/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18455/shar=
d-skl9/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/1611">i915#1611</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2263">i915#2263</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2439">i915#2439</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_8982 -&gt; Patchwork_18455</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_8982: 666ff2a4ca80b0715a8709ef5462d16b8c92d8ef @ git://anongit.fre=
edesktop.org/gfx-ci/linux<br />
  IGT_5779: f52bf19b5f02d52fc3e201c6467ec3f511227fba @ git://anongit.freede=
sktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18455: cc442c9d2d41b46f6f59d8378d3013a12f5ca91e @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============7183792004352409480==--

--===============1783688536==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1783688536==--
