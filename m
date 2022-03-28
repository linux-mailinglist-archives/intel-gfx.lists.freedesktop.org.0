Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A656A4EA175
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 22:26:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5F0D10E066;
	Mon, 28 Mar 2022 20:26:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D9B0910E066;
 Mon, 28 Mar 2022 20:26:22 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D43B1AAA91;
 Mon, 28 Mar 2022 20:26:22 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4949477284994702779=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Christian_K=C3=B6nig?= <ckoenig.leichtzumerken@gmail.com>
Date: Mon, 28 Mar 2022 20:26:22 -0000
Message-ID: <164849918283.2849.8207173967410238283@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220325154323.221765-1-christian.koenig@amd.com>
In-Reply-To: <20220325154323.221765-1-christian.koenig@amd.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZG1h?=
 =?utf-8?q?-buf=3A_WIP_dma=5Ffence=5Farray=5Ffirst_fix?=
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

--===============4949477284994702779==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: dma-buf: WIP dma_fence_array_first fix
URL   : https://patchwork.freedesktop.org/series/101879/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11414 -> Patchwork_22698
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22698 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22698, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/index.html

Participating hosts (43 -> 32)
------------------------------

  Missing    (11): shard-tglu bat-dg1-6 bat-dg2-8 bat-dg2-9 fi-bsw-cyan bat-adlp-6 bat-adlp-4 bat-rpls-1 fi-bdw-samus bat-jsl-2 bat-jsl-1 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22698:

### IGT changes ###

#### Possible regressions ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-bsw-n3050:       NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-n3050/igt@core_hotunplug@unbind-rebind.html
    - fi-snb-2520m:       NOTRUN -> [DMESG-WARN][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-snb-2520m/igt@core_hotunplug@unbind-rebind.html
    - fi-bsw-nick:        NOTRUN -> [DMESG-WARN][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-nick/igt@core_hotunplug@unbind-rebind.html
    - fi-snb-2600:        NOTRUN -> [DMESG-WARN][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-snb-2600/igt@core_hotunplug@unbind-rebind.html
    - fi-bsw-kefka:       NOTRUN -> [DMESG-WARN][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-kefka/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_render_linear_blits@basic:
    - fi-kbl-soraka:      [PASS][6] -> [DMESG-WARN][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-kbl-soraka/igt@gem_render_linear_blits@basic.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-kbl-soraka/igt@gem_render_linear_blits@basic.html
    - fi-bwr-2160:        [PASS][8] -> [DMESG-WARN][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-bwr-2160/igt@gem_render_linear_blits@basic.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bwr-2160/igt@gem_render_linear_blits@basic.html
    - fi-elk-e7500:       [PASS][10] -> [DMESG-WARN][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-elk-e7500/igt@gem_render_linear_blits@basic.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-elk-e7500/igt@gem_render_linear_blits@basic.html
    - fi-blb-e6850:       [PASS][12] -> [DMESG-WARN][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-blb-e6850/igt@gem_render_linear_blits@basic.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-blb-e6850/igt@gem_render_linear_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - fi-cfl-guc:         [PASS][14] -> [DMESG-WARN][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-cfl-guc/igt@gem_tiled_blits@basic.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-cfl-guc/igt@gem_tiled_blits@basic.html
    - fi-cfl-8109u:       NOTRUN -> [DMESG-WARN][16]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-cfl-8109u/igt@gem_tiled_blits@basic.html
    - fi-kbl-7567u:       [PASS][17] -> [DMESG-WARN][18]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-kbl-7567u/igt@gem_tiled_blits@basic.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-kbl-7567u/igt@gem_tiled_blits@basic.html
    - fi-kbl-8809g:       [PASS][19] -> [DMESG-WARN][20]
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-kbl-8809g/igt@gem_tiled_blits@basic.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-kbl-8809g/igt@gem_tiled_blits@basic.html

  
#### Warnings ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-bxt-dsi:         [INCOMPLETE][21] ([i915#5441]) -> [DMESG-WARN][22]
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-bxt-dsi/igt@core_hotunplug@unbind-rebind.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bxt-dsi/igt@core_hotunplug@unbind-rebind.html
    - fi-kbl-7500u:       [INCOMPLETE][23] ([i915#1373] / [i915#5441]) -> [DMESG-WARN][24]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html
    - fi-glk-dsi:         [INCOMPLETE][25] ([i915#5441]) -> [DMESG-WARN][26]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-glk-dsi/igt@core_hotunplug@unbind-rebind.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-glk-dsi/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_render_linear_blits@basic:
    - fi-ilk-650:         [INCOMPLETE][27] ([i915#5441]) -> [DMESG-WARN][28]
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-ilk-650/igt@gem_render_linear_blits@basic.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-ilk-650/igt@gem_render_linear_blits@basic.html
    - fi-pnv-d510:        [INCOMPLETE][29] ([i915#5441]) -> [DMESG-WARN][30]
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-pnv-d510/igt@gem_render_linear_blits@basic.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-pnv-d510/igt@gem_render_linear_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - fi-skl-6700k2:      [INCOMPLETE][31] ([i915#5441]) -> [DMESG-WARN][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-skl-6700k2/igt@gem_tiled_blits@basic.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-skl-6700k2/igt@gem_tiled_blits@basic.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@core_hotunplug@unbind-rebind:
    - {fi-rkl-11600}:     NOTRUN -> [DMESG-WARN][33]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_render_linear_blits@basic:
    - {fi-tgl-dsi}:       [INCOMPLETE][34] ([i915#5441]) -> [DMESG-WARN][35]
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-tgl-dsi/igt@gem_render_linear_blits@basic.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-tgl-dsi/igt@gem_render_linear_blits@basic.html

  * igt@gem_render_tiled_blits@basic:
    - {fi-adl-ddr5}:      [PASS][36] -> [DMESG-WARN][37]
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-adl-ddr5/igt@gem_render_tiled_blits@basic.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-adl-ddr5/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - {fi-ehl-2}:         [PASS][38] -> [DMESG-WARN][39]
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-ehl-2/igt@gem_tiled_blits@basic.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-ehl-2/igt@gem_tiled_blits@basic.html
    - {fi-hsw-g3258}:     [INCOMPLETE][40] ([i915#5441]) -> [DMESG-WARN][41]
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-hsw-g3258/igt@gem_tiled_blits@basic.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-hsw-g3258/igt@gem_tiled_blits@basic.html

  * igt@i915_pm_rps@basic-api:
    - {fi-jsl-1}:         NOTRUN -> [DMESG-WARN][42] +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-jsl-1/igt@i915_pm_rps@basic-api.html

  
Known issues
------------

  Here are the changes found in Patchwork_22698 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@cs-gfx:
    - fi-rkl-guc:         NOTRUN -> [SKIP][43] ([fdo#109315]) +17 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html

  * igt@amdgpu/amd_basic@query-info:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][44] ([fdo#109315])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-tgl-1115g4/igt@amdgpu/amd_basic@query-info.html

  * igt@amdgpu/amd_cs_nop@nop-gfx0:
    - fi-tgl-1115g4:      NOTRUN -> [SKIP][45] ([fdo#109315] / [i915#2575]) +16 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-tgl-1115g4/igt@amdgpu/amd_cs_nop@nop-gfx0.html

  * igt@amdgpu/amd_cs_nop@sync-gfx0:
    - fi-glk-j4005:       NOTRUN -> [SKIP][46] ([fdo#109271]) +17 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-glk-j4005/igt@amdgpu/amd_cs_nop@sync-gfx0.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - fi-snb-2600:        NOTRUN -> [SKIP][47] ([fdo#109271]) +10 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-snb-2600/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_busy@basic:
    - fi-kbl-guc:         NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#1845])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-kbl-guc/igt@kms_busy@basic.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-bsw-nick:        NOTRUN -> [SKIP][49] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-nick/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][50] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-n3050/igt@kms_chamelium@hdmi-crc-fast.html
    - fi-snb-2600:        NOTRUN -> [SKIP][51] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-snb-2600/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][52] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-kefka/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@hdmi-hpd-fast:
    - fi-snb-2520m:       NOTRUN -> [SKIP][53] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-snb-2520m/igt@kms_chamelium@hdmi-hpd-fast.html

  * igt@kms_chamelium@vga-hpd-fast:
    - fi-kbl-guc:         NOTRUN -> [SKIP][54] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-kbl-guc/igt@kms_chamelium@vga-hpd-fast.html

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - fi-kbl-guc:         NOTRUN -> [SKIP][55] ([fdo#109271]) +11 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-kbl-guc/igt@kms_flip@basic-flip-vs-wf_vblank.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
    - fi-snb-2520m:       NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#5341])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-snb-2520m/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-bsw-kefka:       NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#5341])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-kefka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-bsw-nick:        NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#5341])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-nick/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
    - fi-snb-2600:        NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#5341])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-snb-2600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][60] ([fdo#109271]) +22 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-n3050/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_psr@cursor_plane_move:
    - fi-bsw-kefka:       NOTRUN -> [SKIP][61] ([fdo#109271]) +11 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-kefka/igt@kms_psr@cursor_plane_move.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - fi-snb-2520m:       NOTRUN -> [SKIP][62] ([fdo#109271]) +11 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-snb-2520m/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-flip:
    - fi-bsw-nick:        NOTRUN -> [SKIP][63] ([fdo#109271]) +37 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-nick/igt@prime_vgem@basic-fence-flip.html

  
#### Possible fixes ####

  * igt@core_hotunplug@unbind-rebind:
    - fi-tgl-1115g4:      [INCOMPLETE][64] ([i915#1373] / [i915#5441]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html
    - fi-glk-j4005:       [INCOMPLETE][66] ([i915#5441]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-glk-j4005/igt@core_hotunplug@unbind-rebind.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-glk-j4005/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - {fi-rkl-11600}:     [INCOMPLETE][68] ([i915#5127]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_render_tiled_blits@basic:
    - fi-bsw-n3050:       [INCOMPLETE][70] ([i915#5441]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-bsw-n3050/igt@gem_render_tiled_blits@basic.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-n3050/igt@gem_render_tiled_blits@basic.html
    - {fi-jsl-1}:         [INCOMPLETE][72] ([i915#5441]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-jsl-1/igt@gem_render_tiled_blits@basic.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-jsl-1/igt@gem_render_tiled_blits@basic.html
    - fi-bsw-nick:        [INCOMPLETE][74] ([i915#5441]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-bsw-nick/igt@gem_render_tiled_blits@basic.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-nick/igt@gem_render_tiled_blits@basic.html
    - fi-cfl-8109u:       [INCOMPLETE][76] ([i915#5441]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-cfl-8109u/igt@gem_render_tiled_blits@basic.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-cfl-8109u/igt@gem_render_tiled_blits@basic.html
    - fi-bsw-kefka:       [INCOMPLETE][78] ([i915#5441]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-bsw-kefka/igt@gem_render_tiled_blits@basic.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-kefka/igt@gem_render_tiled_blits@basic.html
    - fi-kbl-guc:         [INCOMPLETE][80] ([i915#5441]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-kbl-guc/igt@gem_render_tiled_blits@basic.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-kbl-guc/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - fi-snb-2600:        [INCOMPLETE][82] ([i915#5441]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-snb-2600/igt@gem_tiled_blits@basic.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-snb-2600/igt@gem_tiled_blits@basic.html
    - fi-snb-2520m:       [INCOMPLETE][84] ([i915#5441]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-snb-2520m/igt@gem_tiled_blits@basic.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-snb-2520m/igt@gem_tiled_blits@basic.html

  * igt@i915_selftest@live@gt_engines:
    - fi-rkl-guc:         [INCOMPLETE][86] ([i915#4418]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html

  
#### Warnings ####

  * igt@runner@aborted:
    - fi-bsw-kefka:       [FAIL][88] ([i915#3428] / [i915#4312]) -> [FAIL][89] ([i915#4312])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-bsw-kefka/igt@runner@aborted.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-kefka/igt@runner@aborted.html
    - fi-cfl-8109u:       [FAIL][90] ([i915#4312]) -> [FAIL][91] ([i915#4312] / [i915#5257])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-cfl-8109u/igt@runner@aborted.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-cfl-8109u/igt@runner@aborted.html
    - fi-glk-dsi:         [FAIL][92] ([i915#4312] / [k.org#202321]) -> [FAIL][93] ([i915#4312] / [i915#5257] / [k.org#202321])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-glk-dsi/igt@runner@aborted.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-glk-dsi/igt@runner@aborted.html
    - fi-bsw-nick:        [FAIL][94] ([i915#3428] / [i915#4312]) -> [FAIL][95] ([i915#4312])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-bsw-nick/igt@runner@aborted.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-nick/igt@runner@aborted.html
    - fi-kbl-8809g:       [FAIL][96] ([i915#4312]) -> [FAIL][97] ([i915#4312] / [i915#5257])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-kbl-8809g/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-kbl-8809g/igt@runner@aborted.html
    - fi-kbl-soraka:      [FAIL][98] ([i915#4312]) -> [FAIL][99] ([i915#4312] / [i915#5257])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-kbl-soraka/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-kbl-soraka/igt@runner@aborted.html
    - fi-kbl-7500u:       [FAIL][100] ([i915#4312]) -> [FAIL][101] ([i915#4312] / [i915#5257])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-kbl-7500u/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-kbl-7500u/igt@runner@aborted.html
    - fi-bxt-dsi:         [FAIL][102] ([i915#4312]) -> [FAIL][103] ([i915#4312] / [i915#5257])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-bxt-dsi/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bxt-dsi/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][104] ([i915#4312]) -> [FAIL][105] ([i915#4312] / [i915#5257])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-cfl-guc/igt@runner@aborted.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-cfl-guc/igt@runner@aborted.html
    - fi-kbl-7567u:       [FAIL][106] ([i915#4312]) -> [FAIL][107] ([i915#4312] / [i915#5257])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-kbl-7567u/igt@runner@aborted.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-kbl-7567u/igt@runner@aborted.html
    - fi-skl-6700k2:      [FAIL][108] ([i915#4312]) -> [FAIL][109] ([i915#4312] / [i915#5257])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-skl-6700k2/igt@runner@aborted.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-skl-6700k2/igt@runner@aborted.html
    - fi-bsw-n3050:       [FAIL][110] ([i915#3428] / [i915#4312]) -> [FAIL][111] ([i915#4312])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-bsw-n3050/igt@runner@aborted.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-n3050/igt@runner@aborted.html
    - fi-blb-e6850:       [FAIL][112] ([fdo#109271] / [i915#2403] / [i915#4312]) -> [FAIL][113] ([i915#2403] / [i915#4312])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-blb-e6850/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-blb-e6850/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1373]: https://gitlab.freedesktop.org/drm/intel/issues/1373
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2403]: https://gitlab.freedesktop.org/drm/intel/issues/2403
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3428]: https://gitlab.freedesktop.org/drm/intel/issues/3428
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4418]: https://gitlab.freedesktop.org/drm/intel/issues/4418
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#5127]: https://gitlab.freedesktop.org/drm/intel/issues/5127
  [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
  [i915#5441]: https://gitlab.freedesktop.org/drm/intel/issues/5441
  [k.org#202321]: https://bugzilla.kernel.org/show_bug.cgi?id=202321


Build changes
-------------

  * Linux: CI_DRM_11414 -> Patchwork_22698

  CI-20190529: 20190529
  CI_DRM_11414: 3ffb62ffe7e1be28fd1aacd535949fe14137bb31 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6397: 37ec3b8ffd2c36e5a4c9d2c0d22577920212dc42 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22698: 70f075570c350428ceb479a1e66bfb6b4c4b0a7a @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

70f075570c35 dma-buf: WIP dma_fence_array_first fix

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/index.html

--===============4949477284994702779==
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
<tr><td><b>Series:</b></td><td>dma-buf: WIP dma_fence_array_first fix</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101879/">https://patchwork.freedesktop.org/series/101879/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11414 -&gt; Patchwork_22698</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22698 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_22698, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/index.html</p>
<h2>Participating hosts (43 -&gt; 32)</h2>
<p>Missing    (11): shard-tglu bat-dg1-6 bat-dg2-8 bat-dg2-9 fi-bsw-cyan bat-adlp-6 bat-adlp-4 bat-rpls-1 fi-bdw-samus bat-jsl-2 bat-jsl-1 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22698:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-n3050/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-snb-2520m/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-nick/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-snb-2600/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-kefka/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_linear_blits@basic:</p>
<ul>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-kbl-soraka/igt@gem_render_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-kbl-soraka/igt@gem_render_linear_blits@basic.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-bwr-2160/igt@gem_render_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bwr-2160/igt@gem_render_linear_blits@basic.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-elk-e7500/igt@gem_render_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-elk-e7500/igt@gem_render_linear_blits@basic.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-blb-e6850/igt@gem_render_linear_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-blb-e6850/igt@gem_render_linear_blits@basic.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-cfl-guc/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-cfl-guc/igt@gem_tiled_blits@basic.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-cfl-8109u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-cfl-8109u/igt@gem_tiled_blits@basic.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-kbl-7567u/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-kbl-7567u/igt@gem_tiled_blits@basic.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-kbl-8809g/igt@gem_tiled_blits@basic.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-bxt-dsi/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bxt-dsi/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1373">i915#1373</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-kbl-7500u/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-glk-dsi/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-glk-dsi/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_linear_blits@basic:</p>
<ul>
<li>
<p>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-ilk-650/igt@gem_render_linear_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-ilk-650/igt@gem_render_linear_blits@basic.html">DMESG-WARN</a></p>
</li>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-pnv-d510/igt@gem_render_linear_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-pnv-d510/igt@gem_render_linear_blits@basic.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-skl-6700k2/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-skl-6700k2/igt@gem_tiled_blits@basic.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>{fi-rkl-11600}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-rkl-11600/igt@core_hotunplug@unbind-rebind.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@gem_render_linear_blits@basic:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-tgl-dsi/igt@gem_render_linear_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-tgl-dsi/igt@gem_render_linear_blits@basic.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>{fi-adl-ddr5}:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-adl-ddr5/igt@gem_render_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-adl-ddr5/igt@gem_render_tiled_blits@basic.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>
<p>{fi-ehl-2}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-ehl-2/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-ehl-2/igt@gem_tiled_blits@basic.html">DMESG-WARN</a></p>
</li>
<li>
<p>{fi-hsw-g3258}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-hsw-g3258/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-hsw-g3258/igt@gem_tiled_blits@basic.html">DMESG-WARN</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>{fi-jsl-1}:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-jsl-1/igt@i915_pm_rps@basic-api.html">DMESG-WARN</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22698 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>fi-rkl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-rkl-guc/igt@amdgpu/amd_basic@cs-gfx.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-tgl-1115g4/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a>)</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@nop-gfx0:</p>
<ul>
<li>fi-tgl-1115g4:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-tgl-1115g4/igt@amdgpu/amd_cs_nop@nop-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109315">fdo#109315</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2575">i915#2575</a>) +16 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-gfx0:</p>
<ul>
<li>fi-glk-j4005:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-glk-j4005/igt@amdgpu/amd_cs_nop@sync-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-snb-2600/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-kbl-guc/igt@kms_busy@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1845">i915#1845</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-nick/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>
<p>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-n3050/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-snb-2600/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-kefka/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-snb-2520m/igt@kms_chamelium@hdmi-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-fast:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-kbl-guc/igt@kms_chamelium@vga-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>fi-kbl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-kbl-guc/igt@kms_flip@basic-flip-vs-wf_vblank.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:</p>
<ul>
<li>
<p>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-snb-2520m/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-kefka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-nick/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
<li>
<p>fi-snb-2600:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-snb-2600/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5341">i915#5341</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-n3050/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-kefka/igt@kms_psr@cursor_plane_move.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>fi-snb-2520m:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-snb-2520m/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>fi-bsw-nick:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-nick/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +37 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>
<p>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1373">i915#1373</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-tgl-1115g4/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
<li>
<p>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-glk-j4005/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-glk-j4005/igt@core_hotunplug@unbind-rebind.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>{fi-rkl-11600}:     <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5127">i915#5127</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-rkl-11600/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-bsw-n3050/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-n3050/igt@gem_render_tiled_blits@basic.html">PASS</a></p>
</li>
<li>
<p>{fi-jsl-1}:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-jsl-1/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-jsl-1/igt@gem_render_tiled_blits@basic.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-bsw-nick/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-nick/igt@gem_render_tiled_blits@basic.html">PASS</a></p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-cfl-8109u/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-cfl-8109u/igt@gem_render_tiled_blits@basic.html">PASS</a></p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-bsw-kefka/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-kefka/igt@gem_render_tiled_blits@basic.html">PASS</a></p>
</li>
<li>
<p>fi-kbl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-kbl-guc/igt@gem_render_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-kbl-guc/igt@gem_render_tiled_blits@basic.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>
<p>fi-snb-2600:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-snb-2600/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-snb-2600/igt@gem_tiled_blits@basic.html">PASS</a></p>
</li>
<li>
<p>fi-snb-2520m:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-snb-2520m/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/5441">i915#5441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-snb-2520m/igt@gem_tiled_blits@basic.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_engines:</p>
<ul>
<li>fi-rkl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4418">i915#4418</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-rkl-guc/igt@i915_selftest@live@gt_engines.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-kefka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-cfl-8109u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-glk-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a> / <a href="https://bugzilla.kernel.org/show_bug.cgi?id=202321">k.org#202321</a>)</p>
</li>
<li>
<p>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-nick/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-kbl-8809g:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-kbl-8809g/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-kbl-soraka/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-kbl-7500u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-kbl-7500u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-bxt-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bxt-dsi/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-skl-6700k2:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-skl-6700k2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5257">i915#5257</a>)</p>
</li>
<li>
<p>fi-bsw-n3050:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3428">i915#3428</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-bsw-n3050/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
<li>
<p>fi-blb-e6850:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11414/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22698/fi-blb-e6850/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2403">i915#2403</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#4312</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11414 -&gt; Patchwork_22698</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11414: 3ffb62ffe7e1be28fd1aacd535949fe14137bb31 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6397: 37ec3b8ffd2c36e5a4c9d2c0d22577920212dc42 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22698: 70f075570c350428ceb479a1e66bfb6b4c4b0a7a @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>70f075570c35 dma-buf: WIP dma_fence_array_first fix</p>

</body>
</html>

--===============4949477284994702779==--
