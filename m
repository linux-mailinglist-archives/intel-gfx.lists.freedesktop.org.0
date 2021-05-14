Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50350380D3A
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 17:33:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 468D06EEC3;
	Fri, 14 May 2021 15:33:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DF6C06EF21;
 Fri, 14 May 2021 15:33:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CCE38A47E1;
 Fri, 14 May 2021 15:33:53 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Fri, 14 May 2021 15:33:53 -0000
Message-ID: <162100643380.21338.12704455793368464605@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_g4x/vlv/chv_CxSR/wm_fixes/cleanups?=
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
Content-Type: multipart/mixed; boundary="===============0889930427=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0889930427==
Content-Type: multipart/alternative;
 boundary="===============2013006564011294926=="

--===============2013006564011294926==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: g4x/vlv/chv CxSR/wm fixes/cleanups
URL   : https://patchwork.freedesktop.org/series/90164/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10082 -> Patchwork_20126
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/index.html

Known issues
------------

  Here are the changes found in Patchwork_20126 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_cs_nop@nop-compute0:
    - fi-ilk-650:         NOTRUN -> [SKIP][1] ([fdo#109271]) +30 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-ilk-650/igt@amdgpu/amd_cs_nop@nop-compute0.html

  * igt@gem_exec_fence@basic-await@bcs0:
    - fi-bsw-nick:        [PASS][2] -> [FAIL][3] ([i915#3457])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-bsw-nick/igt@gem_exec_fence@basic-await@bcs0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-bsw-nick/igt@gem_exec_fence@basic-await@bcs0.html

  * igt@gem_exec_fence@basic-await@vcs0:
    - fi-bsw-n3050:       NOTRUN -> [FAIL][4] ([i915#3457]) +2 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-bsw-n3050/igt@gem_exec_fence@basic-await@vcs0.html

  * igt@gem_exec_fence@basic-await@vecs0:
    - fi-glk-dsi:         [PASS][5] -> [FAIL][6] ([i915#3457])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-glk-dsi/igt@gem_exec_fence@basic-await@vecs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-glk-dsi/igt@gem_exec_fence@basic-await@vecs0.html

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-r:           NOTRUN -> [SKIP][7] ([fdo#109271]) +3 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-r/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_exec_fence@basic-wait@bcs0:
    - fi-cml-s:           NOTRUN -> [SKIP][8] ([i915#1208]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cml-s/igt@gem_exec_fence@basic-wait@bcs0.html

  * igt@gem_exec_fence@nb-await@bcs0:
    - fi-bsw-kefka:       [PASS][9] -> [FAIL][10] ([i915#3457])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-bsw-kefka/igt@gem_exec_fence@nb-await@bcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-bsw-kefka/igt@gem_exec_fence@nb-await@bcs0.html

  * igt@gem_exec_fence@nb-await@rcs0:
    - fi-elk-e7500:       [PASS][11] -> [FAIL][12] ([i915#3457])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-elk-e7500/igt@gem_exec_fence@nb-await@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-elk-e7500/igt@gem_exec_fence@nb-await@rcs0.html

  * igt@gem_exec_gttfill@basic:
    - fi-bsw-n3050:       NOTRUN -> [SKIP][13] ([fdo#109271])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html

  * igt@gem_exec_suspend@basic-s3:
    - fi-bsw-n3050:       NOTRUN -> [INCOMPLETE][14] ([i915#3159])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_huc_copy@huc-copy:
    - fi-cfl-guc:         NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#2190])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cfl-guc/igt@gem_huc_copy@huc-copy.html
    - fi-cml-s:           NOTRUN -> [SKIP][16] ([i915#2190])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cml-s/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-x1275:       NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#2190])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-r:           NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#2190])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-r/igt@gem_huc_copy@huc-copy.html
    - fi-skl-guc:         NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#2190])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-skl-guc/igt@gem_huc_copy@huc-copy.html

  * igt@i915_module_load@reload:
    - fi-cml-s:           NOTRUN -> [DMESG-WARN][20] ([i915#3457]) +1 similar issue
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cml-s/igt@i915_module_load@reload.html
    - fi-cfl-guc:         NOTRUN -> [DMESG-WARN][21] ([i915#3457]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cfl-guc/igt@i915_module_load@reload.html
    - fi-ilk-650:         NOTRUN -> [DMESG-FAIL][22] ([i915#3457]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-ilk-650/igt@i915_module_load@reload.html
    - fi-kbl-x1275:       NOTRUN -> [DMESG-WARN][23] ([i915#3457]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-x1275/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@execlists:
    - fi-kbl-r:           NOTRUN -> [DMESG-FAIL][24] ([i915#3462])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-r/igt@i915_selftest@live@execlists.html
    - fi-kbl-x1275:       NOTRUN -> [DMESG-FAIL][25] ([i915#3462])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-x1275/igt@i915_selftest@live@execlists.html
    - fi-cml-s:           NOTRUN -> [DMESG-FAIL][26] ([i915#3462])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cml-s/igt@i915_selftest@live@execlists.html
    - fi-skl-guc:         NOTRUN -> [DMESG-FAIL][27] ([i915#3462])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-skl-guc/igt@i915_selftest@live@execlists.html
    - fi-cfl-guc:         NOTRUN -> [DMESG-FAIL][28] ([i915#3462])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cfl-guc/igt@i915_selftest@live@execlists.html

  * igt@i915_selftest@live@mman:
    - fi-kbl-r:           NOTRUN -> [DMESG-WARN][29] ([i915#3457]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-r/igt@i915_selftest@live@mman.html
    - fi-skl-guc:         NOTRUN -> [DMESG-WARN][30] ([i915#3457]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-skl-guc/igt@i915_selftest@live@mman.html

  * igt@kms_chamelium@dp-crc-fast:
    - fi-skl-guc:         NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-skl-guc/igt@kms_chamelium@dp-crc-fast.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-cfl-guc:         NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cfl-guc/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_chamelium@dp-hpd-fast:
    - fi-ilk-650:         NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-ilk-650/igt@kms_chamelium@dp-hpd-fast.html
    - fi-cml-s:           NOTRUN -> [SKIP][34] ([fdo#109284] / [fdo#111827]) +8 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cml-s/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-x1275/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_chamelium@hdmi-edid-read:
    - fi-kbl-r:           NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-r/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-ilk-650:         NOTRUN -> [FAIL][37] ([i915#3457]) +1 similar issue
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-ilk-650/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_force_connector_basic@force-load-detect:
    - fi-cml-s:           NOTRUN -> [SKIP][38] ([fdo#109285])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cml-s/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@basic:
    - fi-tgl-u2:          [PASS][39] -> [FAIL][40] ([i915#2416])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-cml-s:           NOTRUN -> [SKIP][41] ([fdo#109278] / [i915#533])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cml-s/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-cfl-guc:         NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#533])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cfl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-kbl-x1275:       NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#533])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-kbl-r:           NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#533])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-r/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-skl-guc:         NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#533])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - fi-pnv-d510:        [PASS][46] -> [FAIL][47] ([i915#53])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-pnv-d510/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-pnv-d510/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
    - fi-bsw-kefka:       [PASS][48] -> [FAIL][49] ([i915#53]) +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-bsw-kefka/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-bsw-kefka/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:
    - fi-ilk-650:         NOTRUN -> [FAIL][50] ([i915#53]) +7 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-ilk-650/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html
    - fi-elk-e7500:       [PASS][51] -> [FAIL][52] ([i915#53]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html
    - fi-bwr-2160:        [PASS][53] -> [FAIL][54] ([i915#53])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-bwr-2160/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-bwr-2160/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html

  * igt@kms_psr@primary_mmap_gtt:
    - fi-skl-guc:         NOTRUN -> [SKIP][55] ([fdo#109271]) +8 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-skl-guc/igt@kms_psr@primary_mmap_gtt.html

  * igt@kms_psr@primary_page_flip:
    - fi-kbl-x1275:       NOTRUN -> [SKIP][56] ([fdo#109271]) +8 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-x1275/igt@kms_psr@primary_page_flip.html

  * igt@kms_psr@sprite_plane_onoff:
    - fi-cfl-guc:         NOTRUN -> [SKIP][57] ([fdo#109271]) +8 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cfl-guc/igt@kms_psr@sprite_plane_onoff.html

  * igt@prime_vgem@basic-userptr:
    - fi-cml-s:           NOTRUN -> [SKIP][58] ([i915#3301])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cml-s/igt@prime_vgem@basic-userptr.html

  * igt@runner@aborted:
    - fi-kbl-x1275:       NOTRUN -> [FAIL][59] ([i915#1436] / [i915#2426] / [i915#3363])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-x1275/igt@runner@aborted.html
    - fi-kbl-r:           NOTRUN -> [FAIL][60] ([i915#1436] / [i915#3363])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-r/igt@runner@aborted.html
    - fi-cml-s:           NOTRUN -> [FAIL][61] ([i915#3363])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cml-s/igt@runner@aborted.html
    - fi-skl-guc:         NOTRUN -> [FAIL][62] ([i915#1436] / [i915#2426] / [i915#3363])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-skl-guc/igt@runner@aborted.html

  
#### Possible fixes ####

  * igt@gem_exec_fence@basic-await@vecs0:
    - fi-bsw-kefka:       [FAIL][63] ([i915#3457]) -> [PASS][64] +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vecs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vecs0.html

  * igt@gem_wait@wait@all:
    - fi-bwr-2160:        [FAIL][65] ([i915#3457]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-bwr-2160/igt@gem_wait@wait@all.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-bwr-2160/igt@gem_wait@wait@all.html

  * igt@i915_selftest@live@gt_heartbeat:
    - {fi-tgl-dsi}:       [DMESG-FAIL][67] ([i915#541]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html

  * igt@kms_busy@basic@modeset:
    - fi-ilk-650:         [INCOMPLETE][69] ([i915#3457]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-ilk-650/igt@kms_busy@basic@modeset.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-ilk-650/igt@kms_busy@basic@modeset.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - fi-elk-e7500:       [SKIP][71] ([fdo#109271]) -> [PASS][72] +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-elk-e7500/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-elk-e7500/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:
    - fi-elk-e7500:       [FAIL][73] ([i915#53]) -> [PASS][74] +3 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - fi-bwr-2160:        [FAIL][75] ([i915#53]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Warnings ####

  * igt@i915_module_load@reload:
    - fi-glk-dsi:         [DMESG-WARN][77] ([i915#3457]) -> [DMESG-FAIL][78] ([i915#3457])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-glk-dsi/igt@i915_module_load@reload.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-glk-dsi/igt@i915_module_load@reload.html

  * igt@i915_selftest@live@execlists:
    - fi-tgl-u2:          [DMESG-FAIL][79] ([i915#3462]) -> [INCOMPLETE][80] ([i915#3462])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-tgl-u2/igt@i915_selftest@live@execlists.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-tgl-u2/igt@i915_selftest@live@execlists.html

  * igt@kms_chamelium@dp-edid-read:
    - fi-elk-e7500:       [SKIP][81] ([fdo#109271]) -> [SKIP][82] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-elk-e7500/igt@kms_chamelium@dp-edid-read.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-elk-e7500/igt@kms_chamelium@dp-edid-read.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - fi-elk-e7500:       [SKIP][83] ([fdo#109271]) -> [FAIL][84] ([i915#3457])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-elk-e7500/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-elk-e7500/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@runner@aborted:
    - fi-bdw-5557u:       [FAIL][85] ([i915#2426]) -> [FAIL][86] ([i915#1602] / [i915#2029])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-bdw-5557u/igt@runner@aborted.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-bdw-5557u/igt@runner@aborted.html
    - fi-cml-u2:          [FAIL][87] ([i915#3363]) -> [FAIL][88] ([i915#2082] / [i915#2426] / [i915#3363])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-cml-u2/igt@runner@aborted.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cml-u2/igt@runner@aborted.html
    - fi-cfl-guc:         [FAIL][89] ([i915#2426] / [i915#3363]) -> [FAIL][90] ([i915#3363])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-cfl-guc/igt@runner@aborted.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cfl-guc/igt@runner@aborted.html
    - fi-kbl-7567u:       [FAIL][91] ([i915#1436] / [i915#2426] / [i915#3363]) -> [FAIL][92] ([i915#1436] / [i915#3363])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-kbl-7567u/igt@runner@aborted.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-7567u/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1021]: https://gitlab.freedesktop.org/drm/intel/issues/1021
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1208]: https://gitlab.freedesktop.org/drm/intel/issues/1208
  [i915#1222]: https://gitlab.freedesktop.org/drm/intel/issues/1222
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2082]: https://gitlab.freedesktop.org/drm/intel/issues/2082
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2416]: https://gitlab.freedesktop.org/drm/intel/issues/2416
  [i915#2426]: https://gitlab.freedesktop.org/drm/intel/issues/2426
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2932]: https://gitlab.freedesktop.org/drm/intel/issues/2932
  [i915#2966]: https://gitlab.freedesktop.org/drm/intel/issues/2966
  [i915#3159]: https://gitlab.freedesktop.org/drm/intel/issues/3159
  [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
  [i915#3363]: https://gitlab.freedesktop.org/drm/intel/issues/3363
  [i915#3457]: https://gitlab.freedesktop.org/drm/intel/issues/3457
  [i915#3462]: https://gitlab.freedesktop.org/drm/intel/issues/3462
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (33 -> 37)
------------------------------

  Additional (7): fi-ehl-1 fi-cml-s fi-bsw-n3050 fi-skl-guc fi-kbl-x1275 fi-ehl-2 fi-kbl-r 
  Missing    (3): fi-bdw-samus fi-bsw-cyan bat-jsl-1 


Build changes
-------------

  * Linux: CI_DRM_10082 -> Patchwork_20126

  CI-20190529: 20190529
  CI_DRM_10082: 4da3fba648f557d84a60ce2791dd8e4db5e6225f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6083: d28aee5c5f528aa6c352c3339f20aaed4d698ffa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_20126: d0b63ac74ac848ab9605a2b2d05f4d7352d55bda @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

d0b63ac74ac8 drm/i915: Enable atomic by default on ctg/elk
b8ab1f19ab1a drm/i915: Write watermarks for disabled pipes on gmch platforms
4773cf71e9ae drm/i915: Fix pipe gamma enable/disable vs. CxSR on gmch platforms
6a490b6c2a32 drm/i915: Fix g4x/vlv/chv CxSR vs. format/tiling/rotation changes
a41b1d627a0e drm/i915: Add missing invalidate to g4x wm readout
a3367b5e4d61 drm/i915: Simplify up vlv watermark sanitation
a4cb799250ce drm/i915: Simplify up g4x watermark sanitation
fb98ff27a11b drm/i915: Split vlv_compute_pipe_wm() into two
c23ef3138eb5 drm/i915: Split g4x_compute_pipe_wm() into two
bfb4d6ec6ee0 drm/i915: Fix HPLL watermark readout for g4x
727d898dd369 drm/i915: Apply WaUse32BppForSRWM to elk as well as ctg
1461ffb26257 drm/i915: Use u8 consistently for active_planes bitmask
f63e2d07e941 drm/i915: Fix g4x cxsr enable condition
be1c6c460152 drm/i915: s/crtc_state/new_crtc_state/ etc.

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/index.html

--===============2013006564011294926==
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
<tr><td><b>Series:</b></td><td>drm/i915: g4x/vlv/chv CxSR/wm fixes/cleanups</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/90164/">https://patchwork.freedesktop.org/series/90164/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10082 -&gt; Patchwork_20126</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/index.html</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20126 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_cs_nop@nop-compute0:</p>
<ul>
<li>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-ilk-650/igt@amdgpu/amd_cs_nop@nop-compute0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +30 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@bcs0:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-bsw-nick/igt@gem_exec_fence@basic-await@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-bsw-nick/igt@gem_exec_fence@basic-await@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@vcs0:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-bsw-n3050/igt@gem_exec_fence@basic-await@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-await@vecs0:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-glk-dsi/igt@gem_exec_fence@basic-await@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-glk-dsi/igt@gem_exec_fence@basic-await@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-r/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait@bcs0:</p>
<ul>
<li>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cml-s/igt@gem_exec_fence@basic-wait@bcs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1208">i915#1208</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@bcs0:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-bsw-kefka/igt@gem_exec_fence@nb-await@bcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-bsw-kefka/igt@gem_exec_fence@nb-await@bcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@nb-await@rcs0:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-elk-e7500/igt@gem_exec_fence@nb-await@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-elk-e7500/igt@gem_exec_fence@nb-await@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-bsw-n3050/igt@gem_exec_gttfill@basic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>fi-bsw-n3050:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-bsw-n3050/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3159">i915#3159</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cfl-guc/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cml-s/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-x1275/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-r/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-skl-guc/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cml-s/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cfl-guc/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</p>
</li>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-ilk-650/igt@i915_module_load@reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-x1275/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-r/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-x1275/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cml-s/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-skl-guc/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cfl-guc/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-r/igt@i915_selftest@live@mman.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-skl-guc/igt@i915_selftest@live@mman.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-skl-guc/igt@kms_chamelium@dp-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-read:</p>
<ul>
<li>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cfl-guc/igt@kms_chamelium@dp-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-ilk-650/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cml-s/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109284">fdo#109284</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-x1275/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-r/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-ilk-650/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cml-s/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-tgl-u2/igt@kms_frontbuffer_tracking@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2416">i915#2416</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cml-s/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109278">fdo#109278</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cfl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-x1275/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-r/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-skl-guc/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:</p>
<ul>
<li>
<p>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-pnv-d510/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-pnv-d510/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>)</p>
</li>
<li>
<p>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-bsw-kefka/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-bsw-kefka/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:</p>
<ul>
<li>
<p>fi-ilk-650:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-ilk-650/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) +7 similar issues</p>
</li>
<li>
<p>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) +1 similar issue</p>
</li>
<li>
<p>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-bwr-2160/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-bwr-2160/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-skl-guc/igt@kms_psr@primary_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-x1275/igt@kms_psr@primary_page_flip.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>fi-cfl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cfl-guc/igt@kms_psr@sprite_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-userptr:</p>
<ul>
<li>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cml-s/igt@prime_vgem@basic-userptr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3301">i915#3301</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-kbl-x1275:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-x1275/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-r:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-r/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cml-s:           NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cml-s/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-skl-guc:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-skl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fence@basic-await@vecs0:</p>
<ul>
<li>fi-bsw-kefka:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-bsw-kefka/igt@gem_exec_fence@basic-await@vecs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_wait@wait@all:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-bwr-2160/igt@gem_wait@wait@all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-bwr-2160/igt@gem_wait@wait@all.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>{fi-tgl-dsi}:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-tgl-dsi/igt@i915_selftest@live@gt_heartbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>fi-ilk-650:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-ilk-650/igt@kms_busy@basic@modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-ilk-650/igt@kms_busy@basic@modeset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-elk-e7500/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-elk-e7500/igt@kms_cursor_legacy@basic-flip-before-cursor-atomic.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-elk-e7500/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>fi-bwr-2160:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/53">i915#53</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-bwr-2160/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-glk-dsi/igt@i915_module_load@reload.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-glk-dsi/igt@i915_module_load@reload.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@execlists:</p>
<ul>
<li>fi-tgl-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-tgl-u2/igt@i915_selftest@live@execlists.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-tgl-u2/igt@i915_selftest@live@execlists.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3462">i915#3462</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-read:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-elk-e7500/igt@kms_chamelium@dp-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-elk-e7500/igt@kms_chamelium@dp-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>fi-elk-e7500:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-elk-e7500/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-elk-e7500/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3457">i915#3457</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>fi-bdw-5557u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-bdw-5557u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1602">i915#1602</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2029">i915#2029</a>)</p>
</li>
<li>
<p>fi-cml-u2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cml-u2/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2082">i915#2082</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-cfl-guc/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
<li>
<p>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10082/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2426">i915#2426</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20126/fi-kbl-7567u/igt@runner@aborted.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/3363">i915#3363</a>)</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (33 -&gt; 37)</h2>
<p>Additional (7): fi-ehl-1 fi-cml-s fi-bsw-n3050 fi-skl-guc fi-kbl-x1275 fi-ehl-2 fi-kbl-r <br />
  Missing    (3): fi-bdw-samus fi-bsw-cyan bat-jsl-1 </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_10082 -&gt; Patchwork_20126</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_10082: 4da3fba648f557d84a60ce2791dd8e4db5e6225f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_6083: d28aee5c5f528aa6c352c3339f20aaed4d698ffa @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_20126: d0b63ac74ac848ab9605a2b2d05f4d7352d55bda @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>d0b63ac74ac8 drm/i915: Enable atomic by default on ctg/elk<br />
b8ab1f19ab1a drm/i915: Write watermarks for disabled pipes on gmch platforms<br />
4773cf71e9ae drm/i915: Fix pipe gamma enable/disable vs. CxSR on gmch platforms<br />
6a490b6c2a32 drm/i915: Fix g4x/vlv/chv CxSR vs. format/tiling/rotation changes<br />
a41b1d627a0e drm/i915: Add missing invalidate to g4x wm readout<br />
a3367b5e4d61 drm/i915: Simplify up vlv watermark sanitation<br />
a4cb799250ce drm/i915: Simplify up g4x watermark sanitation<br />
fb98ff27a11b drm/i915: Split vlv_compute_pipe_wm() into two<br />
c23ef3138eb5 drm/i915: Split g4x_compute_pipe_wm() into two<br />
bfb4d6ec6ee0 drm/i915: Fix HPLL watermark readout for g4x<br />
727d898dd369 drm/i915: Apply WaUse32BppForSRWM to elk as well as ctg<br />
1461ffb26257 drm/i915: Use u8 consistently for active_planes bitmask<br />
f63e2d07e941 drm/i915: Fix g4x cxsr enable condition<br />
be1c6c460152 drm/i915: s/crtc_state/new_crtc_state/ etc.</p>

</body>
</html>

--===============2013006564011294926==--

--===============0889930427==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0889930427==--
