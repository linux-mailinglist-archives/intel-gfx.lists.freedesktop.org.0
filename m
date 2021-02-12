Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B35431A11B
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 16:08:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D77F36E5D2;
	Fri, 12 Feb 2021 15:08:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 9FF736E3BB;
 Fri, 12 Feb 2021 15:08:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 97B49A47E8;
 Fri, 12 Feb 2021 15:08:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Fri, 12 Feb 2021 15:08:05 -0000
Message-ID: <161314248559.25820.7862895797808635345@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210205104905.31414-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210205104905.31414-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gt=3A_Ratelimit_heartbeat_completion_probing_=28rev11=29?=
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
Content-Type: multipart/mixed; boundary="===============1010362744=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1010362744==
Content-Type: multipart/alternative;
 boundary="===============7633302687540416699=="

--===============7633302687540416699==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gt: Ratelimit heartbeat completion probing (rev11)
URL   : https://patchwork.freedesktop.org/series/86665/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9769_full -> Patchwork_19669_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19669_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19669_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19669_full:

### IGT changes ###

#### Possible regressions ####

  * igt@sysfs_heartbeat_interval@nopreempt@vcs0:
    - shard-skl:          [PASS][1] -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-skl4/igt@sysfs_heartbeat_interval@nopreempt@vcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-skl5/igt@sysfs_heartbeat_interval@nopreempt@vcs0.html
    - shard-glk:          [PASS][3] -> [FAIL][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-glk2/igt@sysfs_heartbeat_interval@nopreempt@vcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-glk6/igt@sysfs_heartbeat_interval@nopreempt@vcs0.html
    - shard-apl:          [PASS][5] -> [FAIL][6] +1 similar issue
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-apl2/igt@sysfs_heartbeat_interval@nopreempt@vcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-apl7/igt@sysfs_heartbeat_interval@nopreempt@vcs0.html

  * igt@sysfs_heartbeat_interval@nopreempt@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb2/igt@sysfs_heartbeat_interval@nopreempt@vcs1.html

  * igt@sysfs_heartbeat_interval@nopreempt@vecs0:
    - shard-iclb:         [PASS][8] -> [FAIL][9] +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-iclb3/igt@sysfs_heartbeat_interval@nopreempt@vecs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb2/igt@sysfs_heartbeat_interval@nopreempt@vecs0.html
    - shard-kbl:          [PASS][10] -> [FAIL][11] +2 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-kbl3/igt@sysfs_heartbeat_interval@nopreempt@vecs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl1/igt@sysfs_heartbeat_interval@nopreempt@vecs0.html

  
Known issues
------------

  Here are the changes found in Patchwork_19669_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-hang:
    - shard-hsw:          NOTRUN -> [SKIP][12] ([fdo#109271] / [i915#1099]) +1 similar issue
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-hsw1/igt@gem_ctx_persistence@engines-hang.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-hsw:          [PASS][13] -> [INCOMPLETE][14] ([i915#1037] / [i915#2870])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-hsw5/igt@gem_eio@in-flight-contexts-10ms.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-hsw4/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][15] -> [TIMEOUT][16] ([i915#1037] / [i915#3063])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-tglb7/igt@gem_eio@unwedge-stress.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-tglb7/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][17] -> [FAIL][18] ([i915#2842])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#2842])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][21] -> [SKIP][22] ([fdo#109271])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][23] ([i915#2842]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_params@no-vebox:
    - shard-iclb:         NOTRUN -> [SKIP][24] ([fdo#109283])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb8/igt@gem_exec_params@no-vebox.html

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][25] ([i915#2389]) +1 similar issue
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb1/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  * igt@gem_exec_schedule@u-fairslice@vcs0:
    - shard-skl:          NOTRUN -> [DMESG-WARN][26] ([i915#1610] / [i915#2803])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-skl3/igt@gem_exec_schedule@u-fairslice@vcs0.html

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-glk:          [PASS][27] -> [DMESG-WARN][28] ([i915#118] / [i915#95])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-glk7/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-glk3/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-hsw:          [PASS][29] -> [INCOMPLETE][30] ([i915#2055])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-hsw5/igt@gem_exec_whisper@basic-fds-forked-all.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-hsw5/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-kbl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#2190])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_render_copy@linear-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][32] ([i915#768])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@gem_render_copy@linear-to-vebox-yf-tiled.html

  * igt@gem_userptr_blits@process-exit-mmap@gtt:
    - shard-kbl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#1699]) +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl1/igt@gem_userptr_blits@process-exit-mmap@gtt.html

  * igt@gem_userptr_blits@readonly-mmap-unsync@wb:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([i915#1704]) +3 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@gem_userptr_blits@readonly-mmap-unsync@wb.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#110426] / [i915#1704])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb8/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109289]) +3 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-tglb:         NOTRUN -> [SKIP][37] ([fdo#112306])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-tglb7/igt@gen9_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-tglb:         NOTRUN -> [SKIP][38] ([i915#2527])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-tglb7/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@bb-secure:
    - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#112306])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@gen9_exec_parse@bb-secure.html

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-tglb:         NOTRUN -> [SKIP][40] ([i915#1902])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-tglb7/igt@i915_pm_lpsp@screens-disabled.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         NOTRUN -> [WARN][41] ([i915#2684])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_suspend@sysfs-reader:
    - shard-kbl:          [PASS][42] -> [DMESG-WARN][43] ([i915#180]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-kbl7/igt@i915_suspend@sysfs-reader.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][44] ([fdo#110725] / [fdo#111614])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_joiner@basic:
    - shard-iclb:         NOTRUN -> [SKIP][45] ([i915#2705])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@kms_big_joiner@basic.html

  * igt@kms_chamelium@dp-hpd:
    - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-skl3/igt@kms_chamelium@dp-hpd.html

  * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
    - shard-hsw:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-hsw1/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-apl7/igt@kms_chamelium@vga-hpd.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-iclb:         NOTRUN -> [FAIL][49] ([i915#1149] / [i915#315])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb8/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_color@pipe-d-ctm-max:
    - shard-iclb:         NOTRUN -> [SKIP][50] ([fdo#109278] / [i915#1149]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@kms_color@pipe-d-ctm-max.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-kbl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl1/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-5:
    - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109284] / [fdo#111827]) +5 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@kms_color_chamelium@pipe-c-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
    - shard-tglb:         NOTRUN -> [SKIP][53] ([fdo#109284] / [fdo#111827])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-tglb7/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html

  * igt@kms_content_protection@legacy:
    - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#109300] / [fdo#111066]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb8/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-random:
    - shard-skl:          NOTRUN -> [FAIL][55] ([i915#54]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][56] ([fdo#109278] / [fdo#109279]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@kms_cursor_crc@pipe-c-cursor-512x512-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][57] ([fdo#109279])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
    - shard-skl:          [PASS][58] -> [FAIL][59] ([i915#54]) +7 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-random:
    - shard-hsw:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#533]) +4 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-hsw1/igt@kms_cursor_crc@pipe-d-cursor-256x256-random.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:
    - shard-iclb:         NOTRUN -> [SKIP][61] ([fdo#109274] / [fdo#109278]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-tglb:         [PASS][62] -> [FAIL][63] ([i915#2346])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-tglb1/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-iclb:         [PASS][64] -> [INCOMPLETE][65] ([i915#1185])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-iclb1/igt@kms_fbcon_fbt@fbc-suspend.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-iclb:         NOTRUN -> [SKIP][66] ([fdo#109274]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@dpms-vs-vblank-race-interruptible@b-edp1:
    - shard-skl:          [PASS][67] -> [FAIL][68] ([i915#407])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-skl10/igt@kms_flip@dpms-vs-vblank-race-interruptible@b-edp1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-skl9/igt@kms_flip@dpms-vs-vblank-race-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [PASS][69] -> [DMESG-WARN][70] ([i915#180])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
    - shard-skl:          [PASS][71] -> [INCOMPLETE][72] ([i915#146] / [i915#198] / [i915#2295])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-kbl:          NOTRUN -> [FAIL][73] ([i915#2641])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
    - shard-tglb:         NOTRUN -> [SKIP][74] ([i915#2587])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-tglb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
    - shard-apl:          NOTRUN -> [FAIL][75] ([i915#2641])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-apl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
    - shard-kbl:          NOTRUN -> [SKIP][76] ([fdo#109271]) +56 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-render:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([fdo#109280]) +13 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-tglb:         NOTRUN -> [SKIP][78] ([fdo#111825]) +2 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][79] -> [FAIL][80] ([i915#1188])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-skl1/igt@kms_hdr@bpc-switch.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-skl8/igt@kms_hdr@bpc-switch.html

  * igt@kms_invalid_dotclock:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([fdo#109310])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@kms_invalid_dotclock.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-skl:          [PASS][82] -> [INCOMPLETE][83] ([i915#198]) +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-iclb:         [PASS][84] -> [INCOMPLETE][85] ([i915#1185] / [i915#250])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][86] ([i915#265])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109278]) +6 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb8/igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#658])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl1/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
    - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#658])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-skl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([i915#658]) +1 similar issue
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][91] -> [SKIP][92] ([fdo#109642] / [fdo#111068] / [i915#658])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-hsw:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#1072]) +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-hsw1/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         [PASS][94] -> [SKIP][95] ([fdo#109441]) +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_psr@psr2_primary_render:
    - shard-iclb:         NOTRUN -> [SKIP][96] ([fdo#109441])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb8/igt@kms_psr@psr2_primary_render.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [PASS][97] -> [DMESG-WARN][98] ([i915#180] / [i915#295])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-iclb:         NOTRUN -> [SKIP][99] ([i915#2437])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb8/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-apl:          NOTRUN -> [SKIP][100] ([fdo#109271]) +41 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-apl7/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@nouveau_crc@pipe-b-source-outp-complete:
    - shard-iclb:         NOTRUN -> [SKIP][101] ([i915#2530]) +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb8/igt@nouveau_crc@pipe-b-source-outp-complete.html

  * igt@nouveau_crc@pipe-d-ctx-flip-detection:
    - shard-skl:          NOTRUN -> [SKIP][102] ([fdo#109271]) +27 similar issues
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-skl3/igt@nouveau_crc@pipe-d-ctx-flip-detection.html

  * igt@prime_nv_api@i915_self_import_to_different_fd:
    - shard-tglb:         NOTRUN -> [SKIP][103] ([fdo#109291])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-tglb7/igt@prime_nv_api@i915_self_import_to_different_fd.html

  * igt@prime_nv_api@nv_self_import_to_different_fd:
    - shard-iclb:         NOTRUN -> [SKIP][104] ([fdo#109291]) +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@prime_nv_api@nv_self_import_to_different_fd.html

  * igt@sysfs_clients@split-25@vcs0:
    - shard-skl:          [PASS][105] -> [SKIP][106] ([fdo#109271])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-skl9/igt@sysfs_clients@split-25@vcs0.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-skl1/igt@sysfs_clients@split-25@vcs0.html

  * igt@sysfs_heartbeat_interval@nopreempt@bcs0:
    - shard-apl:          [PASS][107] -> [FAIL][108] ([i915#1778]) +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-apl2/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-apl7/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html
    - shard-iclb:         [PASS][109] -> [FAIL][110] ([i915#1778]) +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-iclb3/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb2/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html
    - shard-glk:          [PASS][111] -> [FAIL][112] ([i915#1778]) +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-glk2/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-glk6/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html
    - shard-kbl:          [PASS][113] -> [FAIL][114] ([i915#1778]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-kbl3/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl1/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html

  * igt@sysfs_heartbeat_interval@nopreempt@rcs0:
    - shard-skl:          [PASS][115] -> [FAIL][116] ([i915#1778]) +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-skl4/igt@sysfs_heartbeat_interval@nopreempt@rcs0.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-skl5/igt@sysfs_heartbeat_interval@nopreempt@rcs0.html

  * igt@sysfs_heartbeat_interval@nopreempt@vcs0:
    - shard-hsw:          NOTRUN -> [SKIP][117] ([fdo#109271]) +41 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-hsw1/igt@sysfs_heartbeat_interval@nopreempt@vcs0.html

  * igt@sysfs_heartbeat_interval@nopreempt@vcs1:
    - shard-tglb:         [PASS][118] -> [FAIL][119] ([i915#1778]) +4 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-tglb2/igt@sysfs_heartbeat_interval@nopreempt@vcs1.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-tglb5/igt@sysfs_heartbeat_interval@nopreempt@vcs1.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-glk:          [TIMEOUT][120] ([i915#2918]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-glk5/igt@gem_ctx_persistence@close-replace-race.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-glk2/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [INCOMPLETE][122] ([i915#1895] / [i915#2295] / [i915#3031]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-iclb1/igt@gem_exec_balancer@hang.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb8/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [FAIL][124] ([i915#2846]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-kbl1/igt@gem_exec_fair@basic-deadline.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          [FAIL][126] ([i915#2842]) -> [PASS][127] +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl2/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][128] ([i915#2842]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][130] ([i915#2849]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@bcs0:
    - shard-tglb:         [DMESG-WARN][132] ([i915#2803]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-tglb6/igt@gem_exec_schedule@u-fairslice@bcs0.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-tglb7/igt@gem_exec_schedule@u-fairslice@bcs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-apl:          [DMESG-WARN][134] ([i915#1610]) -> [PASS][135]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-apl7/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-apl1/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@vecs0:
    - shard-kbl:          [DMESG-WARN][136] ([i915#1610] / [i915#2803]) -> [PASS][137]
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-kbl4/igt@gem_exec_schedule@u-fairslice@vecs0.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl7/igt@gem_exec_schedule@u-fairslice@vecs0.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-hsw:          [WARN][138] ([i915#1519]) -> [PASS][139]
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-hsw6/igt@i915_pm_rc6_residency@rc6-idle.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-hsw5/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_selftest@live@hangcheck:
    - shard-skl:          [INCOMPLETE][140] ([i915#2782]) -> [PASS][141]
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-skl4/igt@i915_selftest@live@hangcheck.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-skl10/igt@i915_selftest@live@hangcheck.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][142] ([i915#180]) -> [PASS][143] +1 similar

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/index.html

--===============7633302687540416699==
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
<tr><td><b>Series:</b></td><td>drm/i915/gt: Ratelimit heartbeat completion probing (rev11)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86665/">https://patchwork.freedesktop.org/series/86665/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9769_full -&gt; Patchwork_19669_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19669_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19669_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19669_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@sysfs_heartbeat_interval@nopreempt@vcs0:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-skl4/igt@sysfs_heartbeat_interval@nopreempt@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-skl5/igt@sysfs_heartbeat_interval@nopreempt@vcs0.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-glk2/igt@sysfs_heartbeat_interval@nopreempt@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-glk6/igt@sysfs_heartbeat_interval@nopreempt@vcs0.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-apl2/igt@sysfs_heartbeat_interval@nopreempt@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-apl7/igt@sysfs_heartbeat_interval@nopreempt@vcs0.html">FAIL</a> +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@nopreempt@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb2/igt@sysfs_heartbeat_interval@nopreempt@vcs1.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@nopreempt@vecs0:</p>
<ul>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-iclb3/igt@sysfs_heartbeat_interval@nopreempt@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb2/igt@sysfs_heartbeat_interval@nopreempt@vecs0.html">FAIL</a> +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-kbl3/igt@sysfs_heartbeat_interval@nopreempt@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl1/igt@sysfs_heartbeat_interval@nopreempt@vecs0.html">FAIL</a> +2 similar issues</p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19669_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@engines-hang:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-hsw1/igt@gem_ctx_persistence@engines-hang.html">SKIP</a> ([fdo#109271] / [i915#1099]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-hsw5/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-hsw4/igt@gem_eio@in-flight-contexts-10ms.html">INCOMPLETE</a> ([i915#1037] / [i915#2870])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-tglb7/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-tglb7/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#1037] / [i915#3063])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-glk3/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-vebox:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb8/igt@gem_exec_params@no-vebox.html">SKIP</a> ([fdo#109283])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb1/igt@gem_exec_reloc@basic-wide-active@vcs1.html">FAIL</a> ([i915#2389]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-skl3/igt@gem_exec_schedule@u-fairslice@vcs0.html">DMESG-WARN</a> ([i915#1610] / [i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-glk7/igt@gem_exec_whisper@basic-contexts-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-glk3/igt@gem_exec_whisper@basic-contexts-forked-all.html">DMESG-WARN</a> ([i915#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked-all:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-hsw5/igt@gem_exec_whisper@basic-fds-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-hsw5/igt@gem_exec_whisper@basic-fds-forked-all.html">INCOMPLETE</a> ([i915#2055])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@gem_render_copy@linear-to-vebox-yf-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap@gtt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl1/igt@gem_userptr_blits@process-exit-mmap@gtt.html">SKIP</a> ([fdo#109271] / [i915#1699]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-mmap-unsync@wb:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@gem_userptr_blits@readonly-mmap-unsync@wb.html">SKIP</a> ([i915#1704]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb8/igt@gem_userptr_blits@readonly-pwrite-unsync.html">SKIP</a> ([fdo#110426] / [i915#1704])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@gen7_exec_parse@oacontrol-tracking.html">SKIP</a> ([fdo#109289]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-tglb7/igt@gen9_exec_parse@batch-without-end.html">SKIP</a> ([fdo#112306])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-tglb7/igt@gen9_exec_parse@bb-oversize.html">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@gen9_exec_parse@bb-secure.html">SKIP</a> ([fdo#112306])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-tglb7/igt@i915_pm_lpsp@screens-disabled.html">SKIP</a> ([i915#1902])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-kbl7/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl6/igt@i915_suspend@sysfs-reader.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@kms_big_joiner@basic.html">SKIP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-skl3/igt@kms_chamelium@dp-hpd.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-hsw1/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-apl7/igt@kms_chamelium@vga-hpd.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb8/igt@kms_color@pipe-a-ctm-0-75.html">FAIL</a> ([i915#1149] / [i915#315])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-max:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@kms_color@pipe-d-ctm-max.html">SKIP</a> ([fdo#109278] / [i915#1149]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl1/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-5:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@kms_color_chamelium@pipe-c-ctm-0-5.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-tglb7/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb8/igt@kms_content_protection@legacy.html">SKIP</a> ([fdo#109300] / [fdo#111066]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html">FAIL</a> ([i915#54]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@kms_cursor_crc@pipe-c-cursor-512x512-offscreen.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-tglb7/igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding.html">SKIP</a> ([fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x64-random:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html">FAIL</a> ([i915#54]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-random:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-hsw1/igt@kms_cursor_crc@pipe-d-cursor-256x256-random.html">SKIP</a> ([fdo#109271] / [i915#533]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-varying-size:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@kms_cursor_legacy@cursora-vs-flipb-varying-size.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-tglb1/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-iclb1/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb3/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#1185])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@kms_flip@2x-flip-vs-panning.html">SKIP</a> ([fdo#109274]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@dpms-vs-vblank-race-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-skl10/igt@kms_flip@dpms-vs-vblank-race-interruptible@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-skl9/igt@kms_flip@dpms-vs-vblank-race-interruptible@b-edp1.html">FAIL</a> ([i915#407])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-skl5/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html">INCOMPLETE</a> ([i915#146] / [i915#198] / [i915#2295])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html">FAIL</a> ([i915#2641])</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-tglb7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html">SKIP</a> ([i915#2587])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-apl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html">FAIL</a> ([i915#2641])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +56 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-render.html">SKIP</a> ([fdo#109280]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-tglb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([fdo#111825]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-skl1/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-skl8/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_dotclock:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@kms_invalid_dotclock.html">SKIP</a> ([fdo#109310])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-skl9/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">INCOMPLETE</a> ([i915#198]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html">INCOMPLETE</a> ([i915#1185] / [i915#250])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb8/igt@kms_plane_alpha_blend@pipe-d-constant-alpha-max.html">SKIP</a> ([fdo#109278]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl1/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-skl3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@kms_psr2_su@page_flip.html">SKIP</a> ([fdo#109642] / [fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-hsw1/igt@kms_psr@psr2_cursor_mmap_gtt.html">SKIP</a> ([fdo#109271] / [i915#1072]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb4/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_render:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb8/igt@kms_psr@psr2_primary_render.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-kbl2/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl7/igt@kms_vblank@pipe-a-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180] / [i915#295])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb8/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> ([i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-apl7/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html">SKIP</a> ([fdo#109271]) +41 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-source-outp-complete:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb8/igt@nouveau_crc@pipe-b-source-outp-complete.html">SKIP</a> ([i915#2530]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-ctx-flip-detection:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-skl3/igt@nouveau_crc@pipe-d-ctx-flip-detection.html">SKIP</a> ([fdo#109271]) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_self_import_to_different_fd:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-tglb7/igt@prime_nv_api@i915_self_import_to_different_fd.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@nv_self_import_to_different_fd:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@prime_nv_api@nv_self_import_to_different_fd.html">SKIP</a> ([fdo#109291]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25@vcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-skl9/igt@sysfs_clients@split-25@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-skl1/igt@sysfs_clients@split-25@vcs0.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@nopreempt@bcs0:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-apl2/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-apl7/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html">FAIL</a> ([i915#1778]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-iclb3/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb2/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html">FAIL</a> ([i915#1778]) +1 similar issue</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-glk2/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-glk6/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html">FAIL</a> ([i915#1778]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-kbl3/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl1/igt@sysfs_heartbeat_interval@nopreempt@bcs0.html">FAIL</a> ([i915#1778]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@nopreempt@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-skl4/igt@sysfs_heartbeat_interval@nopreempt@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-skl5/igt@sysfs_heartbeat_interval@nopreempt@rcs0.html">FAIL</a> ([i915#1778]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@nopreempt@vcs0:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-hsw1/igt@sysfs_heartbeat_interval@nopreempt@vcs0.html">SKIP</a> ([fdo#109271]) +41 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@nopreempt@vcs1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-tglb2/igt@sysfs_heartbeat_interval@nopreempt@vcs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-tglb5/igt@sysfs_heartbeat_interval@nopreempt@vcs1.html">FAIL</a> ([i915#1778]) +4 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@close-replace-race:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-glk5/igt@gem_ctx_persistence@close-replace-race.html">TIMEOUT</a> ([i915#2918]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-glk2/igt@gem_ctx_persistence@close-replace-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hang:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-iclb1/igt@gem_exec_balancer@hang.html">INCOMPLETE</a> ([i915#1895] / [i915#2295] / [i915#3031]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb8/igt@gem_exec_balancer@hang.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-kbl1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl2/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl2/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-iclb5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@bcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-tglb6/igt@gem_exec_schedule@u-fairslice@bcs0.html">DMESG-WARN</a> ([i915#2803]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-tglb7/igt@gem_exec_schedule@u-fairslice@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-apl7/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> ([i915#1610]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-apl1/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-kbl4/igt@gem_exec_schedule@u-fairslice@vecs0.html">DMESG-WARN</a> ([i915#1610] / [i915#2803]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-kbl7/igt@gem_exec_schedule@u-fairslice@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-hsw:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-hsw6/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#1519]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-hsw5/igt@i915_pm_rc6_residency@rc6-idle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9769/shard-skl4/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#2782]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19669/shard-skl10/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-kbl:          [DMESG-WARN][142] ([i915#180]) -&gt; [PASS][143] +1 similar</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7633302687540416699==--

--===============1010362744==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1010362744==--
