Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA98302E1C
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 22:41:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECAFF6E15C;
	Mon, 25 Jan 2021 21:41:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 535BE6E0FD;
 Mon, 25 Jan 2021 21:41:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4BE51A73C9;
 Mon, 25 Jan 2021 21:41:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 25 Jan 2021 21:41:36 -0000
Message-ID: <161161089627.3416.8238667546664082716@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210125205401.29505-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210125205401.29505-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLkJBVDogc3VjY2VzcyBmb3IgUmV2?=
 =?utf-8?q?ert_=22mm=3A_fix_initialization_of_struct_page_for_holes_in_mem?=
 =?utf-8?q?ory_layout=22?=
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
Content-Type: multipart/mixed; boundary="===============0447467989=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0447467989==
Content-Type: multipart/alternative;
 boundary="===============8247472518632495462=="

--===============8247472518632495462==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Revert "mm: fix initialization of struct page for holes in memory layout"
URL   : https://patchwork.freedesktop.org/series/86273/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9680 -> Patchwork_19493
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/index.html

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19493:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_psr@cursor_plane_move (NEW):
    - {fi-rkl-11500t}:    NOTRUN -> [SKIP][1] +21 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-rkl-11500t/igt@kms_psr@cursor_plane_move.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - {fi-rkl-11500t}:    NOTRUN -> [SKIP][2] +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-rkl-11500t/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9680 and Patchwork_19493:

### New IGT tests (144) ###

  * igt@amdgpu/amd_basic@cs-compute:
    - Statuses : 34 skip(s)
    - Exec time: [0.0] s

  * igt@amdgpu/amd_basic@cs-gfx:
    - Statuses : 34 skip(s)
    - Exec time: [0.0] s

  * igt@amdgpu/amd_basic@cs-multi-fence:
    - Statuses : 34 skip(s)
    - Exec time: [0.0] s

  * igt@amdgpu/amd_basic@cs-sdma:
    - Statuses : 34 skip(s)
    - Exec time: [0.0] s

  * igt@amdgpu/amd_basic@memory-alloc:
    - Statuses : 34 skip(s)
    - Exec time: [0.0] s

  * igt@amdgpu/amd_basic@query-info:
    - Statuses : 34 skip(s)
    - Exec time: [0.0] s

  * igt@amdgpu/amd_basic@semaphore:
    - Statuses : 34 skip(s)
    - Exec time: [0.0] s

  * igt@amdgpu/amd_basic@userptr:
    - Statuses : 34 skip(s)
    - Exec time: [0.0] s

  * igt@amdgpu/amd_cs_nop@fork-compute0:
    - Statuses : 34 skip(s)
    - Exec time: [0.0] s

  * igt@amdgpu/amd_cs_nop@fork-gfx0:
    - Statuses : 34 skip(s)
    - Exec time: [0.0] s

  * igt@amdgpu/amd_cs_nop@nop-compute0:
    - Statuses : 34 skip(s)
    - Exec time: [0.0] s

  * igt@amdgpu/amd_cs_nop@nop-gfx0:
    - Statuses : 34 skip(s)
    - Exec time: [0.0] s

  * igt@amdgpu/amd_cs_nop@sync-compute0:
    - Statuses : 34 skip(s)
    - Exec time: [0.0] s

  * igt@amdgpu/amd_cs_nop@sync-fork-compute0:
    - Statuses : 34 skip(s)
    - Exec time: [0.0] s

  * igt@amdgpu/amd_cs_nop@sync-fork-gfx0:
    - Statuses : 34 skip(s)
    - Exec time: [0.0] s

  * igt@amdgpu/amd_cs_nop@sync-gfx0:
    - Statuses : 34 skip(s)
    - Exec time: [0.0] s

  * igt@amdgpu/amd_prime@amd-to-i915:
    - Statuses : 34 skip(s)
    - Exec time: [0.0] s

  * igt@amdgpu/amd_prime@i915-to-amd:
    - Statuses : 34 skip(s)
    - Exec time: [0.0] s

  * igt@core_auth@basic-auth:
    - Statuses : 38 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@debugfs_test@read_all_entries:
    - Statuses : 38 pass(s)
    - Exec time: [0.03, 0.54] s

  * igt@fbdev@info:
    - Statuses : 34 pass(s) 4 skip(s)
    - Exec time: [0.0] s

  * igt@gem_basic@bad-close:
    - Statuses : 38 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_basic@create-close:
    - Statuses : 38 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@gem_basic@create-fd-close:
    - Statuses : 38 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_close_race@basic-process:
    - Statuses : 38 pass(s)
    - Exec time: [0.03, 0.33] s

  * igt@gem_close_race@basic-threads:
    - Statuses : 38 pass(s)
    - Exec time: [1.10, 1.60] s

  * igt@gem_ctx_create@basic:
    - Statuses : 37 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_ctx_create@basic-files:
    - Statuses : 37 pass(s) 1 skip(s)
    - Exec time: [0.0, 2.19] s

  * igt@gem_ctx_exec@basic:
    - Statuses : 37 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.04] s

  * igt@gem_exec_create@basic:
    - Statuses : 38 pass(s)
    - Exec time: [2.03, 2.20] s

  * igt@gem_exec_gttfill@basic:
    - Statuses : 31 pass(s) 7 skip(s)
    - Exec time: [0.56, 49.02] s

  * igt@gem_exec_suspend@basic-s3:
    - Statuses : 37 pass(s)
    - Exec time: [1.22, 19.84] s

  * igt@gem_flink_basic@bad-flink:
    - Statuses : 37 pass(s)
    - Exec time: [0.0] s

  * igt@gem_flink_basic@bad-open:
    - Statuses : 37 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_flink_basic@basic:
    - Statuses : 37 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_flink_basic@double-flink:
    - Statuses : 37 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_flink_basic@flink-lifetime:
    - Statuses : 37 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@gem_linear_blits@basic:
    - Statuses : 31 pass(s) 6 skip(s)
    - Exec time: [0.0, 0.06] s

  * igt@gem_mmap@basic:
    - Statuses : 37 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@gem_mmap_gtt@basic:
    - Statuses : 37 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@gem_render_linear_blits@basic:
    - Statuses : 37 pass(s)
    - Exec time: [0.02, 0.22] s

  * igt@gem_render_tiled_blits@basic:
    - Statuses : 1 fail(s) 36 pass(s)
    - Exec time: [0.02, 0.28] s

  * igt@gem_sync@basic-all:
    - Statuses : 37 pass(s)
    - Exec time: [2.02, 4.41] s

  * igt@gem_sync@basic-each:
    - Statuses : 37 pass(s)
    - Exec time: [2.06, 3.52] s

  * igt@gem_tiled_blits@basic:
    - Statuses : 31 pass(s) 6 skip(s)
    - Exec time: [0.0, 0.13] s

  * igt@gem_tiled_fence_blits@basic:
    - Statuses : 37 pass(s)
    - Exec time: [0.01, 0.10] s

  * igt@gem_tiled_pread_basic:
    - Statuses : 37 pass(s)
    - Exec time: [0.18, 2.48] s

  * igt@i915_getparams_basic@basic-eu-total:
    - Statuses : 37 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@i915_getparams_basic@basic-subslice-total:
    - Statuses : 37 pass(s)
    - Exec time: [0.0] s

  * igt@i915_hangman@error-state-basic:
    - Statuses : 1 dmesg-warn(s) 36 pass(s)
    - Exec time: [0.00, 0.24] s

  * igt@i915_module_load@reload:
    - Statuses : 35 pass(s)
    - Exec time: [1.36, 15.66] s

  * igt@kms_addfb_basic@addfb25-bad-modifier:
    - Statuses : 36 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
    - Statuses : 1 dmesg-warn(s) 35 pass(s)
    - Exec time: [0.0] s

  * igt@kms_addfb_basic@addfb25-modifier-no-flag:
    - Statuses : 36 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_addfb_basic@bad-pitch-0:
    - Statuses : 36 pass(s)
    - Exec time: [0.0] s

  * igt@kms_addfb_basic@bad-pitch-1024:
    - Statuses : 36 pass(s)
    - Exec time: [0.0] s

  * igt@kms_addfb_basic@bad-pitch-128:
    - Statuses : 36 pass(s)
    - Exec time: [0.0] s

  * igt@kms_addfb_basic@bad-pitch-256:
    - Statuses : 36 pass(s)
    - Exec time: [0.0] s

  * igt@kms_addfb_basic@bad-pitch-32:
    - Statuses : 36 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_addfb_basic@bad-pitch-63:
    - Statuses : 36 pass(s)
    - Exec time: [0.0] s

  * igt@kms_addfb_basic@bad-pitch-65536:
    - Statuses : 36 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_addfb_basic@bad-pitch-999:
    - Statuses : 36 pass(s)
    - Exec time: [0.0] s

  * igt@kms_addfb_basic@basic:
    - Statuses : 36 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_addfb_basic@bo-too-small:
    - Statuses : 36 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - Statuses : 36 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_addfb_basic@clobberred-modifier:
    - Statuses : 36 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - Statuses : 36 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_addfb_basic@invalid-get-prop:
    - Statuses : 36 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_addfb_basic@invalid-get-prop-any:
    - Statuses : 36 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_addfb_basic@invalid-set-prop:
    - Statuses : 36 pass(s)
    - Exec time: [0.0] s

  * igt@kms_addfb_basic@invalid-set-prop-any:
    - Statuses : 36 pass(s)
    - Exec time: [0.0] s

  * igt@kms_addfb_basic@no-handle:
    - Statuses : 36 pass(s)
    - Exec time: [0.0] s

  * igt@kms_addfb_basic@size-max:
    - Statuses : 36 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@kms_addfb_basic@small-bo:
    - Statuses : 36 pass(s)
    - Exec time: [0.0] s

  * igt@kms_addfb_basic@tile-pitch-mismatch:
    - Statuses : 36 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_addfb_basic@too-high:
    - Statuses : 36 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@kms_addfb_basic@too-wide:
    - Statuses : 36 pass(s)
    - Exec time: [0.0] s

  * igt@kms_addfb_basic@unused-handle:
    - Statuses : 36 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_addfb_basic@unused-modifier:
    - Statuses : 36 pass(s)
    - Exec time: [0.0] s

  * igt@kms_addfb_basic@unused-offsets:
    - Statuses : 36 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_addfb_basic@unused-pitches:
    - Statuses : 36 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_chamelium@common-hpd-after-suspend:
    - Statuses : 4 pass(s) 31 skip(s)
    - Exec time: [0.0, 18.03] s

  * igt@kms_chamelium@dp-crc-fast:
    - Statuses : 3 pass(s) 32 skip(s)
    - Exec time: [0.0, 16.15] s

  * igt@kms_chamelium@dp-edid-read:
    - Statuses : 3 pass(s) 32 skip(s)
    - Exec time: [0.0, 3.77] s

  * igt@kms_chamelium@dp-hpd-fast:
    - Statuses : 3 pass(s) 33 skip(s)
    - Exec time: [0.0, 3.69] s

  * igt@kms_chamelium@hdmi-crc-fast:
    - Statuses : 3 pass(s) 32 skip(s)
    - Exec time: [0.0, 9.37] s

  * igt@kms_chamelium@hdmi-edid-read:
    - Statuses : 3 pass(s) 32 skip(s)
    - Exec time: [0.0, 3.85] s

  * igt@kms_chamelium@hdmi-hpd-fast:
    - Statuses : 3 pass(s) 32 skip(s)
    - Exec time: [0.0, 6.92] s

  * igt@kms_chamelium@vga-edid-read:
    - Statuses : 35 skip(s)
    - Exec time: [0.0] s

  * igt@kms_chamelium@vga-hpd-fast:
    - Statuses : 35 skip(s)
    - Exec time: [0.0] s

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - Statuses : 30 pass(s) 5 skip(s)
    - Exec time: [0.00, 2.21] s

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - Statuses : 32 pass(s) 3 skip(s)
    - Exec time: [0.00, 2.18] s

  * igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:
    - Statuses : 30 pass(s) 5 skip(s)
    - Exec time: [0.0, 2.18] s

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - Statuses : 32 pass(s) 3 skip(s)
    - Exec time: [0.0, 2.18] s

  * igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:
    - Statuses : 32 pass(s) 3 skip(s)
    - Exec time: [0.0, 2.15] s

  * igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:
    - Statuses : 30 pass(s) 5 skip(s)
    - Exec time: [0.0, 2.18] s

  * igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:
    - Statuses : 32 pass(s) 3 skip(s)
    - Exec time: [0.0, 2.17] s

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - Statuses : 32 pass(s) 3 skip(s)
    - Exec time: [0.0, 2.16] s

  * igt@kms_flip@basic-flip-vs-dpms:
    - Statuses : 3 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_flip@basic-flip-vs-modeset:
    - Statuses : 3 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_flip@basic-flip-vs-wf_vblank:
    - Statuses : 3 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_flip@basic-plain-flip:
    - Statuses : 3 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_force_connector_basic@force-connector-state:
    - Statuses : 35 pass(s)
    - Exec time: [0.13, 9.93] s

  * igt@kms_force_connector_basic@force-edid:
    - Statuses : 35 pass(s)
    - Exec time: [0.02, 0.94] s

  * igt@kms_force_connector_basic@force-load-detect:
    - Statuses : 8 pass(s) 27 skip(s)
    - Exec time: [0.0, 0.39] s

  * igt@kms_force_connector_basic@prune-stale-modes:
    - Statuses : 35 pass(s)
    - Exec time: [0.01, 1.02] s

  * igt@kms_frontbuffer_tracking@basic:
    - Statuses : 30 pass(s) 5 skip(s)
    - Exec time: [0.0, 13.16] s

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - Statuses : 31 pass(s) 4 skip(s)
    - Exec time: [0.0, 3.71] s

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:
    - Statuses : 31 pass(s) 4 skip(s)
    - Exec time: [0.0, 1.83] s

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:
    - Statuses : 31 pass(s) 4 skip(s)
    - Exec time: [0.0, 1.88] s

  * igt@kms_pipe_crc_basic@read-crc-pipe-a:
    - Statuses : 31 pass(s) 4 skip(s)
    - Exec time: [0.0, 1.81] s

  * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
    - Statuses : 31 pass(s) 4 skip(s)
    - Exec time: [0.0, 1.93] s

  * igt@kms_pipe_crc_basic@read-crc-pipe-b:
    - Statuses : 31 pass(s) 4 skip(s)
    - Exec time: [0.0, 4.20] s

  * igt@kms_pipe_crc_basic@read-crc-pipe-c:
    - Statuses : 25 pass(s) 10 skip(s)
    - Exec time: [0.0, 3.61] s

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - Statuses : 31 pass(s) 4 skip(s)
    - Exec time: [0.0, 18.56] s

  * igt@kms_psr@cursor_plane_move:
    - Statuses : 8 pass(s) 27 skip(s)
    - Exec time: [0.0, 3.56] s

  * igt@kms_psr@primary_mmap_gtt:
    - Statuses : 8 pass(s) 27 skip(s)
    - Exec time: [0.0, 4.81] s

  * igt@kms_psr@primary_page_flip:
    - Statuses : 8 pass(s) 27 skip(s)
    - Exec time: [0.0, 3.59] s

  * igt@kms_psr@sprite_plane_onoff:
    - Statuses : 8 pass(s) 27 skip(s)
    - Exec time: [0.0, 3.94] s

  * igt@kms_setmode@basic-clone-single-crtc:
    - Statuses : 35 pass(s)
    - Exec time: [0.0, 0.72] s

  * igt@prime_self_import@basic-llseek-bad:
    - Statuses : 35 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@prime_self_import@basic-llseek-size:
    - Statuses : 35 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@prime_self_import@basic-with_fd_dup:
    - Statuses : 35 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@prime_self_import@basic-with_one_bo:
    - Statuses : 35 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@prime_self_import@basic-with_one_bo_two_files:
    - Statuses : 35 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@prime_self_import@basic-with_two_bos:
    - Statuses : 1 dmesg-warn(s) 34 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@prime_vgem@basic-fence-flip:
    - Statuses : 29 pass(s) 6 skip(s)
    - Exec time: [0.12, 6.58] s

  * igt@prime_vgem@basic-fence-mmap:
    - Statuses : 35 pass(s)
    - Exec time: [0.02, 0.30] s

  * igt@prime_vgem@basic-fence-read:
    - Statuses : 35 pass(s)
    - Exec time: [0.05, 0.67] s

  * igt@prime_vgem@basic-gtt:
    - Statuses : 35 pass(s)
    - Exec time: [0.01, 0.11] s

  * igt@prime_vgem@basic-read:
    - Statuses : 35 pass(s)
    - Exec time: [0.02, 0.33] s

  * igt@prime_vgem@basic-write:
    - Statuses : 35 pass(s)
    - Exec time: [0.02, 0.36] s

  * igt@runner@aborted:
    - Statuses : 2 fail(s)
    - Exec time: [0.0] s

  * igt@vgem_basic@create:
    - Statuses : 35 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@vgem_basic@debugfs:
    - Statuses : 35 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@vgem_basic@dmabuf-export:
    - Statuses : 35 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@vgem_basic@dmabuf-fence:
    - Statuses : 35 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@vgem_basic@dmabuf-fence-before:
    - Statuses : 35 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@vgem_basic@dmabuf-mmap:
    - Statuses : 35 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@vgem_basic@mmap:
    - Statuses : 35 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@vgem_basic@second-client:
    - Statuses : 35 pass(s)
    - Exec time: [0.00, 0.12] s

  * igt@vgem_basic@setversion:
    - Statuses : 35 pass(s)
    - Exec time: [0.0] s

  * igt@vgem_basic@sysfs:
    - Statuses : 35 pass(s)
    - Exec time: [0.0, 0.03] s

  * igt@vgem_basic@unload:
    - Statuses : 35 pass(s)
    - Exec time: [0.11, 0.71] s

  

Known issues
------------

  Here are the changes found in Patchwork_19493 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@amdgpu/amd_basic@query-info (NEW):
    - fi-bsw-kefka:       NOTRUN -> [SKIP][3] ([fdo#109271]) +31 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html

  * igt@amdgpu/amd_cs_nop@sync-fork-gfx0 (NEW):
    - fi-skl-6600u:       NOTRUN -> [SKIP][4] ([fdo#109271]) +20 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-skl-6600u/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html

  * igt@gem_exec_fence@basic-busy@bcs0:
    - fi-kbl-soraka:      NOTRUN -> [SKIP][5] ([fdo#109271]) +23 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html

  * igt@gem_huc_copy@huc-copy:
    - fi-skl-6600u:       NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#2190])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html

  * igt@i915_selftest@live@gt_heartbeat:
    - fi-glk-dsi:         [PASS][8] -> [DMESG-FAIL][9] ([i915#2291] / [i915#541])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/fi-glk-dsi/igt@i915_selftest@live@gt_heartbeat.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-glk-dsi/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@gt_pm:
    - fi-kbl-soraka:      NOTRUN -> [DMESG-FAIL][10] ([i915#1886] / [i915#2291])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling (NEW):
    - fi-tgl-y:           [PASS][11] -> [DMESG-WARN][12] ([i915#402]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/fi-tgl-y/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-tgl-y/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html

  * igt@kms_chamelium@common-hpd-after-suspend (NEW):
    - fi-kbl-soraka:      NOTRUN -> [SKIP][13] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html
    - {fi-rkl-11500t}:    NOTRUN -> [SKIP][14] ([fdo#111827]) +8 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-rkl-11500t/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@dp-hpd-fast (NEW):
    - {fi-cml-drallion}:  NOTRUN -> [SKIP][15] ([fdo#111827])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-cml-drallion/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_chamelium@hdmi-edid-read (NEW):
    - fi-bsw-kefka:       NOTRUN -> [SKIP][16] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-bsw-kefka/igt@kms_chamelium@hdmi-edid-read.html

  * igt@kms_chamelium@vga-edid-read (NEW):
    - fi-skl-6600u:       NOTRUN -> [SKIP][17] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_force_connector_basic@force-load-detect (NEW):
    - {fi-rkl-11500t}:    NOTRUN -> [SKIP][18] ([fdo#109285])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-rkl-11500t/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - fi-skl-6600u:       NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#533])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - fi-kbl-soraka:      NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#533])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  
#### Possible fixes ####

  * igt@prime_vgem@basic-fence-flip (NEW):
    - fi-tgl-y:           [DMESG-WARN][21] ([i915#402]) -> [PASS][22] +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1208]: https://gitlab.freedesktop.org/drm/intel/issues/1208
  [i915#1886]: https://gitlab.freedesktop.org/drm/intel/issues/1886
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2291]: https://gitlab.freedesktop.org/drm/intel/issues/2291
  [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#541]: https://gitlab.freedesktop.org/drm/intel/issues/541


Participating hosts (39 -> 40)
------------------------------

  Additional (5): fi-kbl-soraka fi-rkl-11500t fi-bsw-kefka fi-cml-drallion fi-skl-6600u 
  Missing    (4): fi-ctg-p8600 fi-jsl-1 fi-ilk-m540 fi-hsw-4200u 


Build changes
-------------

  * Linux: CI_DRM_9680 -> Patchwork_19493

  CI-20190529: 20190529
  CI_DRM_9680: 9e03236ed9687144929d42404341384cc1e501b7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5971: abef2b7d6ff30f3b948b3e5d39653debb73083f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_19493: 81298c749450e9b97074c55498ce69737e419cdd @ git://anongit.freedesktop.org/gfx-ci/linux


== Linux commits ==

81298c749450 Revert "mm: fix initialization of struct page for holes in memory layout"

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/index.html

--===============8247472518632495462==
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
<tr><td><b>Series:</b></td><td>Revert &quot;mm: fix initialization of struct page for holes in memory layout&quot;</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86273/">https://patchwork.freedesktop.org/series/86273/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9680 -&gt; Patchwork_19493</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/index.html</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19493:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_psr@cursor_plane_move (NEW):<ul>
<li>{fi-rkl-11500t}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-rkl-11500t/igt@kms_psr@cursor_plane_move.html">SKIP</a> +21 similar issues</li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:<ul>
<li>{fi-rkl-11500t}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-rkl-11500t/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9680 and Patchwork_19493:</p>
<h3>New IGT tests (144)</h3>
<ul>
<li>
<p>igt@amdgpu/amd_basic@cs-compute:</p>
<ul>
<li>Statuses : 34 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@cs-gfx:</p>
<ul>
<li>Statuses : 34 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@cs-multi-fence:</p>
<ul>
<li>Statuses : 34 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@cs-sdma:</p>
<ul>
<li>Statuses : 34 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@memory-alloc:</p>
<ul>
<li>Statuses : 34 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@query-info:</p>
<ul>
<li>Statuses : 34 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@semaphore:</p>
<ul>
<li>Statuses : 34 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_basic@userptr:</p>
<ul>
<li>Statuses : 34 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-compute0:</p>
<ul>
<li>Statuses : 34 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@fork-gfx0:</p>
<ul>
<li>Statuses : 34 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@nop-compute0:</p>
<ul>
<li>Statuses : 34 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@nop-gfx0:</p>
<ul>
<li>Statuses : 34 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-compute0:</p>
<ul>
<li>Statuses : 34 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-compute0:</p>
<ul>
<li>Statuses : 34 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-gfx0:</p>
<ul>
<li>Statuses : 34 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-gfx0:</p>
<ul>
<li>Statuses : 34 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_prime@amd-to-i915:</p>
<ul>
<li>Statuses : 34 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_prime@i915-to-amd:</p>
<ul>
<li>Statuses : 34 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>Statuses : 38 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>Statuses : 38 pass(s)</li>
<li>Exec time: [0.03, 0.54] s</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>Statuses : 34 pass(s) 4 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_basic@bad-close:</p>
<ul>
<li>Statuses : 38 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_basic@create-close:</p>
<ul>
<li>Statuses : 38 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_basic@create-fd-close:</p>
<ul>
<li>Statuses : 38 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@basic-process:</p>
<ul>
<li>Statuses : 38 pass(s)</li>
<li>Exec time: [0.03, 0.33] s</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@basic-threads:</p>
<ul>
<li>Statuses : 38 pass(s)</li>
<li>Exec time: [1.10, 1.60] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_create@basic:</p>
<ul>
<li>Statuses : 37 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>Statuses : 37 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 2.19] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic:</p>
<ul>
<li>Statuses : 37 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@basic:</p>
<ul>
<li>Statuses : 38 pass(s)</li>
<li>Exec time: [2.03, 2.20] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>Statuses : 31 pass(s) 7 skip(s)</li>
<li>Exec time: [0.56, 49.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>Statuses : 37 pass(s)</li>
<li>Exec time: [1.22, 19.84] s</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@bad-flink:</p>
<ul>
<li>Statuses : 37 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@bad-open:</p>
<ul>
<li>Statuses : 37 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@basic:</p>
<ul>
<li>Statuses : 37 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@double-flink:</p>
<ul>
<li>Statuses : 37 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@flink-lifetime:</p>
<ul>
<li>Statuses : 37 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>Statuses : 31 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 0.06] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>Statuses : 37 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>Statuses : 37 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_linear_blits@basic:</p>
<ul>
<li>Statuses : 37 pass(s)</li>
<li>Exec time: [0.02, 0.22] s</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>Statuses : 1 fail(s) 36 pass(s)</li>
<li>Exec time: [0.02, 0.28] s</li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-all:</p>
<ul>
<li>Statuses : 37 pass(s)</li>
<li>Exec time: [2.02, 4.41] s</li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-each:</p>
<ul>
<li>Statuses : 37 pass(s)</li>
<li>Exec time: [2.06, 3.52] s</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>Statuses : 31 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0, 0.13] s</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_fence_blits@basic:</p>
<ul>
<li>Statuses : 37 pass(s)</li>
<li>Exec time: [0.01, 0.10] s</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic:</p>
<ul>
<li>Statuses : 37 pass(s)</li>
<li>Exec time: [0.18, 2.48] s</li>
</ul>
</li>
<li>
<p>igt@i915_getparams_basic@basic-eu-total:</p>
<ul>
<li>Statuses : 37 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@i915_getparams_basic@basic-subslice-total:</p>
<ul>
<li>Statuses : 37 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@error-state-basic:</p>
<ul>
<li>Statuses : 1 dmesg-warn(s) 36 pass(s)</li>
<li>Exec time: [0.00, 0.24] s</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload:</p>
<ul>
<li>Statuses : 35 pass(s)</li>
<li>Exec time: [1.36, 15.66] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-bad-modifier:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:</p>
<ul>
<li>Statuses : 1 dmesg-warn(s) 35 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-modifier-no-flag:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-0:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-1024:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-128:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-256:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-32:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-63:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-65536:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bad-pitch-999:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@clobberred-modifier:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-get-prop:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-get-prop-any:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-set-prop:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-set-prop-any:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@no-handle:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@size-max:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@small-bo:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@tile-pitch-mismatch:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@too-high:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@too-wide:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@unused-handle:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@unused-modifier:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@unused-offsets:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@unused-pitches:</p>
<ul>
<li>Statuses : 36 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>Statuses : 4 pass(s) 31 skip(s)</li>
<li>Exec time: [0.0, 18.03] s</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-fast:</p>
<ul>
<li>Statuses : 3 pass(s) 32 skip(s)</li>
<li>Exec time: [0.0, 16.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-edid-read:</p>
<ul>
<li>Statuses : 3 pass(s) 32 skip(s)</li>
<li>Exec time: [0.0, 3.77] s</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>Statuses : 3 pass(s) 33 skip(s)</li>
<li>Exec time: [0.0, 3.69] s</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>Statuses : 3 pass(s) 32 skip(s)</li>
<li>Exec time: [0.0, 9.37] s</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read:</p>
<ul>
<li>Statuses : 3 pass(s) 32 skip(s)</li>
<li>Exec time: [0.0, 3.85] s</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-fast:</p>
<ul>
<li>Statuses : 3 pass(s) 32 skip(s)</li>
<li>Exec time: [0.0, 6.92] s</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>Statuses : 35 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-fast:</p>
<ul>
<li>Statuses : 35 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>Statuses : 30 pass(s) 5 skip(s)</li>
<li>Exec time: [0.00, 2.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>Statuses : 32 pass(s) 3 skip(s)</li>
<li>Exec time: [0.00, 2.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-atomic:</p>
<ul>
<li>Statuses : 30 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 2.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>Statuses : 32 pass(s) 3 skip(s)</li>
<li>Exec time: [0.0, 2.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-varying-size:</p>
<ul>
<li>Statuses : 32 pass(s) 3 skip(s)</li>
<li>Exec time: [0.0, 2.15] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-atomic:</p>
<ul>
<li>Statuses : 30 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 2.18] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-legacy:</p>
<ul>
<li>Statuses : 32 pass(s) 3 skip(s)</li>
<li>Exec time: [0.0, 2.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>Statuses : 32 pass(s) 3 skip(s)</li>
<li>Exec time: [0.0, 2.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>Statuses : 3 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-modeset:</p>
<ul>
<li>Statuses : 3 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-wf_vblank:</p>
<ul>
<li>Statuses : 3 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip:</p>
<ul>
<li>Statuses : 3 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-connector-state:</p>
<ul>
<li>Statuses : 35 pass(s)</li>
<li>Exec time: [0.13, 9.93] s</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>Statuses : 35 pass(s)</li>
<li>Exec time: [0.02, 0.94] s</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>Statuses : 8 pass(s) 27 skip(s)</li>
<li>Exec time: [0.0, 0.39] s</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>Statuses : 35 pass(s)</li>
<li>Exec time: [0.01, 1.02] s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>Statuses : 30 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 13.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:</p>
<ul>
<li>Statuses : 31 pass(s) 4 skip(s)</li>
<li>Exec time: [0.0, 3.71] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a:</p>
<ul>
<li>Statuses : 31 pass(s) 4 skip(s)</li>
<li>Exec time: [0.0, 1.83] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-a-frame-sequence:</p>
<ul>
<li>Statuses : 31 pass(s) 4 skip(s)</li>
<li>Exec time: [0.0, 1.88] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-a:</p>
<ul>
<li>Statuses : 31 pass(s) 4 skip(s)</li>
<li>Exec time: [0.0, 1.81] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:</p>
<ul>
<li>Statuses : 31 pass(s) 4 skip(s)</li>
<li>Exec time: [0.0, 1.93] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-b:</p>
<ul>
<li>Statuses : 31 pass(s) 4 skip(s)</li>
<li>Exec time: [0.0, 4.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-c:</p>
<ul>
<li>Statuses : 25 pass(s) 10 skip(s)</li>
<li>Exec time: [0.0, 3.61] s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>Statuses : 31 pass(s) 4 skip(s)</li>
<li>Exec time: [0.0, 18.56] s</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_plane_move:</p>
<ul>
<li>Statuses : 8 pass(s) 27 skip(s)</li>
<li>Exec time: [0.0, 3.56] s</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_mmap_gtt:</p>
<ul>
<li>Statuses : 8 pass(s) 27 skip(s)</li>
<li>Exec time: [0.0, 4.81] s</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>Statuses : 8 pass(s) 27 skip(s)</li>
<li>Exec time: [0.0, 3.59] s</li>
</ul>
</li>
<li>
<p>igt@kms_psr@sprite_plane_onoff:</p>
<ul>
<li>Statuses : 8 pass(s) 27 skip(s)</li>
<li>Exec time: [0.0, 3.94] s</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>Statuses : 35 pass(s)</li>
<li>Exec time: [0.0, 0.72] s</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-llseek-bad:</p>
<ul>
<li>Statuses : 35 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-llseek-size:</p>
<ul>
<li>Statuses : 35 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_fd_dup:</p>
<ul>
<li>Statuses : 35 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo:</p>
<ul>
<li>Statuses : 35 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_one_bo_two_files:</p>
<ul>
<li>Statuses : 35 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@prime_self_import@basic-with_two_bos:</p>
<ul>
<li>Statuses : 1 dmesg-warn(s) 34 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>Statuses : 29 pass(s) 6 skip(s)</li>
<li>Exec time: [0.12, 6.58] s</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>Statuses : 35 pass(s)</li>
<li>Exec time: [0.02, 0.30] s</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>Statuses : 35 pass(s)</li>
<li>Exec time: [0.05, 0.67] s</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>Statuses : 35 pass(s)</li>
<li>Exec time: [0.01, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>Statuses : 35 pass(s)</li>
<li>Exec time: [0.02, 0.33] s</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>Statuses : 35 pass(s)</li>
<li>Exec time: [0.02, 0.36] s</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>Statuses : 2 fail(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@create:</p>
<ul>
<li>Statuses : 35 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@debugfs:</p>
<ul>
<li>Statuses : 35 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-export:</p>
<ul>
<li>Statuses : 35 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-fence:</p>
<ul>
<li>Statuses : 35 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-fence-before:</p>
<ul>
<li>Statuses : 35 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@dmabuf-mmap:</p>
<ul>
<li>Statuses : 35 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@mmap:</p>
<ul>
<li>Statuses : 35 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@second-client:</p>
<ul>
<li>Statuses : 35 pass(s)</li>
<li>Exec time: [0.00, 0.12] s</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@setversion:</p>
<ul>
<li>Statuses : 35 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@sysfs:</p>
<ul>
<li>Statuses : 35 pass(s)</li>
<li>Exec time: [0.0, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@unload:</p>
<ul>
<li>Statuses : 35 pass(s)</li>
<li>Exec time: [0.11, 0.71] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19493 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@amdgpu/amd_basic@query-info (NEW):</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-bsw-kefka/igt@amdgpu/amd_basic@query-info.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +31 similar issues</li>
</ul>
</li>
<li>
<p>igt@amdgpu/amd_cs_nop@sync-fork-gfx0 (NEW):</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-skl-6600u/igt@amdgpu/amd_cs_nop@sync-fork-gfx0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +20 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy@bcs0:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-kbl-soraka/igt@gem_exec_fence@basic-busy@bcs0.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-skl-6600u/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-kbl-soraka/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>fi-glk-dsi:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/fi-glk-dsi/igt@i915_selftest@live@gt_heartbeat.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-glk-dsi/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/541">i915#541</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_pm:</p>
<ul>
<li>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-kbl-soraka/igt@i915_selftest@live@gt_pm.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1886">i915#1886</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2291">i915#2291</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling (NEW):</p>
<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/fi-tgl-y/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-tgl-y/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend (NEW):</p>
<ul>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-kbl-soraka/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
<li>
<p>{fi-rkl-11500t}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-rkl-11500t/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast (NEW):</p>
<ul>
<li>{fi-cml-drallion}:  NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-cml-drallion/igt@kms_chamelium@dp-hpd-fast.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-read (NEW):</p>
<ul>
<li>fi-bsw-kefka:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-bsw-kefka/igt@kms_chamelium@hdmi-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read (NEW):</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-skl-6600u/igt@kms_chamelium@vga-edid-read.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://bugs.freedesktop.org/show_bug.cgi?id=111827">fdo#111827</a>) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect (NEW):</p>
<ul>
<li>{fi-rkl-11500t}:    NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-rkl-11500t/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109285">fdo#109285</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>
<p>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-skl-6600u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
<li>
<p>fi-kbl-soraka:      NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/533">i915#533</a>)</p>
</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>igt@prime_vgem@basic-fence-flip (NEW):<ul>
<li>fi-tgl-y:           <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9680/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/402">i915#402</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/fi-tgl-y/igt@prime_vgem@basic-fence-flip.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (39 -&gt; 40)</h2>
<p>Additional (5): fi-kbl-soraka fi-rkl-11500t fi-bsw-kefka fi-cml-drallion fi-skl-6600u <br />
  Missing    (4): fi-ctg-p8600 fi-jsl-1 fi-ilk-m540 fi-hsw-4200u </p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_9680 -&gt; Patchwork_19493</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9680: 9e03236ed9687144929d42404341384cc1e501b7 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_5971: abef2b7d6ff30f3b948b3e5d39653debb73083f3 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_19493: 81298c749450e9b97074c55498ce69737e419cdd @ git://anongit.freedesktop.org/gfx-ci/linux</p>
<p>== Linux commits ==</p>
<p>81298c749450 Revert "mm: fix initialization of struct page for holes in memory layout"</p>

</body>
</html>

--===============8247472518632495462==--

--===============0447467989==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0447467989==--
