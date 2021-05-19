Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB42D388F6D
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 15:45:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A0736EDBD;
	Wed, 19 May 2021 13:45:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 4A2486EDBD;
 Wed, 19 May 2021 13:45:55 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 221A9A41FB;
 Wed, 19 May 2021 13:45:55 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Date: Wed, 19 May 2021 13:45:55 -0000
Message-ID: <162143195511.17247.3323608589298978152@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210518161705.3697143-1-gregkh@linuxfoundation.org>
In-Reply-To: <20210518161705.3697143-1-gregkh@linuxfoundation.org>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gvt=3A_remove_local_storage_of_debugfs_file?=
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
Content-Type: multipart/mixed; boundary="===============0849048834=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0849048834==
Content-Type: multipart/alternative;
 boundary="===============6441266269831060282=="

--===============6441266269831060282==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gvt: remove local storage of debugfs file
URL   : https://patchwork.freedesktop.org/series/90294/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10098_full -> Patchwork_20146_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20146_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_plane@plane-position-covered@pipe-a-planes}:
    - shard-apl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-apl6/igt@kms_plane@plane-position-covered@pipe-a-planes.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl7/igt@kms_plane@plane-position-covered@pipe-a-planes.html

  
Known issues
------------

  Here are the changes found in Patchwork_20146_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_read@fault-buffer:
    - shard-apl:          NOTRUN -> [DMESG-WARN][3] ([i915#3457])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl7/igt@drm_read@fault-buffer.html

  * igt@gem_ctx_persistence@engines-persistence@bcs0:
    - shard-apl:          NOTRUN -> [FAIL][4] ([i915#3457]) +3 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl6/igt@gem_ctx_persistence@engines-persistence@bcs0.html

  * igt@gem_ctx_persistence@legacy-engines-persistence:
    - shard-snb:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1099]) +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-snb2/igt@gem_ctx_persistence@legacy-engines-persistence.html

  * igt@gem_exec_endless@dispatch@rcs0:
    - shard-glk:          [PASS][6] -> [INCOMPLETE][7] ([i915#2502] / [i915#3457])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk2/igt@gem_exec_endless@dispatch@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk1/igt@gem_exec_endless@dispatch@rcs0.html

  * igt@gem_exec_fence@keep-in-fence@rcs0:
    - shard-glk:          [PASS][8] -> [INCOMPLETE][9] ([i915#3457])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk4/igt@gem_exec_fence@keep-in-fence@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk5/igt@gem_exec_fence@keep-in-fence@rcs0.html

  * igt@gem_exec_fence@syncobj-export:
    - shard-glk:          [PASS][10] -> [FAIL][11] ([i915#3457]) +16 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk2/igt@gem_exec_fence@syncobj-export.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk6/igt@gem_exec_fence@syncobj-export.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-glk:          [PASS][12] -> [DMESG-WARN][13] ([i915#118] / [i915#95])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk4/igt@gem_exec_whisper@basic-fds-priority.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk6/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#2190])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@big-copy:
    - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#307])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb6/igt@gem_mmap_gtt@big-copy.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-iclb5/igt@gem_mmap_gtt@big-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-glk:          [PASS][17] -> [INCOMPLETE][18] ([i915#3468])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk5/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
    - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#3468])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb1/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-tglb2/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#2910] / [i915#3468])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb1/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-tglb8/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#307])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk8/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk4/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-snb:          NOTRUN -> [INCOMPLETE][25] ([i915#3468])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-snb5/igt@gem_mmap_gtt@fault-concurrent-y.html
    - shard-apl:          NOTRUN -> [INCOMPLETE][26] ([i915#3468]) +2 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl6/igt@gem_mmap_gtt@fault-concurrent-y.html

  * igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:
    - shard-glk:          NOTRUN -> [INCOMPLETE][27] ([i915#3468])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk5/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html

  * igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:
    - shard-skl:          NOTRUN -> [INCOMPLETE][28] ([i915#3468]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl3/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][29] ([i915#3002])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl6/igt@gem_userptr_blits@input-checking.html

  * igt@gen9_exec_parse@bb-large:
    - shard-apl:          NOTRUN -> [FAIL][30] ([i915#3296])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl6/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271]) +26 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl3/igt@gen9_exec_parse@bb-oversize.html

  * igt@i915_hangman@engine-hang@vcs1:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][32] ([i915#3457])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-iclb1/igt@i915_hangman@engine-hang@vcs1.html

  * igt@i915_module_load@reload:
    - shard-snb:          NOTRUN -> [DMESG-WARN][33] ([i915#3457]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-snb2/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@cursor:
    - shard-kbl:          [PASS][34] -> [DMESG-WARN][35] ([i915#3457])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-kbl3/igt@i915_pm_rpm@cursor.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-kbl1/igt@i915_pm_rpm@cursor.html

  * igt@i915_pm_rpm@cursor-dpms:
    - shard-skl:          [PASS][36] -> [DMESG-WARN][37] ([i915#3457]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl3/igt@i915_pm_rpm@cursor-dpms.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl3/igt@i915_pm_rpm@cursor-dpms.html
    - shard-iclb:         [PASS][38] -> [DMESG-WARN][39] ([i915#3457])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb3/igt@i915_pm_rpm@cursor-dpms.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-iclb8/igt@i915_pm_rpm@cursor-dpms.html

  * igt@i915_pm_rpm@gem-mmap-type@uc:
    - shard-glk:          [PASS][40] -> [DMESG-WARN][41] ([i915#3475])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk8/igt@i915_pm_rpm@gem-mmap-type@uc.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk2/igt@i915_pm_rpm@gem-mmap-type@uc.html
    - shard-skl:          [PASS][42] -> [DMESG-WARN][43] ([i915#1982] / [i915#3475])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl10/igt@i915_pm_rpm@gem-mmap-type@uc.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl3/igt@i915_pm_rpm@gem-mmap-type@uc.html

  * igt@i915_pm_rpm@gem-mmap-type@wc:
    - shard-glk:          [PASS][44] -> [DMESG-WARN][45] ([i915#3457])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk8/igt@i915_pm_rpm@gem-mmap-type@wc.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk2/igt@i915_pm_rpm@gem-mmap-type@wc.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl3/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_color@pipe-a-degamma:
    - shard-glk:          [PASS][47] -> [FAIL][48] ([fdo#108145] / [i915#71])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk6/igt@kms_color@pipe-a-degamma.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk8/igt@kms_color@pipe-a-degamma.html

  * igt@kms_color@pipe-c-degamma:
    - shard-glk:          [PASS][49] -> [FAIL][50] ([i915#71])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk2/igt@kms_color@pipe-c-degamma.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk6/igt@kms_color@pipe-c-degamma.html

  * igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:
    - shard-snb:          NOTRUN -> [SKIP][51] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-snb2/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-75:
    - shard-apl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl6/igt@kms_color_chamelium@pipe-d-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen:
    - shard-snb:          NOTRUN -> [FAIL][53] ([i915#3457])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-snb2/igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:
    - shard-iclb:         [PASS][54] -> [FAIL][55] ([i915#3457])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-iclb5/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
    - shard-kbl:          [PASS][56] -> [FAIL][57] ([i915#3444] / [i915#3457]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [PASS][58] -> [DMESG-WARN][59] ([i915#180] / [i915#3457])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen:
    - shard-apl:          NOTRUN -> [FAIL][60] ([i915#3444] / [i915#3457])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          NOTRUN -> [FAIL][61] ([i915#3444] / [i915#3457]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding:
    - shard-glk:          [PASS][62] -> [FAIL][63] ([i915#3444] / [i915#3457]) +2 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk2/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk1/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-random:
    - shard-skl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#3457]) +3 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl3/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement:
    - shard-snb:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#3457]) +17 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-snb2/igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x64-offscreen:
    - shard-tglb:         [PASS][66] -> [FAIL][67] ([i915#2124] / [i915#3457]) +2 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-64x64-offscreen.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-64x64-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-size-change:
    - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#3457]) +9 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl6/igt@kms_cursor_crc@pipe-d-cursor-size-change.html

  * igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge:
    - shard-glk:          [PASS][69] -> [FAIL][70] ([i915#70]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk7/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk3/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-toggle:
    - shard-glk:          [PASS][71] -> [DMESG-WARN][72] ([i915#118] / [i915#3457] / [i915#95])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk7/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk3/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [PASS][73] -> [FAIL][74] ([i915#2346])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_flip@plain-flip-interruptible@a-edp1:
    - shard-skl:          [PASS][75] -> [DMESG-WARN][76] ([i915#1982])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl1/igt@kms_flip@plain-flip-interruptible@a-edp1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl1/igt@kms_flip@plain-flip-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt:
    - shard-glk:          [PASS][77] -> [FAIL][78] ([i915#49])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk7/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk3/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:
    - shard-iclb:         [PASS][79] -> [FAIL][80] ([i915#49])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-plflip-blt:
    - shard-snb:          NOTRUN -> [SKIP][81] ([fdo#109271]) +116 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-snb2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
    - shard-iclb:         [PASS][82] -> [TIMEOUT][83] ([i915#123])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][84] -> [DMESG-WARN][85] ([i915#180]) +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#533])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][87] -> [FAIL][88] ([fdo#108145] / [i915#265]) +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-a-overlay-size-64:
    - shard-snb:          NOTRUN -> [FAIL][89] ([i915#2657] / [i915#3457])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-snb2/igt@kms_plane_cursor@pipe-a-overlay-size-64.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-128:
    - shard-snb:          NOTRUN -> [FAIL][90] ([i915#2657])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-snb2/igt@kms_plane_cursor@pipe-a-viewport-size-128.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-y:
    - shard-glk:          [PASS][91] -> [FAIL][92] ([i915#1779])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk6/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk8/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
    - shard-apl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#658])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-skl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#658])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl3/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][95] -> [DMESG-WARN][96] ([i915#180] / [i915#295])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-iclb:         NOTRUN -> [SKIP][97] ([fdo#109278])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-iclb7/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@kms_vblank@pipe-d-wait-forked-hang:
    - shard-apl:          NOTRUN -> [SKIP][98] ([fdo#109271]) +65 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl7/igt@kms_vblank@pipe-d-wait-forked-hang.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-skl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#2437])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl3/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][100] -> [FAIL][101] ([i915#1542])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl10/igt@perf@polling-parameterized.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl2/igt@perf@polling-parameterized.html

  * igt@perf_pmu@busy-accuracy-2@rcs0:
    - shard-apl:          [PASS][102] -> [FAIL][103] ([i915#3457]) +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-apl6/igt@perf_pmu@busy-accuracy-2@rcs0.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl7/igt@perf_pmu@busy-accuracy-2@rcs0.html

  * igt@perf_pmu@busy-idle-check-all@vcs0:
    - shard-apl:          NOTRUN -> [WARN][104] ([i915#3457]) +3 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl6/igt@perf_pmu@busy-idle-check-all@vcs0.html

  * igt@sysfs_clients@sema-50:
    - shard-apl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [i915#2994]) +2 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl6/igt@sysfs_clients@sema-50.html

  * igt@sysfs_clients@split-25:
    - shard-skl:          NOTRUN -> [SKIP][106] ([fdo#109271] / [i915#2994])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl3/igt@sysfs_clients@split-25.html

  
#### Possible fixes ####

  * igt@api_intel_bb@intel-bb-blit-y:
    - shard-glk:          [FAIL][107] ([i915#3471]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk8/igt@api_intel_bb@intel-bb-blit-y.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk2/igt@api_intel_bb@intel-bb-blit-y.html

  * igt@gem_create@create-clear:
    - shard-glk:          [FAIL][109] ([i915#1888] / [i915#3160]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk4/igt@gem_create@create-clear.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk5/igt@gem_create@create-clear.html

  * igt@gem_ctx_persistence@engines-persistence@vecs0:
    - shard-glk:          [FAIL][111] ([i915#3457]) -> [PASS][112] +21 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk6/igt@gem_ctx_persistence@engines-persistence@vecs0.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk6/igt@gem_ctx_persistence@engines-persistence@vecs0.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [FAIL][113] ([i915#2410] / [i915#3457]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb8/igt@gem_ctx_persistence@many-contexts.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [DMESG-WARN][115] ([i915#118] / [i915#95]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk3/igt@gem_exec_whisper@basic-queues-forked.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk8/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-iclb:         [INCOMPLETE][117] ([i915#2910] / [i915#3468]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb6/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-iclb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@gem_wait@wait@vcs0:
    - shard-apl:          [FAIL][119] ([i915#3457]) -> [PASS][120] +2 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-apl6/igt@gem_wait@wait@vcs0.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl7/igt@gem_wait@wait@vcs0.html

  * igt@i915_pm_rpm@cursor:
    - shard-tglb:         [DMESG-WARN][121] ([i915#2411] / [i915#3457]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb5/igt@i915_pm_rpm@cursor.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-tglb7/igt@i915_pm_rpm@cursor.html
    - shard-iclb:         [DMESG-WARN][123] ([i915#3457]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb5/igt@i915_pm_rpm@cursor.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-iclb7/igt@i915_pm_rpm@cursor.html
    - shard-glk:          [DMESG-WARN][125] ([i915#3457]) -> [PASS][126] +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk8/igt@i915_pm_rpm@cursor.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk8/igt@i915_pm_rpm@cursor.html

  * igt@i915_pm_rpm@gem-mmap-type@uc:
    - shard-kbl:          [DMESG-WARN][127] ([i915#3475]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-kbl7/igt@i915_pm_rpm@gem-mmap-type@uc.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-kbl3/igt@i915_pm_rpm@gem-mmap-type@uc.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:
    - shard-apl:          [FAIL][129] ([i915#3444] / [i915#3457]) -> [PASS][130] +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen:
    - shard-skl:          [FAIL][131] ([i915#3444] / [i915#3457]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-128x42-offscreen:
    - shard-tglb:         [FAIL][133] ([i915#2124] / [i915#3457]) -> [PASS][134] +2 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-128x42-offscreen.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-tglb8/igt@kms_cursor_crc@pipe-d-cursor-128x42-offscreen.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-bottom-edge:
    - shard-glk:          [FAIL][135] ([i915#70]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk1/igt@kms_cursor_edge_walk@pipe-b-256x256-bottom-edge.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk7/igt@kms_cursor_edge_walk@pipe-b-256x256-bottom-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][137] ([i915#2346] / [i915#3457]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [FAIL][139] ([i915#79]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:
    - shard-glk:          [FAIL][141] ([i915#79]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [DMESG-WARN][143] ([i915#180]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [FAIL][145] ([i915#1188]) -> [PASS][146] +1 similar issue
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html

  * {igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes}:
    - shard-kbl:          [DMESG-WARN][147] ([i915#180]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][149]

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/index.html

--===============6441266269831060282==
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
<tr><td><b>Series:</b></td><td>drm/i915/gvt: remove local storage of debugfs file</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90294/">https://patchwork.freedesktop.org/series/90294/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10098_full -&gt; Patchwork_20146_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20146_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_plane@plane-position-covered@pipe-a-planes}:<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-apl6/igt@kms_plane@plane-position-covered@pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl7/igt@kms_plane@plane-position-covered@pipe-a-planes.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20146_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_read@fault-buffer:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl7/igt@drm_read@fault-buffer.html">DMESG-WARN</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-persistence@bcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl6/igt@gem_ctx_persistence@engines-persistence@bcs0.html">FAIL</a> ([i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-persistence:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-snb2/igt@gem_ctx_persistence@legacy-engines-persistence.html">SKIP</a> ([fdo#109271] / [i915#1099]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk2/igt@gem_exec_endless@dispatch@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk1/igt@gem_exec_endless@dispatch@rcs0.html">INCOMPLETE</a> ([i915#2502] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@keep-in-fence@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk4/igt@gem_exec_fence@keep-in-fence@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk5/igt@gem_exec_fence@keep-in-fence@rcs0.html">INCOMPLETE</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@syncobj-export:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk2/igt@gem_exec_fence@syncobj-export.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk6/igt@gem_exec_fence@syncobj-export.html">FAIL</a> ([i915#3457]) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk4/igt@gem_exec_whisper@basic-fds-priority.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk6/igt@gem_exec_whisper@basic-fds-priority.html">DMESG-WARN</a> ([i915#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb6/igt@gem_mmap_gtt@big-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-iclb5/igt@gem_mmap_gtt@big-copy.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk5/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb1/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-tglb2/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb1/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-tglb8/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">INCOMPLETE</a> ([i915#2910] / [i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-odd:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk8/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk4/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-y:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-snb5/igt@gem_mmap_gtt@fault-concurrent-y.html">INCOMPLETE</a> ([i915#3468])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl6/igt@gem_mmap_gtt@fault-concurrent-y.html">INCOMPLETE</a> ([i915#3468]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk5/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl3/igt@gem_render_copy@yf-tiled-ccs-to-y-tiled-ccs.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl6/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl6/igt@gen9_exec_parse@bb-large.html">FAIL</a> ([i915#3296])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl3/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> ([fdo#109271]) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-hang@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-iclb1/igt@i915_hangman@engine-hang@vcs1.html">DMESG-WARN</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-snb2/igt@i915_module_load@reload.html">DMESG-WARN</a> ([i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-kbl3/igt@i915_pm_rpm@cursor.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-kbl1/igt@i915_pm_rpm@cursor.html">DMESG-WARN</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor-dpms:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl3/igt@i915_pm_rpm@cursor-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl3/igt@i915_pm_rpm@cursor-dpms.html">DMESG-WARN</a> ([i915#3457]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb3/igt@i915_pm_rpm@cursor-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-iclb8/igt@i915_pm_rpm@cursor-dpms.html">DMESG-WARN</a> ([i915#3457])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@uc:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk8/igt@i915_pm_rpm@gem-mmap-type@uc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk2/igt@i915_pm_rpm@gem-mmap-type@uc.html">DMESG-WARN</a> ([i915#3475])</p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl10/igt@i915_pm_rpm@gem-mmap-type@uc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl3/igt@i915_pm_rpm@gem-mmap-type@uc.html">DMESG-WARN</a> ([i915#1982] / [i915#3475])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@wc:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk8/igt@i915_pm_rpm@gem-mmap-type@wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk2/igt@i915_pm_rpm@gem-mmap-type@wc.html">DMESG-WARN</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl3/igt@kms_chamelium@vga-hpd-after-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-degamma:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk6/igt@kms_color@pipe-a-degamma.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk8/igt@kms_color@pipe-a-degamma.html">FAIL</a> ([fdo#108145] / [i915#71])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-degamma:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk2/igt@kms_color@pipe-c-degamma.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk6/igt@kms_color@pipe-c-degamma.html">FAIL</a> ([i915#71])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-snb2/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-75:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl6/igt@kms_color_chamelium@pipe-d-ctm-0-75.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-snb2/igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen.html">FAIL</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-iclb5/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html">FAIL</a> ([i915#3457])</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-64x21-offscreen.html">FAIL</a> ([i915#3444] / [i915#3457]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">DMESG-WARN</a> ([i915#180] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-128x42-onscreen.html">FAIL</a> ([i915#3444] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html">FAIL</a> ([i915#3444] / [i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk2/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk1/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html">FAIL</a> ([i915#3444] / [i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl3/igt@kms_cursor_crc@pipe-d-cursor-512x512-random.html">SKIP</a> ([fdo#109271] / [i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-snb2/igt@kms_cursor_crc@pipe-d-cursor-512x512-rapid-movement.html">SKIP</a> ([fdo#109271] / [i915#3457]) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x64-offscreen:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-64x64-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-64x64-offscreen.html">FAIL</a> ([i915#2124] / [i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-size-change:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl6/igt@kms_cursor_crc@pipe-d-cursor-size-change.html">SKIP</a> ([fdo#109271] / [i915#3457]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk7/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk3/igt@kms_cursor_edge_walk@pipe-c-64x64-left-edge.html">FAIL</a> ([i915#70]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-toggle:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk7/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk3/igt@kms_cursor_legacy@cursora-vs-flipa-toggle.html">DMESG-WARN</a> ([i915#118] / [i915#3457] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl1/igt@kms_flip@plain-flip-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl1/igt@kms_flip@plain-flip-interruptible@a-edp1.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk7/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk3/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-blt.html">FAIL</a> ([i915#49])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html">FAIL</a> ([i915#49])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-snb2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-plflip-blt.html">SKIP</a> ([fdo#109271]) +116 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-suspend:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html">TIMEOUT</a> ([i915#123])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-overlay-size-64:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-snb2/igt@kms_plane_cursor@pipe-a-overlay-size-64.html">FAIL</a> ([i915#2657] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-viewport-size-128:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-snb2/igt@kms_plane_cursor@pipe-a-viewport-size-128.html">FAIL</a> ([i915#2657])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-y:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk6/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk8/igt@kms_plane_multiple@atomic-pipe-b-tiling-y.html">FAIL</a> ([i915#1779])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl3/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-iclb7/igt@kms_vblank@pipe-d-ts-continuation-idle.html">SKIP</a> ([fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked-hang:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl7/igt@kms_vblank@pipe-d-wait-forked-hang.html">SKIP</a> ([fdo#109271]) +65 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl3/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl10/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl2/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-2@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-apl6/igt@perf_pmu@busy-accuracy-2@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl7/igt@perf_pmu@busy-accuracy-2@rcs0.html">FAIL</a> ([i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-idle-check-all@vcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl6/igt@perf_pmu@busy-idle-check-all@vcs0.html">WARN</a> ([i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl6/igt@sysfs_clients@sema-50.html">SKIP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl3/igt@sysfs_clients@split-25.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_bb@intel-bb-blit-y:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk8/igt@api_intel_bb@intel-bb-blit-y.html">FAIL</a> ([i915#3471]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk2/igt@api_intel_bb@intel-bb-blit-y.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_create@create-clear:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk4/igt@gem_create@create-clear.html">FAIL</a> ([i915#1888] / [i915#3160]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk5/igt@gem_create@create-clear.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@engines-persistence@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk6/igt@gem_ctx_persistence@engines-persistence@vecs0.html">FAIL</a> ([i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk6/igt@gem_ctx_persistence@engines-persistence@vecs0.html">PASS</a> +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb8/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#2410] / [i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk3/igt@gem_exec_whisper@basic-queues-forked.html">DMESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk8/igt@gem_exec_whisper@basic-queues-forked.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb6/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">INCOMPLETE</a> ([i915#2910] / [i915#3468]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-iclb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_wait@wait@vcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-apl6/igt@gem_wait@wait@vcs0.html">FAIL</a> ([i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl7/igt@gem_wait@wait@vcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb5/igt@i915_pm_rpm@cursor.html">DMESG-WARN</a> ([i915#2411] / [i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-tglb7/igt@i915_pm_rpm@cursor.html">PASS</a></p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-iclb5/igt@i915_pm_rpm@cursor.html">DMESG-WARN</a> ([i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-iclb7/igt@i915_pm_rpm@cursor.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk8/igt@i915_pm_rpm@cursor.html">DMESG-WARN</a> ([i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk8/igt@i915_pm_rpm@cursor.html">PASS</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@uc:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-kbl7/igt@i915_pm_rpm@gem-mmap-type@uc.html">DMESG-WARN</a> ([i915#3475]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-kbl3/igt@i915_pm_rpm@gem-mmap-type@uc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html">FAIL</a> ([i915#3444] / [i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl7/igt@kms_cursor_crc@pipe-a-cursor-256x256-sliding.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html">FAIL</a> ([i915#3444] / [i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x42-offscreen:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-128x42-offscreen.html">FAIL</a> ([i915#2124] / [i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-tglb8/igt@kms_cursor_crc@pipe-d-cursor-128x42-offscreen.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-bottom-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk1/igt@kms_cursor_edge_walk@pipe-b-256x256-bottom-edge.html">FAIL</a> ([i915#70]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk7/igt@kms_cursor_edge_walk@pipe-b-256x256-bottom-edge.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> ([i915#2346] / [i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-glk1/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-glk4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-skl2/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes}:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10098/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20146/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          [FAIL][149]</li>
</ul>
</li>
</ul>

</body>
</html>

--===============6441266269831060282==--

--===============0849048834==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0849048834==--
