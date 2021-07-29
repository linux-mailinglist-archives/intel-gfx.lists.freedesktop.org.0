Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7955A3DA39E
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 15:00:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D93DA6EDA7;
	Thu, 29 Jul 2021 13:00:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B18F76EDA7;
 Thu, 29 Jul 2021 13:00:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AA843A73C9;
 Thu, 29 Jul 2021 13:00:54 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Thu, 29 Jul 2021 13:00:54 -0000
Message-ID: <162756365469.27326.13795323428525184322@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210729054118.2458523-1-matthew.d.roper@intel.com>
In-Reply-To: <20210729054118.2458523-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgRm9y?=
 =?utf-8?q?cewake_and_shadowed_register_updates?=
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
Content-Type: multipart/mixed; boundary="===============2075145841=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2075145841==
Content-Type: multipart/alternative;
 boundary="===============1891843621074194329=="

--===============1891843621074194329==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Forcewake and shadowed register updates
URL   : https://patchwork.freedesktop.org/series/93158/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_10416_full -> Patchwork_20736_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_20736_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_20736_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20736_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@mock@uncore:
    - shard-glk:          [PASS][1] -> [DMESG-WARN][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-glk1/igt@i915_selftest@mock@uncore.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-glk1/igt@i915_selftest@mock@uncore.html
    - shard-iclb:         [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-iclb1/igt@i915_selftest@mock@uncore.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-iclb4/igt@i915_selftest@mock@uncore.html
    - shard-kbl:          [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-kbl3/igt@i915_selftest@mock@uncore.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-kbl4/igt@i915_selftest@mock@uncore.html
    - shard-tglb:         [PASS][7] -> [DMESG-WARN][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-tglb2/igt@i915_selftest@mock@uncore.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-tglb3/igt@i915_selftest@mock@uncore.html
    - shard-skl:          [PASS][9] -> [DMESG-WARN][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-skl5/igt@i915_selftest@mock@uncore.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-skl9/igt@i915_selftest@mock@uncore.html
    - shard-apl:          [PASS][11] -> [DMESG-WARN][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-apl7/igt@i915_selftest@mock@uncore.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-apl8/igt@i915_selftest@mock@uncore.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@i915_selftest@mock@uncore:
    - {shard-rkl}:        [PASS][13] -> [DMESG-WARN][14]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-rkl-6/igt@i915_selftest@mock@uncore.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-rkl-2/igt@i915_selftest@mock@uncore.html

  
Known issues
------------

  Here are the changes found in Patchwork_20736_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][15] ([i915#3002])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-kbl2/igt@gem_create@create-massive.html
    - shard-apl:          NOTRUN -> [DMESG-WARN][16] ([i915#3002])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-apl3/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@process:
    - shard-snb:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#1099]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-snb5/igt@gem_ctx_persistence@process.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][18] -> [FAIL][19] ([i915#2842]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html
    - shard-iclb:         [PASS][20] -> [FAIL][21] ([i915#2849])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-iclb:         [PASS][22] -> [FAIL][23] ([i915#2428])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][24] ([i915#2658])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-apl8/igt@gem_pread@exhaustion.html

  * igt@gem_render_copy@linear-to-vebox-y-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][25] ([i915#768])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-iclb4/igt@gem_render_copy@linear-to-vebox-y-tiled.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-apl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3323])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-apl7/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-snb:          NOTRUN -> [DMESG-WARN][27] ([i915#3002])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-snb5/igt@gem_userptr_blits@input-checking.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-iclb:         NOTRUN -> [SKIP][28] ([i915#2856])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-iclb4/igt@gen9_exec_parse@bb-start-far.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-skl:          [PASS][29] -> [DMESG-WARN][30] ([i915#1982])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-skl4/igt@i915_module_load@reload-with-fault-injection.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-skl6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][31] -> [FAIL][32] ([i915#454])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@basic-rte:
    - shard-kbl:          NOTRUN -> [FAIL][33] ([i915#579])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-kbl1/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_pm_rpm@pm-caching:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([i915#579])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-iclb4/igt@i915_pm_rpm@pm-caching.html

  * igt@i915_suspend@forcewake:
    - shard-apl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-apl7/igt@i915_suspend@forcewake.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-apl6/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3777]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-apl8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271]) +79 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-kbl3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271]) +303 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-apl7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#110723])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-iclb4/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_chamelium@dp-mode-timings:
    - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109284] / [fdo#111827])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-iclb4/igt@kms_chamelium@dp-mode-timings.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +25 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-apl8/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-kbl3/igt@kms_chamelium@vga-hpd-for-each-pipe.html
    - shard-skl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-skl5/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:
    - shard-snb:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-snb5/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-tglb:         NOTRUN -> [SKIP][46] ([i915#3116])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-tglb6/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          NOTRUN -> [TIMEOUT][47] ([i915#1319])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-kbl1/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109278]) +9 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-iclb4/igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-max-size-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][49] ([i915#3359]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-max-size-sliding.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][50] ([fdo#109274] / [fdo#109278])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-iclb4/igt@kms_cursor_legacy@cursora-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
    - shard-skl:          [PASS][51] -> [FAIL][52] ([i915#2346])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][53] ([i915#180]) +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [PASS][54] -> [FAIL][55] ([i915#2122]) +1 similar issue
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-tglb:         NOTRUN -> [SKIP][56] ([fdo#109285])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-tglb7/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109280]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-iclb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
    - shard-skl:          NOTRUN -> [SKIP][58] ([fdo#109271]) +39 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-skl5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
    - shard-snb:          NOTRUN -> [SKIP][59] ([fdo#109271]) +202 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-snb5/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:
    - shard-tglb:         NOTRUN -> [SKIP][60] ([fdo#111825])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-tglb6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [PASS][61] -> [DMESG-WARN][62] ([i915#180]) +7 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#533]) +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-apl2/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][64] ([i915#265]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][65] ([fdo#108145] / [i915#265]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-iclb:         NOTRUN -> [SKIP][66] ([fdo#109274]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-iclb4/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#658]) +5 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-apl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#658]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-kbl2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
    - shard-skl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#658])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-skl2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][70] -> [SKIP][71] ([fdo#109642] / [fdo#111068] / [i915#658])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-iclb1/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         NOTRUN -> [SKIP][72] ([fdo#109441]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-iclb4/igt@kms_psr@psr2_cursor_blt.html
    - shard-tglb:         NOTRUN -> [FAIL][73] ([i915#132] / [i915#3467])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-tglb6/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][74] -> [SKIP][75] ([fdo#109441]) +1 similar issue
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_selftest@all@damage_iter_no_damage:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][76] ([i915#3871])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-kbl7/igt@kms_selftest@all@damage_iter_no_damage.html

  * igt@perf@gen12-mi-rpc:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([fdo#109289]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-iclb4/igt@perf@gen12-mi-rpc.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][78] -> [FAIL][79] ([i915#1722])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-skl2/igt@perf@polling-small-buf.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-skl9/igt@perf@polling-small-buf.html

  * igt@prime_vgem@sync@vcs1:
    - shard-tglb:         [PASS][80] -> [INCOMPLETE][81] ([i915#409])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-tglb8/igt@prime_vgem@sync@vcs1.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-tglb6/igt@prime_vgem@sync@vcs1.html

  * igt@sysfs_clients@create:
    - shard-apl:          NOTRUN -> [SKIP][82] ([fdo#109271] / [i915#2994]) +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-apl2/igt@sysfs_clients@create.html
    - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#2994])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-skl5/igt@sysfs_clients@create.html

  * igt@sysfs_clients@split-50:
    - shard-kbl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#2994]) +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-kbl3/igt@sysfs_clients@split-50.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr1:
    - {shard-rkl}:        [SKIP][85] ([i915#658]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-rkl-5/igt@feature_discovery@psr1.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-rkl-6/igt@feature_discovery@psr1.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][87] ([i915#2842]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [FAIL][89] ([i915#2842]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-kbl2/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-kbl1/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][91] ([i915#2842]) -> [PASS][92] +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [DMESG-WARN][93] ([i915#1436] / [i915#716]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-kbl1/igt@gen9_exec_parse@allowed-all.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-kbl2/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-iclb:         [DMESG-WARN][95] ([i915#3621]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-iclb1/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-iclb4/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - {shard-rkl}:        [SKIP][97] ([i915#3638]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-rkl-5/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-rkl-6/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - {shard-rkl}:        [SKIP][99] ([i915#3721]) -> [PASS][100] +2 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-rkl-2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_color@pipe-c-degamma:
    - {shard-rkl}:        [SKIP][101] ([i915#1149] / [i915#1849]) -> [PASS][102] +3 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-rkl-5/igt@kms_color@pipe-c-degamma.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-rkl-6/igt@kms_color@pipe-c-degamma.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:
    - shard-skl:          [FAIL][103] ([i915#3444]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen:
    - {shard-rkl}:        [SKIP][105] ([fdo#112022]) -> [PASS][106] +7 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-rkl-2/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-rkl-6/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - {shard-rkl}:        [SKIP][107] ([fdo#111825]) -> [PASS][108] +2 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-rkl-2/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-rkl-6/igt@kms_cursor_legacy@basic-flip-before-cursor-legacy.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-untiled:
    - {shard-rkl}:        [SKIP][109] ([fdo#111314]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-rkl-5/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][111] ([i915#180]) -> [PASS][112] +3 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:
    - {shard-rkl}:        [SKIP][113] ([i915#1849]) -> [PASS][114] +19 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][115] ([i915#1188]) -> [PASS][116] +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:
    - {shard-rkl}:        [SKIP][117] ([i915#3558]) -> [PASS][118] +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-rkl-2/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-rkl-6/igt@kms_plane@pixel-format-source-clamping@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][119] ([fdo#108145] / [i915#265]) -> [PASS][120] +3 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-a-tiling-y:
    - {shard-rkl}:        [SKIP][121] ([i915#1849] / [i915#3558]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-rkl-5/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-rkl-6/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.html

  * igt@kms_plane_scaling@scaler-with-rotation@pipe-a-scaler-with-rotation:
    - shard-skl:          [DMESG-WARN][123] ([i915#1982]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-skl8/igt@kms_plane_scaling@scaler-with-rotation@pipe-a-scaler-with-rotation.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-skl1/igt@kms_plane_scaling@scaler-with-rotation@pipe-a-scaler-with-rotation.html

  * igt@kms_psr@cursor_mmap_cpu:
    - {shard-rkl}:        [SKIP][125] ([i915#1072]) -> [PASS][126] +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-rkl-2/igt@kms_psr@cursor_mmap_cpu.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-rkl-6/igt@kms_psr@cursor_mmap_cpu.html

  * igt@kms_vblank@pipe-c-wait-busy:
    - {shard-rkl}:        [SKIP][127] ([i915#1845]) -> [PASS][128] +15 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-rkl-5/igt@kms_vblank@pipe-c-wait-busy.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-rkl-6/igt@kms_vblank@pipe-c-wait-busy.html

  * igt@perf@blocking:
    - {shard-rkl}:        [FAIL][129] ([i915#1542]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-rkl-2/igt@perf@blocking.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-rkl-6/igt@perf@blocking.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][131] ([i915#588]) -> [SKIP][132] ([i915#658])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][133] ([i915#1804] / [i915#2684]) -> [FAIL][134] ([i915#2680])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][135] ([i915#658]) -> [SKIP][136] ([i915#2920]) +1 similar issue
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-iclb6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
    - shard-iclb:         [SKIP][137] ([i915#2920]) -> [SKIP][138] ([i915#658])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-iclb1/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#3002] / [i915#3363] / [i915#716]) -> ([FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#3002] / [i915#3363])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-kbl2/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-kbl1/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-kbl1/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-kbl1/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-kbl1/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-kbl7/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-kbl1/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-kbl2/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-kbl4/i

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/index.html

--===============1891843621074194329==
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
<tr><td><b>Series:</b></td><td>Forcewake and shadowed register updates</td>=
</tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/93158/">https://patchwork.freedesktop.org/series/93158/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20736/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20736/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10416_full -&gt; Patchwork_20736_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_20736_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_20736_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
20736_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@mock@uncore:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10416/shard-glk1/igt@i915_selftest@mock@uncore.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-g=
lk1/igt@i915_selftest@mock@uncore.html">DMESG-WARN</a></p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10416/shard-iclb1/igt@i915_selftest@mock@uncore.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-=
iclb4/igt@i915_selftest@mock@uncore.html">DMESG-WARN</a></p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10416/shard-kbl3/igt@i915_selftest@mock@uncore.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-k=
bl4/igt@i915_selftest@mock@uncore.html">DMESG-WARN</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10416/shard-tglb2/igt@i915_selftest@mock@uncore.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-=
tglb3/igt@i915_selftest@mock@uncore.html">DMESG-WARN</a></p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10416/shard-skl5/igt@i915_selftest@mock@uncore.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-s=
kl9/igt@i915_selftest@mock@uncore.html">DMESG-WARN</a></p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10416/shard-apl7/igt@i915_selftest@mock@uncore.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-a=
pl8/igt@i915_selftest@mock@uncore.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>igt@i915_selftest@mock@uncore:<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-rkl-6/igt@i915_selftest@mock@uncore.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard=
-rkl-2/igt@i915_selftest@mock@uncore.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20736_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20736/shard-kbl2/igt@gem_create@create-massive.html"=
>DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20736/shard-apl3/igt@gem_create@create-massive.html"=
>DMESG-WARN</a> ([i915#3002])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-snb5/igt@gem_ctx_persistence@process.ht=
ml">SKIP</a> ([fdo#109271] / [i915#1099]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10416/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736=
/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#284=
2]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10416/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2073=
6/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2=
849])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736=
/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">FAIL</a> ([i915#2428=
])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-apl8/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-y-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-iclb4/igt@gem_render_copy@linear-to-veb=
ox-y-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-apl7/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-snb5/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-iclb4/igt@gen9_exec_parse@bb-start-far.=
html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-skl4/igt@i915_module_load@reload-with-fault-injection.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20736/shard-skl6/igt@i915_module_load@reload-with-fault-injection.ht=
ml">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-iclb1/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-iclb6/=
igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-kbl1/igt@i915_pm_rpm@basic-rte.html">FA=
IL</a> ([i915#579])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@pm-caching:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-iclb4/igt@i915_pm_rpm@pm-caching.html">=
SKIP</a> ([i915#579])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-apl7/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-apl=
6/igt@i915_suspend@forcewake.html">DMESG-WARN</a> ([i915#180]) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-apl8/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-kbl3/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> ([fdo#109271]) +79 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-apl7/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-64bpp-rotate-0.html">SKIP</a> ([fdo#109271]) +303 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-iclb4/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-64bpp-rotate-0-hflip.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-mode-timings:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-iclb4/igt@kms_chamelium@dp-mode-timings=
.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-apl8/igt@kms_chamelium@hdmi-edid-change=
-during-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +25 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20736/shard-kbl3/igt@kms_chamelium@vga-hpd-for-each-=
pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20736/shard-skl5/igt@kms_chamelium@vga-hpd-for-each-=
pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-snb5/igt@kms_color_chamelium@pipe-c-ctm=
-red-to-blue.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-tglb6/igt@kms_content_protection@dp-mst=
-type-1.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-kbl1/igt@kms_content_protection@legacy.=
html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-iclb4/igt@kms_cursor_crc@pipe-a-cursor-=
max-size-sliding.html">SKIP</a> ([fdo#109278]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-max-size-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-=
max-size-sliding.html">SKIP</a> ([i915#3359]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-iclb4/igt@kms_cursor_legacy@cursora-vs-=
flipb-atomic.html">SKIP</a> ([fdo#109274] / [fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20736/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.=
html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1=
.html">DMESG-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
c-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20736/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interru=
ptible@c-edp1.html">FAIL</a> ([i915#2122]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-tglb7/igt@kms_force_connector_basic@for=
ce-load-detect.html">SKIP</a> ([fdo#109285])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-iclb4/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109280]) +2 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-skl5/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-pri-indfb-draw-blt.html">SKIP</a> ([fdo#109271]) +39 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-snb5/igt@kms_frontbuffer_tracking@fbcps=
r-rgb101010-draw-blt.html">SKIP</a> ([fdo#109271]) +202 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-tglb6/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([fdo#111825])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-kbl3/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard=
-kbl4/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> ([i915#180]) +7 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-apl2/igt@kms_pipe_crc_basic@disable-crc=
-after-crtc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +2 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-iclb4/igt@kms_plane_scaling@2x-scaler-m=
ulti-pipe.html">SKIP</a> ([fdo#109274]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-apl6/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +5 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-kbl2/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-skl2/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-i=
clb1/igt@kms_psr2_su@frontbuffer.html">SKIP</a> ([fdo#109642] / [fdo#111068=
] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20736/shard-iclb4/igt@kms_psr@psr2_cursor_blt.html">=
SKIP</a> ([fdo#109441]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20736/shard-tglb6/igt@kms_psr@psr2_cursor_blt.html">=
FAIL</a> ([i915#132] / [i915#3467])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/=
shard-iclb1/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> ([fdo#109441]=
) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@all@damage_iter_no_damage:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-kbl7/igt@kms_selftest@all@damage_iter_n=
o_damage.html">INCOMPLETE</a> ([i915#3871])</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-mi-rpc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-iclb4/igt@perf@gen12-mi-rpc.html">SKIP<=
/a> ([fdo#109289]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-skl2/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-skl=
9/igt@perf@polling-small-buf.html">FAIL</a> ([i915#1722])</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@vcs1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-tglb8/igt@prime_vgem@sync@vcs1.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-tglb=
6/igt@prime_vgem@sync@vcs1.html">INCOMPLETE</a> ([i915#409])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20736/shard-apl2/igt@sysfs_clients@create.html">SKIP=
</a> ([fdo#109271] / [i915#2994]) +2 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20736/shard-skl5/igt@sysfs_clients@create.html">SKIP=
</a> ([fdo#109271] / [i915#2994])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-kbl3/igt@sysfs_clients@split-50.html">S=
KIP</a> ([fdo#109271] / [i915#2994]) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr1:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-rkl-5/igt@feature_discovery@psr1.html">SKIP</a> ([i915#=
658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0736/shard-rkl-6/igt@feature_discovery@psr1.html">PASS</a> +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20736/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-kbl2/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</=
a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_20736/shard-kbl1/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS=
</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20736/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">=
PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-kbl1/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</=
a> ([i915#1436] / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20736/shard-kbl2/igt@gen9_exec_parse@allowed-all.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-iclb1/igt@kms_big_fb@linear-32bpp-rotate-0.html">DMESG-=
WARN</a> ([i915#3621]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_20736/shard-iclb4/igt@kms_big_fb@linear-32bpp-rotate-0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-180:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-rkl-5/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">SKI=
P</a> ([i915#3638]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20736/shard-rkl-6/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html=
">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-rkl-2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate=
-180-hflip-async-flip.html">SKIP</a> ([i915#3721]) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-rkl-6/igt@kms_big_f=
b@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">PASS</a> +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-degamma:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-rkl-5/igt@kms_color@pipe-c-degamma.html">SKIP</a> ([i91=
5#1149] / [i915#1849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_20736/shard-rkl-6/igt@kms_color@pipe-c-degamma.html">PASS</=
a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.ht=
ml">FAIL</a> ([i915#3444]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_20736/shard-skl2/igt@kms_cursor_crc@pipe-a-cursor-64x21=
-onscreen.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-rkl-2/igt@kms_cursor_crc@pipe-c-cursor-256x85-offscreen=
.html">SKIP</a> ([fdo#112022]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-rkl-6/igt@kms_cursor_crc@pipe-c-cursor-=
256x85-offscreen.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-rkl-2/igt@kms_cursor_legacy@basic-flip-before-cursor-le=
gacy.html">SKIP</a> ([fdo#111825]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_20736/shard-rkl-6/igt@kms_cursor_legacy@basic-f=
lip-before-cursor-legacy.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-blt-untiled:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-rkl-5/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.h=
tml">SKIP</a> ([fdo#111314]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20736/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565=
-blt-untiled.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20736/shard-kbl3/igt@kms_flip@flip-vs-suspend-int=
erruptible@a-dp1.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwri=
te.html">SKIP</a> ([i915#1849]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20736/shard-rkl-6/igt@kms_frontbuffer_tracking@psr=
-rgb565-draw-pwrite.html">PASS</a> +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915=
#1188]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20736/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-source-clamping@pipe-b-planes:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-rkl-2/igt@kms_plane@pixel-format-source-clamping@pipe-b=
-planes.html">SKIP</a> ([i915#3558]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_20736/shard-rkl-6/igt@kms_plane@pixel-format-=
source-clamping@pipe-b-planes.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_20736/shard-skl8/igt@kms_plane_alpha_blend=
@pipe-c-coverage-7efc.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-a-tiling-y:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-rkl-5/igt@kms_plane_multiple@atomic-pipe-a-tiling-y.htm=
l">SKIP</a> ([i915#1849] / [i915#3558]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_20736/shard-rkl-6/igt@kms_plane_multiple@a=
tomic-pipe-a-tiling-y.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-rotation@pipe-a-scaler-with-rotation:<=
/p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-skl8/igt@kms_plane_scaling@scaler-with-rotation@pipe-a-=
scaler-with-rotation.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-skl1/igt@kms_p=
lane_scaling@scaler-with-rotation@pipe-a-scaler-with-rotation.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_mmap_cpu:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-rkl-2/igt@kms_psr@cursor_mmap_cpu.html">SKIP</a> ([i915=
#1072]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20736/shard-rkl-6/igt@kms_psr@cursor_mmap_cpu.html">PASS</a> +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-wait-busy:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-rkl-5/igt@kms_vblank@pipe-c-wait-busy.html">SKIP</a> ([=
i915#1845]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20736/shard-rkl-6/igt@kms_vblank@pipe-c-wait-busy.html">PASS</a> +15 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-rkl-2/igt@perf@blocking.html">FAIL</a> ([i915#1542]) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/sha=
rd-rkl-6/igt@perf@blocking.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> ([i915#588]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20736/shard-iclb1/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 ([i915#1804] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20736/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.=
html">FAIL</a> ([i915#2680])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-iclb6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a-4.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20736/shard-iclb2/igt@kms_psr2_sf@overlay-primary-=
update-sf-dmg-area-4.html">SKIP</a> ([i915#2920]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10416/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html">SK=
IP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_20736/shard-iclb1/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.ht=
ml">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10416/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-kbl1/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_10416/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10416/shard-kbl1/igt@runner@abort=
ed.html">FAIL</a>) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#3002] /=
 [i915#3363] / [i915#716]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_20736/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-kbl=
7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20736/shard-kbl1/igt@runner@aborted.html">FAIL</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20736/shard-=
kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_20736/shard-kbl4/i">FAIL</a>, [FAIL][148], [FAIL=
][149], [FAIL][150]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2426] =
/ [i915#3002] / [i915#3363])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============1891843621074194329==--

--===============2075145841==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2075145841==--
