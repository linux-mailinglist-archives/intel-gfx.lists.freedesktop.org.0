Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBF637F27C
	for <lists+intel-gfx@lfdr.de>; Thu, 13 May 2021 07:07:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E42A86E81B;
	Thu, 13 May 2021 05:07:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E19C46E819;
 Thu, 13 May 2021 05:07:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D6A48A0019;
 Thu, 13 May 2021 05:07:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nikola Cornij" <nikola.cornij@amd.com>
Date: Thu, 13 May 2021 05:07:27 -0000
Message-ID: <162088244784.26536.8809175941170693693@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210512210011.8425-1-nikola.cornij@amd.com>
In-Reply-To: <20210512210011.8425-1-nikola.cornij@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/dp=5Fmst=3A_Use_kHz_as_link_rate_units_when_settig_source_max_?=
 =?utf-8?q?link_caps_at_init?=
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
Content-Type: multipart/mixed; boundary="===============1458681666=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1458681666==
Content-Type: multipart/alternative;
 boundary="===============6026765603825612541=="

--===============6026765603825612541==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/dp_mst: Use kHz as link rate units when settig source max link caps at init
URL   : https://patchwork.freedesktop.org/series/90099/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10074_full -> Patchwork_20114_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20114_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20114_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20114_full:

### IGT changes ###

#### Possible regressions ####

  * igt@api_intel_bb@render@render-none-reloc-1024:
    - shard-glk:          [PASS][1] -> [WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk2/igt@api_intel_bb@render@render-none-reloc-1024.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-glk3/igt@api_intel_bb@render@render-none-reloc-1024.html

  * igt@gem_exec_gttfill@all:
    - shard-apl:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl7/igt@gem_exec_gttfill@all.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-snb:          NOTRUN -> [INCOMPLETE][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-snb2/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@i915_pm_rpm@gem-mmap-type@uc:
    - shard-glk:          [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk5/igt@i915_pm_rpm@gem-mmap-type@uc.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-glk5/igt@i915_pm_rpm@gem-mmap-type@uc.html
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl7/igt@i915_pm_rpm@gem-mmap-type@uc.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl8/igt@i915_pm_rpm@gem-mmap-type@uc.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled:
    - shard-skl:          NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl7/igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled.html

  * igt@kms_plane_cursor@pipe-b-primary-size-256:
    - shard-snb:          NOTRUN -> [FAIL][10] +3 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-snb5/igt@kms_plane_cursor@pipe-b-primary-size-256.html

  
#### Warnings ####

  * igt@gem_ctx_engines@invalid-engines:
    - shard-glk:          [INCOMPLETE][11] ([i915#3457] / [i915#3468]) -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk3/igt@gem_ctx_engines@invalid-engines.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-glk7/igt@gem_ctx_engines@invalid-engines.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-skl:          [INCOMPLETE][13] ([i915#3468]) -> [INCOMPLETE][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl7/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl8/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@gem_render_copy@yf-tiled-ccs-to-linear:
    - shard-glk:          [INCOMPLETE][15] ([i915#3468]) -> [INCOMPLETE][16]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk3/igt@gem_render_copy@yf-tiled-ccs-to-linear.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-glk5/igt@gem_render_copy@yf-tiled-ccs-to-linear.html

  * igt@kms_plane_cursor@pipe-c-viewport-size-64:
    - shard-tglb:         [FAIL][17] ([i915#3457]) -> [FAIL][18] +1 similar issue
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb8/igt@kms_plane_cursor@pipe-c-viewport-size-64.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-tglb6/igt@kms_plane_cursor@pipe-c-viewport-size-64.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_plane@plane-position-hole@pipe-b-planes}:
    - shard-glk:          [FAIL][19] ([i915#3457]) -> [FAIL][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk9/igt@kms_plane@plane-position-hole@pipe-b-planes.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-glk8/igt@kms_plane@plane-position-hole@pipe-b-planes.html

  
Known issues
------------

  Here are the changes found in Patchwork_20114_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@offset-control:
    - shard-snb:          NOTRUN -> [DMESG-WARN][21] ([i915#3457]) +2 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-snb5/igt@api_intel_bb@offset-control.html
    - shard-skl:          NOTRUN -> [DMESG-WARN][22] ([i915#3457])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl7/igt@api_intel_bb@offset-control.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][23] ([i915#180] / [i915#3457]) +4 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_ctx_persistence@idempotent:
    - shard-snb:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#1099]) +4 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-snb5/igt@gem_ctx_persistence@idempotent.html

  * igt@gem_ctx_ringsize@idle@vcs0:
    - shard-apl:          [PASS][25] -> [FAIL][26] ([i915#3457]) +2 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl1/igt@gem_ctx_ringsize@idle@vcs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl2/igt@gem_ctx_ringsize@idle@vcs0.html

  * igt@gem_eio@unwedge-stress:
    - shard-snb:          NOTRUN -> [FAIL][27] ([i915#3354] / [i915#3457])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-snb5/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][28] -> [FAIL][29] ([i915#2842] / [i915#3457])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-glk:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#3457])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-glk2/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [PASS][31] -> [FAIL][32] ([i915#2842] / [i915#3457])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-glk:          [PASS][33] -> [FAIL][34] ([i915#2842] / [i915#3457])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk3/igt@gem_exec_fair@basic-pace@vcs0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-glk9/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-skl:          NOTRUN -> [FAIL][35] ([i915#2389] / [i915#3457]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl7/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_exec_reloc@basic-wide-active@rcs0:
    - shard-snb:          NOTRUN -> [FAIL][36] ([i915#2389] / [i915#3457]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-snb5/igt@gem_exec_reloc@basic-wide-active@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@vecs0:
    - shard-glk:          NOTRUN -> [FAIL][37] ([i915#3457]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-glk4/igt@gem_exec_schedule@u-fairslice@vecs0.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-kbl:          [PASS][38] -> [DMESG-WARN][39] ([i915#180]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl1/igt@gem_exec_suspend@basic-s3.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl4/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy:
    - shard-glk:          [PASS][40] -> [INCOMPLETE][41] ([i915#3468]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk4/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-glk3/igt@gem_mmap_gtt@cpuset-basic-small-copy.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:
    - shard-snb:          NOTRUN -> [INCOMPLETE][42] ([i915#3468])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-snb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-iclb:         [PASS][43] -> [FAIL][44] ([i915#307]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
    - shard-iclb:         [PASS][45] -> [INCOMPLETE][46] ([i915#3468])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb6/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-iclb3/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-skl:          NOTRUN -> [INCOMPLETE][47] ([i915#3468]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl4/igt@gem_mmap_gtt@fault-concurrent-y.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs:
    - shard-apl:          NOTRUN -> [INCOMPLETE][48] ([i915#3468]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl1/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs.html

  * igt@gem_render_copy@yf-tiled-ccs-to-linear:
    - shard-skl:          NOTRUN -> [INCOMPLETE][49] ([i915#198] / [i915#3468])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl8/igt@gem_render_copy@yf-tiled-ccs-to-linear.html

  * igt@gem_spin_batch@legacy@default:
    - shard-apl:          NOTRUN -> [FAIL][50] ([i915#2898] / [i915#3457]) +4 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl7/igt@gem_spin_batch@legacy@default.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-kbl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#3323])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl7/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_wait@await@rcs0:
    - shard-apl:          NOTRUN -> [FAIL][52] ([i915#3457]) +11 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl7/igt@gem_wait@await@rcs0.html

  * igt@gen7_exec_parse@oacontrol-tracking:
    - shard-tglb:         NOTRUN -> [SKIP][53] ([fdo#109289])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-tglb5/igt@gen7_exec_parse@oacontrol-tracking.html

  * igt@gen9_exec_parse@bb-large:
    - shard-kbl:          NOTRUN -> [FAIL][54] ([i915#3296])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl1/igt@gen9_exec_parse@bb-large.html

  * igt@i915_module_load@reload:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][55] ([i915#3457]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl1/igt@i915_module_load@reload.html

  * igt@i915_pm_rpm@cursor-dpms:
    - shard-iclb:         [PASS][56] -> [DMESG-WARN][57] ([i915#3457])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb3/igt@i915_pm_rpm@cursor-dpms.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-iclb5/igt@i915_pm_rpm@cursor-dpms.html

  * igt@i915_pm_rpm@gem-mmap-type@wc:
    - shard-apl:          [PASS][58] -> [DMESG-WARN][59] ([i915#3457])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl7/igt@i915_pm_rpm@gem-mmap-type@wc.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl8/igt@i915_pm_rpm@gem-mmap-type@wc.html

  * igt@i915_pm_rps@reset:
    - shard-apl:          NOTRUN -> [DMESG-FAIL][60] ([i915#3457]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl7/igt@i915_pm_rps@reset.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          NOTRUN -> [INCOMPLETE][61] ([i915#2782])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-snb5/igt@i915_selftest@live@hangcheck.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][62] -> [FAIL][63] ([i915#2521])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl8/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][64] ([fdo#111614])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-tglb5/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-snb:          NOTRUN -> [SKIP][65] ([fdo#109271] / [fdo#111827]) +26 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-snb5/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl7/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-kbl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl1/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_color_chamelium@pipe-d-ctm-green-to-red:
    - shard-skl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl7/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          NOTRUN -> [TIMEOUT][69] ([i915#1319])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl1/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][70] ([i915#1319]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl1/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - shard-skl:          NOTRUN -> [FAIL][71] ([i915#3444] / [i915#3457]) +5 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:
    - shard-tglb:         [PASS][72] -> [FAIL][73] ([i915#2124] / [i915#3457])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:
    - shard-snb:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#3457]) +55 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-snb2/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-max-size-random:
    - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#3457]) +8 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-max-size-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:
    - shard-snb:          NOTRUN -> [FAIL][76] ([i915#3457]) +7 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-snb5/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-random:
    - shard-kbl:          NOTRUN -> [FAIL][77] ([i915#3444] / [i915#3457]) +3 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-256x256-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen:
    - shard-kbl:          [PASS][78] -> [FAIL][79] ([i915#3444] / [i915#3457])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-apl:          NOTRUN -> [FAIL][80] ([i915#3444] / [i915#3457]) +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x170-offscreen:
    - shard-kbl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#3457]) +13 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-512x170-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-random:
    - shard-glk:          [PASS][82] -> [FAIL][83] ([i915#3444] / [i915#3457]) +5 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk9/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-glk2/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-128x128-rapid-movement:
    - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#3457]) +13 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl7/igt@kms_cursor_crc@pipe-d-cursor-128x128-rapid-movement.html

  * igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge:
    - shard-glk:          [PASS][85] -> [FAIL][86] ([i915#70])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk5/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-glk5/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
    - shard-snb:          NOTRUN -> [SKIP][87] ([fdo#109271]) +402 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-snb5/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html
    - shard-skl:          NOTRUN -> [SKIP][88] ([fdo#109271]) +78 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl7/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          [PASS][89] -> [DMESG-FAIL][90] ([i915#1982] / [i915#3457])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][91] ([i915#155] / [i915#180] / [i915#636])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [PASS][92] -> [DMESG-WARN][93] ([i915#180]) +1 similar issue
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          NOTRUN -> [DMESG-WARN][94] ([i915#180])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-tglb:         NOTRUN -> [SKIP][95] ([i915#2587])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-tglb5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          NOTRUN -> [FAIL][96] ([i915#1188])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl4/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - shard-glk:          [PASS][97] -> [FAIL][98] ([i915#53]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk5/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-glk2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#533]) +2 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl7/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][100] ([fdo#108145] / [i915#265]) +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
    - shard-apl:          NOTRUN -> [FAIL][101] ([fdo#108145] / [i915#265]) +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][102] ([fdo#108145] / [i915#265])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_cursor@pipe-a-primary-size-64:
    - shard-skl:          NOTRUN -> [FAIL][103] ([i915#2657] / [i915#3457] / [i915#3461])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl4/igt@kms_plane_cursor@pipe-a-primary-size-64.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-128:
    - shard-skl:          NOTRUN -> [FAIL][104] ([i915#2657] / [i915#3457])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl7/igt@kms_plane_cursor@pipe-a-viewport-size-128.html

  * igt@kms_plane_cursor@pipe-a-viewport-size-256:
    - shard-apl:          [PASS][105] -> [FAIL][106] ([i915#2657]) +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl3/igt@kms_plane_cursor@pipe-a-viewport-size-256.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl1/igt@kms_plane_cursor@pipe-a-viewport-size-256.html

  * igt@kms_plane_cursor@pipe-b-overlay-size-128:
    - shard-kbl:          NOTRUN -> [FAIL][107] ([i915#2657])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl4/igt@kms_plane_cursor@pipe-b-overlay-size-128.html

  * igt@kms_plane_cursor@pipe-b-overlay-size-64:
    - shard-kbl:          NOTRUN -> [FAIL][108] ([i915#2657] / [i915#3457])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl1/igt@kms_plane_cursor@pipe-b-overlay-size-64.html

  * igt@kms_plane_cursor@pipe-b-viewport-size-256:
    - shard-snb:          NOTRUN -> [FAIL][109] ([i915#3461])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-snb5/igt@kms_plane_cursor@pipe-b-viewport-size-256.html

  * igt@kms_plane_cursor@pipe-b-viewport-size-64:
    - shard-glk:          [PASS][110] -> [FAIL][111] ([i915#2657] / [i915#3457])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk3/igt@kms_plane_cursor@pipe-b-viewport-size-64.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-glk9/igt@kms_plane_cursor@pipe-b-viewport-size-64.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
    - shard-apl:          NOTRUN -> [SKIP][112] ([fdo#109271] / [i915#658]) +2 similar issues
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html
    - shard-skl:          NOTRUN -> [SKIP][113] ([fdo#109271] / [i915#658]) +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:
    - shard-kbl:          NOTRUN -> [SKIP][114] ([fdo#109271] / [i915#658]) +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-skl:          NOTRUN -> [WARN][115] ([i915#2100])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl9/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_vblank@pipe-d-wait-forked-hang:
    - shard-apl:          NOTRUN -> [SKIP][116] ([fdo#109271]) +92 similar issues
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl1/igt@kms_vblank@pipe-d-wait-forked-hang.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][117] ([fdo#109271] / [i915#2437])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl7/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-kbl:          NOTRUN -> [SKIP][118] ([fdo#109271] / [i915#2437])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl1/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf_pmu@busy-check-all@vcs0:
    - shard-glk:          [PASS][119] -> [FAIL][120] ([i915#3457]) +23 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk5/igt@perf_pmu@busy-check-all@vcs0.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-glk4/igt@perf_pmu@busy-check-all@vcs0.html

  * igt@prime_mmap_coherency@read:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][121] ([i915#3468])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl3/igt@prime_mmap_coherency@read.html

  * igt@prime_nv_pcopy@test2:
    - shard-kbl:          NOTRUN -> [SKIP][122] ([fdo#109271]) +88 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl1/igt@prime_nv_pcopy@test2.html

  * igt@sysfs_clients@pidname:
    - shard-apl:          NOTRUN -> [SKIP][123] ([fdo#109271] / [i915#2994]) +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl7/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@recycle-many:
    - shard-skl:          NOTRUN -> [SKIP][124] ([fdo#109271] / [i915#2994]) +1 similar issue
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl9/igt@sysfs_clients@recycle-many.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-apl:          [DMESG-WARN][125] ([i915#180] / [i915#3457]) -> [PASS][126] +2 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [DMESG-WARN][127] ([i915#180] / [i915#3457]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl7/igt@gem_eio@in-flight-suspend.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl3/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][129] ([i915#2842] / [i915#3457]) -> [PASS][130] +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          [FAIL][131] ([i915#2842] / [i915#3457]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl4/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_schedule@u-independent@vecs0:
    - shard-apl:          [FAIL][133] ([i915#3457]) -> [PASS][134] +6 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl3/igt@gem_exec_schedule@u-independent@vecs0.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl1/igt@gem_exec_schedule@u-independent@vecs0.html

  * igt@gem_mmap_gtt@big-copy:
    - shard-skl:          [FAIL][135] ([i915#307]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl9/igt@gem_mmap_gtt@big

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/index.html

--===============6026765603825612541==
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
<tr><td><b>Series:</b></td><td>drm/dp_mst: Use kHz as link rate units when settig source max link caps at init</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90099/">https://patchwork.freedesktop.org/series/90099/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10074_full -&gt; Patchwork_20114_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20114_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_20114_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20114_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@api_intel_bb@render@render-none-reloc-1024:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk2/igt@api_intel_bb@render@render-none-reloc-1024.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-glk3/igt@api_intel_bb@render@render-none-reloc-1024.html">WARN</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@all:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl7/igt@gem_exec_gttfill@all.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-snb2/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@uc:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk5/igt@i915_pm_rpm@gem-mmap-type@uc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-glk5/igt@i915_pm_rpm@gem-mmap-type@uc.html">DMESG-WARN</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl7/igt@i915_pm_rpm@gem-mmap-type@uc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl8/igt@i915_pm_rpm@gem-mmap-type@uc.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl7/igt@kms_draw_crc@draw-method-xrgb8888-blt-untiled.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-primary-size-256:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-snb5/igt@kms_plane_cursor@pipe-b-primary-size-256.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ctx_engines@invalid-engines:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk3/igt@gem_ctx_engines@invalid-engines.html">INCOMPLETE</a> ([i915#3457] / [i915#3468]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-glk7/igt@gem_ctx_engines@invalid-engines.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl7/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">INCOMPLETE</a> ([i915#3468]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl8/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-linear:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk3/igt@gem_render_copy@yf-tiled-ccs-to-linear.html">INCOMPLETE</a> ([i915#3468]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-glk5/igt@gem_render_copy@yf-tiled-ccs-to-linear.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-c-viewport-size-64:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb8/igt@kms_plane_cursor@pipe-c-viewport-size-64.html">FAIL</a> ([i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-tglb6/igt@kms_plane_cursor@pipe-c-viewport-size-64.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@kms_plane@plane-position-hole@pipe-b-planes}:<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk9/igt@kms_plane@plane-position-hole@pipe-b-planes.html">FAIL</a> ([i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-glk8/igt@kms_plane@plane-position-hole@pipe-b-planes.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20114_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@offset-control:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-snb5/igt@api_intel_bb@offset-control.html">DMESG-WARN</a> ([i915#3457]) +2 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl7/igt@api_intel_bb@offset-control.html">DMESG-WARN</a> ([i915#3457])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WARN</a> ([i915#180] / [i915#3457]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@idempotent:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-snb5/igt@gem_ctx_persistence@idempotent.html">SKIP</a> ([fdo#109271] / [i915#1099]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_ringsize@idle@vcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl1/igt@gem_ctx_ringsize@idle@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl2/igt@gem_ctx_ringsize@idle@vcs0.html">FAIL</a> ([i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-snb5/igt@gem_eio@unwedge-stress.html">FAIL</a> ([i915#3354] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915#2842] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-glk2/igt@gem_exec_fair@basic-none@bcs0.html">SKIP</a> ([fdo#109271] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk3/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-glk9/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl7/igt@gem_exec_reloc@basic-wide-active@bcs0.html">FAIL</a> ([i915#2389] / [i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@rcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-snb5/igt@gem_exec_reloc@basic-wide-active@rcs0.html">FAIL</a> ([i915#2389] / [i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vecs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-glk4/igt@gem_exec_schedule@u-fairslice@vecs0.html">FAIL</a> ([i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl1/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl4/igt@gem_exec_suspend@basic-s3.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk4/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-glk3/igt@gem_mmap_gtt@cpuset-basic-small-copy.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-odd:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-snb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-odd.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb6/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-iclb7/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a> ([i915#307]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb6/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-iclb3/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-y:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl4/igt@gem_mmap_gtt@fault-concurrent-y.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl1/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs.html">INCOMPLETE</a> ([i915#3468]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-linear:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl8/igt@gem_render_copy@yf-tiled-ccs-to-linear.html">INCOMPLETE</a> ([i915#198] / [i915#3468])</li>
</ul>
</li>
<li>
<p>igt@gem_spin_batch@legacy@default:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl7/igt@gem_spin_batch@legacy@default.html">FAIL</a> ([i915#2898] / [i915#3457]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl7/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_wait@await@rcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl7/igt@gem_wait@await@rcs0.html">FAIL</a> ([i915#3457]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@oacontrol-tracking:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-tglb5/igt@gen7_exec_parse@oacontrol-tracking.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl1/igt@gen9_exec_parse@bb-large.html">FAIL</a> ([i915#3296])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl1/igt@i915_module_load@reload.html">DMESG-WARN</a> ([i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@cursor-dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-iclb3/igt@i915_pm_rpm@cursor-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-iclb5/igt@i915_pm_rpm@cursor-dpms.html">DMESG-WARN</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-mmap-type@wc:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl7/igt@i915_pm_rpm@gem-mmap-type@wc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl8/igt@i915_pm_rpm@gem-mmap-type@wc.html">DMESG-WARN</a> ([i915#3457])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl7/igt@i915_pm_rps@reset.html">DMESG-FAIL</a> ([i915#3457]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-snb5/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#2782])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl8/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-tglb5/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> ([fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-snb5/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl7/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl1/igt@kms_color_chamelium@pipe-b-ctm-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-green-to-red:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl7/igt@kms_color_chamelium@pipe-d-ctm-green-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl1/igt@kms_content_protection@atomic.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl1/igt@kms_content_protection@lic.html">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html">FAIL</a> ([i915#3444] / [i915#3457]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb2/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-256x256-offscreen.html">FAIL</a> ([i915#2124] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-snb2/igt@kms_cursor_crc@pipe-a-cursor-256x85-sliding.html">SKIP</a> ([fdo#109271] / [i915#3457]) +55 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-max-size-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-max-size-random.html">SKIP</a> ([fdo#109271] / [i915#3457]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-snb5/igt@kms_cursor_crc@pipe-b-cursor-256x256-onscreen.html">FAIL</a> ([i915#3457]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x256-random:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl3/igt@kms_cursor_crc@pipe-b-cursor-256x256-random.html">FAIL</a> ([i915#3444] / [i915#3457]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl2/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl4/igt@kms_cursor_crc@pipe-b-cursor-256x85-offscreen.html">FAIL</a> ([i915#3444] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl7/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html">FAIL</a> ([i915#3444] / [i915#3457]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x170-offscreen:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-512x170-offscreen.html">SKIP</a> ([fdo#109271] / [i915#3457]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x64-random:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk9/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-glk2/igt@kms_cursor_crc@pipe-c-cursor-64x64-random.html">FAIL</a> ([i915#3444] / [i915#3457]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x128-rapid-movement:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl7/igt@kms_cursor_crc@pipe-d-cursor-128x128-rapid-movement.html">SKIP</a> ([fdo#109271] / [i915#3457]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk5/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-glk5/igt@kms_cursor_edge_walk@pipe-c-128x128-left-edge.html">FAIL</a> ([i915#70])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-snb5/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html">SKIP</a> ([fdo#109271]) +402 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl7/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html">SKIP</a> ([fdo#109271]) +78 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html">DMESG-FAIL</a> ([i915#1982] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#155] / [i915#180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-tglb5/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">SKIP</a> ([i915#2587])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl4/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk5/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-glk2/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">FAIL</a> ([i915#53]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl7/igt@kms_pipe_crc_basic@read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-primary-size-64:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl4/igt@kms_plane_cursor@pipe-a-primary-size-64.html">FAIL</a> ([i915#2657] / [i915#3457] / [i915#3461])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-viewport-size-128:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl7/igt@kms_plane_cursor@pipe-a-viewport-size-128.html">FAIL</a> ([i915#2657] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-a-viewport-size-256:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl3/igt@kms_plane_cursor@pipe-a-viewport-size-256.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl1/igt@kms_plane_cursor@pipe-a-viewport-size-256.html">FAIL</a> ([i915#2657]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-overlay-size-128:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl4/igt@kms_plane_cursor@pipe-b-overlay-size-128.html">FAIL</a> ([i915#2657])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-overlay-size-64:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl1/igt@kms_plane_cursor@pipe-b-overlay-size-64.html">FAIL</a> ([i915#2657] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-viewport-size-256:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-snb5/igt@kms_plane_cursor@pipe-b-viewport-size-256.html">FAIL</a> ([i915#3461])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-b-viewport-size-64:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk3/igt@kms_plane_cursor@pipe-b-viewport-size-64.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-glk9/igt@kms_plane_cursor@pipe-b-viewport-size-64.html">FAIL</a> ([i915#2657] / [i915#3457])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl9/igt@kms_setmode@clone-exclusive-crtc.html">WARN</a> ([i915#2100])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked-hang:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl1/igt@kms_vblank@pipe-d-wait-forked-hang.html">SKIP</a> ([fdo#109271]) +92 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl7/igt@kms_writeback@writeback-check-output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl1/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-check-all@vcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-glk5/igt@perf_pmu@busy-check-all@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-glk4/igt@perf_pmu@busy-check-all@vcs0.html">FAIL</a> ([i915#3457]) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_mmap_coherency@read:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl3/igt@prime_mmap_coherency@read.html">INCOMPLETE</a> ([i915#3468])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test2:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl1/igt@prime_nv_pcopy@test2.html">SKIP</a> ([fdo#109271]) +88 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl7/igt@sysfs_clients@pidname.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-skl9/igt@sysfs_clients@recycle-many.html">SKIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WARN</a> ([i915#180] / [i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl7/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> ([i915#180] / [i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl3/igt@gem_eio@in-flight-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842] / [i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-kbl4/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842] / [i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-independent@vecs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-apl3/igt@gem_exec_schedule@u-independent@vecs0.html">FAIL</a> ([i915#3457]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20114/shard-apl1/igt@gem_exec_schedule@u-independent@vecs0.html">PASS</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10074/shard-skl9/igt@gem_mmap_gtt@big">FAIL</a> ([i915#307]) -&gt; [PASS][136]</li>
</ul>
</li>
</ul>

</body>
</html>

--===============6026765603825612541==--

--===============1458681666==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1458681666==--
