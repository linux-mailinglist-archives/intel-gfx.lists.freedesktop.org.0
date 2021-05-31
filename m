Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8CD039643D
	for <lists+intel-gfx@lfdr.de>; Mon, 31 May 2021 17:50:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 878706E3F5;
	Mon, 31 May 2021 15:50:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0D1D56E16D;
 Mon, 31 May 2021 15:50:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EAA42A0019;
 Mon, 31 May 2021 15:50:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Mon, 31 May 2021 15:50:05 -0000
Message-ID: <162247620592.27951.10200327732867999888@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210531121940.267032-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210531121940.267032-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgTW92?=
 =?utf-8?q?e_LMEM_=28VRAM=29_management_over_to_TTM_=28rev3=29?=
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
Content-Type: multipart/mixed; boundary="===============0889712621=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0889712621==
Content-Type: multipart/alternative;
 boundary="===============3441628194021395452=="

--===============3441628194021395452==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Move LMEM (VRAM) management over to TTM (rev3)
URL   : https://patchwork.freedesktop.org/series/90681/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10152_full -> Patchwork_20238_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_20238_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-skl:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23]) -> ([PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [FAIL][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47]) ([i915#3174])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl9/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl9/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl8/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl8/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl8/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl5/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl4/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl4/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl4/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl3/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl2/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl2/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl10/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl10/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl1/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl1/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl1/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl10/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl10/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl10/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl2/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl2/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl3/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl3/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl4/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl4/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl5/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl5/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl6/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl6/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl6/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl7/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl7/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl8/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl8/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl8/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl9/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-apl:          NOTRUN -> [DMESG-WARN][48] ([i915#3002])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-apl3/igt@gem_create@create-massive.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][49] ([i915#180]) +4 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_ctx_persistence@legacy-engines-persistence:
    - shard-snb:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#1099]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-snb7/igt@gem_ctx_persistence@legacy-engines-persistence.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [PASS][51] -> [TIMEOUT][52] ([i915#2369] / [i915#2481] / [i915#3070])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb2/igt@gem_eio@unwedge-stress.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-iclb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-apl:          [PASS][53] -> [FAIL][54] ([i915#2842])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-apl7/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [PASS][55] -> [FAIL][56] ([i915#2842] / [i915#3468])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [PASS][57] -> [FAIL][58] ([i915#2842])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][59] ([i915#2842])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-snb:          NOTRUN -> [INCOMPLETE][60] ([i915#2055])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-snb5/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-skl:          NOTRUN -> [INCOMPLETE][61] ([i915#198] / [i915#2910] / [i915#3468])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl1/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-iclb:         [PASS][62] -> [FAIL][63] ([i915#2428])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-iclb:         [PASS][64] -> [INCOMPLETE][65] ([i915#3468])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb4/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-iclb3/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_mmap_gtt@fault-concurrent:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][66] ([i915#3468])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-kbl4/igt@gem_mmap_gtt@fault-concurrent.html

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-snb:          NOTRUN -> [INCOMPLETE][67] ([i915#3468])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-snb2/igt@gem_mmap_gtt@fault-concurrent-y.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [PASS][68] -> [FAIL][69] ([i915#644])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][70] ([i915#2658])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-apl3/igt@gem_pread@exhaustion.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          NOTRUN -> [DMESG-WARN][71] ([i915#180])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-apl6/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-kbl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#3323])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-kbl1/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#3323])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl1/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-kbl:          NOTRUN -> [FAIL][74] ([i915#454])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-kbl1/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][75] -> [FAIL][76] ([i915#454])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer:
    - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [fdo#111304])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl1/igt@kms_ccs@pipe-c-missing-ccs-buffer.html

  * igt@kms_chamelium@dp-hpd-with-enabled-mode:
    - shard-glk:          NOTRUN -> [SKIP][78] ([fdo#109271] / [fdo#111827])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-glk9/igt@kms_chamelium@dp-hpd-with-enabled-mode.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-apl6/igt@kms_chamelium@vga-hpd.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-kbl1/igt@kms_chamelium@vga-hpd-for-each-pipe.html
    - shard-skl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl1/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-snb:          NOTRUN -> [SKIP][82] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-snb5/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@kms_color@pipe-c-ctm-0-75:
    - shard-skl:          [PASS][83] -> [DMESG-WARN][84] ([i915#1982])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl2/igt@kms_color@pipe-c-ctm-0-75.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl6/igt@kms_color@pipe-c-ctm-0-75.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          NOTRUN -> [TIMEOUT][85] ([i915#1319])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-apl6/igt@kms_content_protection@atomic.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271]) +132 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-kbl2/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_legacy@pipe-d-torture-move:
    - shard-skl:          NOTRUN -> [SKIP][87] ([fdo#109271]) +46 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl7/igt@kms_cursor_legacy@pipe-d-torture-move.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [PASS][88] -> [DMESG-WARN][89] ([i915#180])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-kbl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#2672])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-kbl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
    - shard-apl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#2672])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-apl6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-apl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#2642])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-apl6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:
    - shard-glk:          NOTRUN -> [SKIP][93] ([fdo#109271]) +13 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-glk9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][94] -> [DMESG-WARN][95] ([i915#180]) +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#533])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-apl6/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-kbl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#533]) +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-kbl1/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html
    - shard-skl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#533])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl1/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][99] ([i915#265])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][100] ([fdo#108145] / [i915#265])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [PASS][101] -> [FAIL][102] ([fdo#108145] / [i915#265]) +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][103] ([i915#265])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-apl:          NOTRUN -> [FAIL][104] ([fdo#108145] / [i915#265])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          NOTRUN -> [FAIL][105] ([fdo#108145] / [i915#265])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-glk:          NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#2733])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-glk9/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-apl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#658]) +3 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-apl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-skl:          NOTRUN -> [SKIP][108] ([fdo#109271] / [i915#658])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl1/igt@kms_psr2_su@frontbuffer.html
    - shard-iclb:         [PASS][109] -> [SKIP][110] ([fdo#109642] / [fdo#111068] / [i915#658])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-iclb5/igt@kms_psr2_su@frontbuffer.html
    - shard-kbl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#658])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-kbl1/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][112] -> [SKIP][113] ([fdo#109441]) +2 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_psr@suspend:
    - shard-skl:          [PASS][114] -> [INCOMPLETE][115] ([i915#198])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl6/igt@kms_psr@suspend.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl1/igt@kms_psr@suspend.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][116] ([IGT#2])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-apl6/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][117] -> [DMESG-WARN][118] ([i915#180] / [i915#295])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-query-forked-hang:
    - shard-snb:          NOTRUN -> [SKIP][119] ([fdo#109271]) +146 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-snb7/igt@kms_vblank@pipe-d-query-forked-hang.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-apl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#2437])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-apl6/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
    - shard-apl:          NOTRUN -> [SKIP][121] ([fdo#109271]) +149 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-apl3/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html

  * igt@sysfs_clients@recycle:
    - shard-kbl:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#2994]) +2 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-kbl1/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@recycle-many:
    - shard-skl:          NOTRUN -> [SKIP][123] ([fdo#109271] / [i915#2994]) +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl1/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@split-25:
    - shard-apl:          NOTRUN -> [SKIP][124] ([fdo#109271] / [i915#2994])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-apl3/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][125] ([i915#2842]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [FAIL][127] ([i915#2842]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
    - shard-iclb:         [FAIL][129] ([i915#2849]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_mmap_gtt@big-copy-xy:
    - shard-glk:          [FAIL][131] ([i915#307]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-glk5/igt@gem_mmap_gtt@big-copy-xy.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-glk5/igt@gem_mmap_gtt@big-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-skl:          [INCOMPLETE][133] ([i915#198] / [i915#3468]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl7/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl5/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-apl:          [INCOMPLETE][135] ([i915#3468]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-apl6/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-apl3/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
    - shard-iclb:         [INCOMPLETE][137] ([i915#3468]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb2/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-iclb5/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-glk:          [INCOMPLETE][139] ([i915#3468]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-glk5/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-glk9/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][141] ([i915#2122]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [DMESG-WARN][143] ([i915#180]) -> [PASS][144] +7 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - shard-iclb:         [FAIL][145] ([i915#49]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-iclb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][147] ([i915#1188]) -> [PASS][148] +1 similar issue
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [SKIP][149] ([fdo#109441]) -> [PASS][150] +1 similar issue
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb6/igt@kms_psr@psr2_primary_mmap_gtt.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html

  
#### Warnings ####

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-skl:          [INCOMPLETE][151] ([i915#198] / [i915#3468]) -> [INCOMPLETE][152] ([i915#198])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl5/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl8/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@i915_selftest@live@execlists:
    - shard-iclb:         [INCOMPLETE][153] ([i915#2782] / [i915#3462]) -> [DMESG-FAIL][154] ([i915#3462])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb1/igt@i915_selftest@live@execlists.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-iclb6/igt@i915_selftest@live@execlists.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][155] ([i915#658]) -> [SKIP][156] ([i915#2920]) +2 similar issues
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
    - shard-iclb:         [SKIP][157] ([i915#2920]) -> [SKIP][158] ([i915#658]) +1 similar issue
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-iclb1/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][159], [FAIL][160], [FAIL][161], [FAIL][162], [FAIL][163], [FAIL][164], [FAIL][165], [FAIL][166], [FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170], [FAIL][171], [FAIL][172], [FAIL][173], [FAIL][174], [FAIL][175], [FAIL][176]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#2722] / [i915#3002] / [i915#3363] / [i915#602] / [i915#92]) -> ([FAIL][177], [FAIL][178], [FAIL][179], [FAIL][180], [FAIL][181], [FAIL][182], [FAIL][183], [FAIL][184], [FAIL][185], [FAIL][186], [FAIL][187], [FAIL][188], [FAIL][189], [FAIL][190], [FAIL][191], [FAIL][192]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2722] / [i915#3002] / [i915#3363] / [i915#602] / [i915#92])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl3/igt@runner@aborted.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl2/igt@runner@aborted.html
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl2/igt@runner@aborted.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl3/igt@runner@aborted.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl4/igt@runner@aborted.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl3/igt@runner@aborted.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl1/igt@runner@aborted.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl1/igt@runner@aborted.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl7/igt@runner@aborted.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl4/igt@runner@aborted.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl7/igt@runner@aborted.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl4/igt@runner@aborted.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl7/igt@runner@aborted.html
   [172]: https://intel-

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/index.html

--===============3441628194021395452==
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
<tr><td><b>Series:</b></td><td>Move LMEM (VRAM) management over to TTM (rev=
3)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/90681/">https://patchwork.freedesktop.org/series/90681/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20238/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20238/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10152_full -&gt; Patchwork_20238_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20238_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10152/shard-skl9/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10152/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_10152/shard-skl8/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/sha=
rd-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_10152/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl6/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl6/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_10152/shard-skl5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_10152/shard-skl5/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl4/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152=
/shard-skl4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_10152/shard-skl4/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl3/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-sk=
l3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-skl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl2/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl10/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10152/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_10152/shard-skl1/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-skl1/boot.html">PA=
SS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_20238/shard-skl1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_20238/shard-skl1/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_20238/shard-skl10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_20238/shard-skl10/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl10/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20238/shard-skl2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20238/shard-skl2/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl3/bo=
ot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20238/shard-skl3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20238/shard-skl4/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl4/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20238/shard-skl5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20238/shard-skl5/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl6/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20238/shard-skl6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20238/shard-skl6/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl7/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20238/shard-skl7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20238/shard-skl8/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl8/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20238/shard-skl8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20238/shard-skl9/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl9/bo=
ot.html">PASS</a>) ([i915#3174])</li>
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
/tree/drm-tip/Patchwork_20238/shard-apl3/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-kbl1/igt@gem_ctx_isolation@preservation=
-s3@vcs0.html">DMESG-WARN</a> ([i915#180]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-persistence:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-snb7/igt@gem_ctx_persistence@legacy-eng=
ines-persistence.html">SKIP</a> ([fdo#109271] / [i915#1099]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-iclb2/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-ic=
lb5/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#2481]=
 / [i915#3070])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-apl6/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/sh=
ard-apl7/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/s=
hard-apl7/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842] / =
[i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_202=
38/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#=
2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-iclb2/igt@gem_exec_fair@basic-pace@vcs1=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-snb5/igt@gem_mmap_gtt@cpuset-basic-smal=
l-copy.html">INCOMPLETE</a> ([i915#2055])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-skl1/igt@gem_mmap_gtt@cpuset-basic-smal=
l-copy-odd.html">INCOMPLETE</a> ([i915#198] / [i915#2910] / [i915#3468])</l=
i>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2023=
8/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a> ([i915#24=
28])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-iclb4/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
238/shard-iclb3/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">INCOMPLETE</a>=
 ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-kbl4/igt@gem_mmap_gtt@fault-concurrent.=
html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-y:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-snb2/igt@gem_mmap_gtt@fault-concurrent-=
y.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_202=
38/shard-glk2/igt@gem_ppgtt@flink-and-close-vma-leak.html">FAIL</a> ([i915#=
644])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-apl3/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-apl6/igt@gem_softpin@noreloc-s3.html">D=
MESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20238/shard-kbl1/igt@gem_userptr_blits@dmabuf-sync.h=
tml">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20238/shard-skl1/igt@gem_userptr_blits@dmabuf-sync.h=
tml">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-kbl1/igt@i915_pm_dc@dc6-dpms.html">FAIL=
</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-iclb3/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-iclb2/=
igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-skl1/igt@kms_ccs@pipe-c-missing-ccs-buf=
fer.html">SKIP</a> ([fdo#109271] / [fdo#111304])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-with-enabled-mode:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-glk9/igt@kms_chamelium@dp-hpd-with-enab=
led-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-apl6/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> ([fdo#109271] / [fdo#111827]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20238/shard-kbl1/igt@kms_chamelium@vga-hpd-for-each-=
pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20238/shard-skl1/igt@kms_chamelium@vga-hpd-for-each-=
pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-without-ddc:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-snb5/igt@kms_chamelium@vga-hpd-without-=
ddc.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-skl2/igt@kms_color@pipe-c-ctm-0-75.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-=
skl6/igt@kms_color@pipe-c-ctm-0-75.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-apl6/igt@kms_content_protection@atomic.=
html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-kbl2/igt@kms_cursor_crc@pipe-d-cursor-s=
uspend.html">SKIP</a> ([fdo#109271]) +132 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-skl7/igt@kms_cursor_legacy@pipe-d-tortu=
re-move.html">SKIP</a> ([fdo#109271]) +46 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20238/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20238/shard-kbl2/igt@kms_flip_scaled_crc@flip-32bpp-=
ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])<=
/p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20238/shard-apl6/igt@kms_flip_scaled_crc@flip-32bpp-=
ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])<=
/p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-apl6/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-glk9/igt@kms_frontbuffer_tracking@psr-2=
p-scndscrn-pri-indfb-draw-render.html">SKIP</a> ([fdo#109271]) +13 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard=
-kbl1/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> ([i915#180]) +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-apl6/igt@kms_pipe_crc_basic@hang-read-c=
rc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20238/shard-kbl1/igt@kms_pipe_crc_basic@nonblocking-=
crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533]) +2 sim=
ilar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20238/shard-skl1/igt@kms_pipe_crc_basic@nonblocking-=
crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-m=
in.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20238/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha=
-min.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-c=
overage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-c=
lipping-clamping:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-glk9/igt@kms_plane_scaling@scaler-with-=
clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo=
#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-apl3/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20238/shard-skl1/igt@kms_psr2_su@frontbuffer.html">S=
KIP</a> ([fdo#109271] / [i915#658])</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10152/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-ic=
lb5/igt@kms_psr2_su@frontbuffer.html">SKIP</a> ([fdo#109642] / [fdo#111068]=
 / [i915#658])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20238/shard-kbl1/igt@kms_psr2_su@frontbuffer.html">S=
KIP</a> ([fdo#109271] / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/sh=
ard-iclb1/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> ([fdo#109441]) +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-skl6/igt@kms_psr@suspend.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl1/igt=
@kms_psr@suspend.html">INCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-apl6/igt@kms_sysfs_edid_timing.html">FA=
IL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20238/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DM=
ESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-forked-hang:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-snb7/igt@kms_vblank@pipe-d-query-forked=
-hang.html">SKIP</a> ([fdo#109271]) +146 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-apl6/igt@kms_writeback@writeback-invali=
d-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-apl3/igt@prime_nv_api@i915_nv_reimport_=
twice_check_flink_name.html">SKIP</a> ([fdo#109271]) +149 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-kbl1/igt@sysfs_clients@recycle.html">SK=
IP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-skl1/igt@sysfs_clients@recycle-many.htm=
l">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20238/shard-apl3/igt@sysfs_clients@split-25.html">S=
KIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20238/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10152/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a=
> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20238/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a></p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10152/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</=
a> ([i915#2849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_20238/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">PAS=
S</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-xy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-glk5/igt@gem_mmap_gtt@big-copy-xy.html">FAIL</a> ([i915=
#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
20238/shard-glk5/igt@gem_mmap_gtt@big-copy-xy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-skl7/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INC=
OMPLETE</a> ([i915#198] / [i915#3468]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_20238/shard-skl5/igt@gem_mmap_gtt@cpuset-ba=
sic-small-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10152/shard-apl6/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">I=
NCOMPLETE</a> ([i915#3468]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_20238/shard-apl3/igt@gem_mmap_gtt@cpuset-basic-small-c=
opy-xy.html">PASS</a></p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10152/shard-iclb2/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">=
INCOMPLETE</a> ([i915#3468]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20238/shard-iclb5/igt@gem_mmap_gtt@cpuset-basic-small=
-copy-xy.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-glk5/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">INCOM=
PLETE</a> ([i915#3468]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20238/shard-glk9/igt@gem_mmap_gtt@cpuset-medium-copy-xy.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
a-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_20238/shard-skl3/igt@kms_flip@plain-flip-fb-re=
create-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html">DME=
SG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_20238/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend=
.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-iclb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrf=
b-msflip-blt.html">FAIL</a> ([i915#49]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_20238/shard-iclb1/igt@kms_frontbuffer_trac=
king@psr-1p-primscrn-shrfb-msflip-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915=
#1188]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20238/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-iclb6/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a> =
([fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20238/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html">PASS</a> =
+1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-skl5/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">=
INCOMPLETE</a> ([i915#198] / [i915#3468]) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_20238/shard-skl8/igt@gem_mmap_gtt@cpuset=
-basic-small-copy-xy.html">INCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-iclb1/igt@i915_selftest@live@execlists.html">INCOMPLETE=
</a> ([i915#2782] / [i915#3462]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20238/shard-iclb6/igt@i915_selftest@live@execlist=
s.html">DMESG-FAIL</a> ([i915#3462])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a-4.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20238/shard-iclb2/igt@kms_psr2_sf@overlay-primary-=
update-sf-dmg-area-4.html">SKIP</a> ([i915#2920]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10152/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html">SK=
IP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_20238/shard-iclb1/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.ht=
ml">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10152/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl2/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_10152/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_10152/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl3/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10152/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl1/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_101=
52/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl4/igt@runner@aborted.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/=
shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_10152/shard-kbl4/igt@runner@aborted.html">FAI=
L</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10152/sha=
rd-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-">FAIL<=
/a>, [FAIL][173], [FAIL][174], [FAIL][175], [FAIL][176]) ([fdo#109271] / [i=
915#1436] / [i915#180] / [i915#1814] / [i915#2722] / [i915#3002] / [i915#33=
63] / [i915#602] / [i915#92]) -&gt; ([FAIL][177], [FAIL][178], [FAIL][179],=
 [FAIL][180], [FAIL][181], [FAIL][182], [FAIL][183], [FAIL][184], [FAIL][18=
5], [FAIL][186], [FAIL][187], [FAIL][188], [FAIL][189], [FAIL][190], [FAIL]=
[191], [FAIL][192]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2722] /=
 [i915#3002] / [i915#3363] / [i915#602] / [i915#92])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3441628194021395452==--

--===============0889712621==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0889712621==--
