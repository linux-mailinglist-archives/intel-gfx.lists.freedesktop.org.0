Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D214C9046
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 17:28:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14D7510E65F;
	Tue,  1 Mar 2022 16:27:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0F3E710E641;
 Tue,  1 Mar 2022 16:27:56 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E701FA77A5;
 Tue,  1 Mar 2022 16:27:55 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1185602264356153706=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 01 Mar 2022 16:27:55 -0000
Message-ID: <164615207592.8599.5585280117178267025@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220228123607.580432-1-matthew.auld@intel.com>
In-Reply-To: <20220228123607.580432-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/4=5D_drm/i915/ttm=3A_make_eviction_?=
 =?utf-8?q?mappable_aware?=
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

--===============1185602264356153706==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/4] drm/i915/ttm: make eviction mappable aware
URL   : https://patchwork.freedesktop.org/series/100818/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11299_full -> Patchwork_22433_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (13 -> 13)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22433_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-25@pipe-a-edp-1-downscale-with-pixel-format}:
    - shard-iclb:         NOTRUN -> [SKIP][1] +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb8/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-25@pipe-a-edp-1-downscale-with-pixel-format.html

  * {igt@kms_plane_scaling@downscale-with-rotation-factor-0-75@pipe-b-edp-1-downscale-with-rotation}:
    - {shard-rkl}:        NOTRUN -> [SKIP][2] +8 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-rkl-6/igt@kms_plane_scaling@downscale-with-rotation-factor-0-75@pipe-b-edp-1-downscale-with-rotation.html

  * {igt@kms_plane_scaling@scaler-with-rotation-unity-scaling@pipe-d-hdmi-a-3-scaler-with-rotation}:
    - {shard-dg1}:        NOTRUN -> [SKIP][3] +3 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-dg1-18/igt@kms_plane_scaling@scaler-with-rotation-unity-scaling@pipe-d-hdmi-a-3-scaler-with-rotation.html

  
New tests
---------

  New tests have been introduced between CI_DRM_11299_full and Patchwork_22433_full:

### New IGT tests (1756) ###

  * igt@core_auth@basic-auth:
    - Statuses : 9 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@core_auth@many-magics:
    - Statuses : 7 pass(s)
    - Exec time: [0.14, 1.87] s

  * igt@core_getclient:
    - Statuses : 9 pass(s)
    - Exec time: [0.05, 0.47] s

  * igt@core_getstats:
    - Statuses : 6 pass(s)
    - Exec time: [0.03, 0.50] s

  * igt@core_getversion:
    - Statuses :
    - Exec time: [None] s

  * igt@core_setmaster_vs_auth:
    - Statuses :
    - Exec time: [None] s

  * igt@debugfs_test@read_all_entries:
    - Statuses : 10 pass(s)
    - Exec time: [0.04, 0.86] s

  * igt@debugfs_test@read_all_entries_display_off:
    - Statuses : 8 pass(s)
    - Exec time: [0.05, 3.04] s

  * igt@debugfs_test@read_all_entries_display_on:
    - Statuses : 6 pass(s)
    - Exec time: [0.12, 1.31] s

  * igt@drm_import_export@flink:
    - Statuses : 1 fail(s) 9 pass(s)
    - Exec time: [0.01, 10.76] s

  * igt@drm_import_export@import-close-race-flink:
    - Statuses : 10 pass(s)
    - Exec time: [10.74, 10.75] s

  * igt@drm_import_export@import-close-race-prime:
    - Statuses : 9 pass(s)
    - Exec time: [10.74] s

  * igt@drm_import_export@prime:
    - Statuses : 1 fail(s) 9 pass(s)
    - Exec time: [0.01, 10.75] s

  * igt@drm_read@empty-block:
    - Statuses : 4 pass(s) 1 skip(s)
    - Exec time: [0.0, 1.00] s

  * igt@drm_read@empty-nonblock:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@drm_read@fault-buffer:
    - Statuses :
    - Exec time: [None] s

  * igt@drm_read@invalid-buffer:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@drm_read@short-buffer-block:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@drm_read@short-buffer-nonblock:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@dumb_buffer@create-clear:
    - Statuses : 10 pass(s)
    - Exec time: [33.66, 44.99] s

  * igt@dumb_buffer@create-valid-dumb:
    - Statuses : 10 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@dumb_buffer@invalid-bpp:
    - Statuses :
    - Exec time: [None] s

  * igt@dumb_buffer@map-invalid-size:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@dumb_buffer@map-uaf:
    - Statuses :
    - Exec time: [None] s

  * igt@dumb_buffer@map-valid:
    - Statuses : 9 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@fbdev@info:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_bad_reloc@negative-reloc-bltcopy:
    - Statuses : 4 pass(s)
    - Exec time: [0.33, 3.56] s

  * igt@gem_basic@bad-close:
    - Statuses : 10 pass(s)
    - Exec time: [0.0] s

  * igt@gem_basic@create-close:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_basic@create-fd-close:
    - Statuses : 9 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_blits@basic:
    - Statuses : 6 pass(s)
    - Exec time: [1.68, 48.59] s

  * igt@gem_busy@close-race:
    - Statuses : 6 pass(s)
    - Exec time: [22.08, 28.31] s

  * igt@gem_caching@read-writes:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 45.17] s

  * igt@gem_caching@reads:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 13.72] s

  * igt@gem_caching@writes:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 32.22] s

  * igt@gem_close@basic:
    - Statuses : 9 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_close@many-handles-one-vma:
    - Statuses : 6 pass(s)
    - Exec time: [0.02, 0.33] s

  * igt@gem_close_race@basic-process:
    - Statuses : 4 pass(s)
    - Exec time: [0.03, 0.11] s

  * igt@gem_close_race@basic-threads:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_create@create-invalid-size:
    - Statuses : 9 pass(s)
    - Exec time: [0.0] s

  * igt@gem_create@create-massive:
    - Statuses : 10 dmesg-warn(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_create@create-valid-nonaligned:
    - Statuses : 5 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_ctx_bad_destroy@double-destroy:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_ctx_bad_destroy@invalid-ctx:
    - Statuses : 6 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_bad_destroy@invalid-default-ctx:
    - Statuses : 5 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_bad_destroy@invalid-pad:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_ctx_create@basic:
    - Statuses : 9 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_ctx_create@basic-files:
    - Statuses : 7 pass(s)
    - Exec time: [2.01, 2.12] s

  * igt@gem_ctx_exec@basic:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@gem_ctx_exec@basic-invalid-context:
    - Statuses : 10 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@gem_ctx_freq@sysfs:
    - Statuses : 5 pass(s)
    - Exec time: [4.78, 5.30] s

  * igt@gem_ctx_param@basic:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_ctx_param@basic-default:
    - Statuses : 10 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@get-priority-new-ctx:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_ctx_param@invalid-ctx-get:
    - Statuses : 9 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@invalid-ctx-set:
    - Statuses : 10 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_ctx_param@invalid-param-get:
    - Statuses : 4 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_ctx_param@invalid-param-set:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@invalid-size-get:
    - Statuses : 5 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_ctx_param@invalid-size-set:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_ctx_param@non-root-set:
    - Statuses : 5 pass(s)
    - Exec time: [0.01, 0.11] s

  * igt@gem_ctx_param@root-set:
    - Statuses : 10 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_ctx_param@set-priority-invalid-size:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@set-priority-not-supported:
    - Statuses : 1 pass(s) 4 skip(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@set-priority-range:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.25] s

  * igt@gem_ctx_persistence@many-contexts:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 34.29] s

  * igt@gem_eio@banned:
    - Statuses : 11 pass(s)
    - Exec time: [0.07, 0.58] s

  * igt@gem_eio@execbuf:
    - Statuses : 9 pass(s)
    - Exec time: [0.02, 0.20] s

  * igt@gem_eio@hibernate:
    - Statuses : 8 pass(s) 1 skip(s)
    - Exec time: [0.00, 20.78] s

  * igt@gem_eio@in-flight-10ms:
    - Statuses : 9 pass(s)
    - Exec time: [0.79, 3.44] s

  * igt@gem_eio@in-flight-1us:
    - Statuses : 9 pass(s)
    - Exec time: [0.71, 3.32] s

  * igt@gem_eio@in-flight-contexts-10ms:
    - Statuses : 4 pass(s) 1 timeout(s)
    - Exec time: [1.99, 120.28] s

  * igt@gem_eio@in-flight-contexts-1us:
    - Statuses : 8 pass(s)
    - Exec time: [1.11, 3.59] s

  * igt@gem_eio@in-flight-contexts-immediate:
    - Statuses : 6 pass(s)
    - Exec time: [1.98, 7.83] s

  * igt@gem_eio@in-flight-external:
    - Statuses : 10 pass(s)
    - Exec time: [0.03, 0.42] s

  * igt@gem_eio@in-flight-immediate:
    - Statuses : 9 pass(s)
    - Exec time: [0.77, 3.36] s

  * igt@gem_eio@in-flight-internal-10ms:
    - Statuses : 9 pass(s)
    - Exec time: [0.04, 0.30] s

  * igt@gem_eio@in-flight-internal-1us:
    - Statuses : 9 pass(s)
    - Exec time: [0.03, 0.43] s

  * igt@gem_eio@in-flight-internal-immediate:
    - Statuses : 10 pass(s)
    - Exec time: [0.03, 0.45] s

  * igt@gem_eio@in-flight-suspend:
    - Statuses : 9 pass(s)
    - Exec time: [7.10, 15.40] s

  * igt@gem_eio@reset-stress:
    - Statuses : 10 pass(s)
    - Exec time: [27.81, 39.90] s

  * igt@gem_eio@suspend:
    - Statuses : 1 fail(s) 9 pass(s)
    - Exec time: [10.91, 15.35] s

  * igt@gem_eio@throttle:
    - Statuses : 9 pass(s)
    - Exec time: [0.02, 0.17] s

  * igt@gem_eio@unwedge-stress:
    - Statuses : 1 fail(s) 7 pass(s)
    - Exec time: [12.11, 43.91] s

  * igt@gem_eio@wait-10ms:
    - Statuses : 7 pass(s)
    - Exec time: [0.04, 0.31] s

  * igt@gem_eio@wait-1us:
    - Statuses : 10 pass(s)
    - Exec time: [0.03, 0.33] s

  * igt@gem_eio@wait-immediate:
    - Statuses : 9 pass(s)
    - Exec time: [0.03, 0.28] s

  * igt@gem_eio@wait-wedge-10ms:
    - Statuses : 10 pass(s)
    - Exec time: [0.04, 0.97] s

  * igt@gem_eio@wait-wedge-1us:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_eio@wait-wedge-immediate:
    - Statuses : 9 pass(s)
    - Exec time: [0.03, 0.29] s

  * igt@gem_exec_await@wide-all:
    - Statuses : 7 pass(s)
    - Exec time: [21.96, 26.09] s

  * igt@gem_exec_await@wide-contexts:
    - Statuses : 9 pass(s)
    - Exec time: [21.71, 24.18] s

  * igt@gem_exec_balancer@bonded-chain:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_balancer@bonded-semaphore:
    - Statuses : 8 pass(s) 2 skip(s)
    - Exec time: [0.0, 14.01] s

  * igt@gem_exec_balancer@hang:
    - Statuses : 8 pass(s) 1 skip(s)
    - Exec time: [0.0, 12.99] s

  * igt@gem_exec_capture@userptr:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 1.39] s

  * igt@gem_exec_create@basic:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_fence@basic-busy-all:
    - Statuses : 7 pass(s)
    - Exec time: [0.02, 0.07] s

  * igt@gem_exec_fence@basic-wait-all:
    - Statuses : 7 pass(s)
    - Exec time: [0.02, 0.08] s

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - Statuses : 4 pass(s) 5 skip(s)
    - Exec time: [0.0, 6.65] s

  * igt@gem_exec_flush@basic-batch-kernel-default-uc:
    - Statuses : 8 pass(s)
    - Exec time: [5.58, 8.68] s

  * igt@gem_exec_flush@basic-batch-kernel-default-wb:
    - Statuses : 7 pass(s)
    - Exec time: [5.50, 6.12] s

  * igt@gem_exec_flush@basic-uc-pro-default:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.79] s

  * igt@gem_exec_flush@basic-uc-prw-default:
    - Statuses : 6 pass(s)
    - Exec time: [5.42, 5.79] s

  * igt@gem_exec_flush@basic-uc-ro-default:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_flush@basic-uc-rw-default:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_flush@basic-uc-set-default:
    - Statuses : 7 pass(s)
    - Exec time: [5.41, 5.75] s

  * igt@gem_exec_flush@basic-wb-pro-default:
    - Statuses : 7 pass(s)
    - Exec time: [5.41, 5.81] s

  * igt@gem_exec_flush@basic-wb-prw-default:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.80] s

  * igt@gem_exec_flush@basic-wb-ro-before-default:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.78] s

  * igt@gem_exec_flush@basic-wb-ro-default:
    - Statuses : 7 pass(s)
    - Exec time: [5.41, 5.76] s

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - Statuses : 6 pass(s)
    - Exec time: [5.42, 5.77] s

  * igt@gem_exec_flush@basic-wb-rw-default:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_flush@basic-wb-set-default:
    - Statuses : 8 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.78] s

  * igt@gem_exec_gttfill@basic:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [3.66, 30.35] s

  * igt@gem_exec_nop@basic-parallel:
    - Statuses : 10 pass(s)
    - Exec time: [2.79, 3.61] s

  * igt@gem_exec_nop@basic-sequential:
    - Statuses : 10 pass(s)
    - Exec time: [2.78, 3.35] s

  * igt@gem_exec_nop@basic-series:
    - Statuses : 9 pass(s)
    - Exec time: [2.77, 3.30] s

  * igt@gem_exec_parallel@contexts:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_params@batch-first:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_exec_params@cliprects-invalid:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@cliprects_ptr-dirt:
    - Statuses : 9 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@dr1-dirt:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@dr4-dirt:
    - Statuses : 9 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@invalid-bsd-ring:
    - Statuses : 9 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@gem_exec_params@invalid-bsd1-flag-on-blt:
    - Statuses : 9 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@invalid-bsd1-flag-on-render:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@invalid-bsd1-flag-on-vebox:
    - Statuses : 8 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@invalid-bsd2-flag-on-blt:
    - Statuses : 9 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@invalid-bsd2-flag-on-render:
    - Statuses : 10 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@invalid-bsd2-flag-on-vebox:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@invalid-fence-in:
    - Statuses : 10 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@invalid-flag:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@invalid-ring:
    - Statuses : 10 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@invalid-ring2:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@no-blt:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec_params@no-bsd:
    - Statuses : 10 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec_params@no-vebox:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec_params@rel-constants-invalid:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@rel-constants-invalid-rel-gen5:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@rel-constants-invalid-ring:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@rs-invalid:
    - Statuses : 5 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_exec_params@rsvd2-dirt:
    - Statuses : 6 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec_params@secure-non-master:
    - Statuses : 9 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec_params@secure-non-root:
    - Statuses : 5 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@sol-reset-invalid:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_params@sol-reset-not-gen7:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_reloc@basic-active:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec_reloc@basic-cpu:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_reloc@basic-cpu-active:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_reloc@basic-cpu-gtt:
    - Statuses : 7 pass(s)
    - Exec time: [0.01, 0.12] s

  * igt@gem_exec_reloc@basic-cpu-gtt-active:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.23] s

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.04] s

  * igt@gem_exec_reloc@basic-cpu-noreloc:
    - Statuses : 5 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@gem_exec_reloc@basic-cpu-read:
    - Statuses : 4 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_exec_reloc@basic-cpu-read-active:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.21] s

  * igt@gem_exec_reloc@basic-cpu-read-noreloc:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_exec_reloc@basic-cpu-wc:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.07] s

  * igt@gem_exec_reloc@basic-cpu-wc-active:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.22] s

  * igt@gem_exec_reloc@basic-cpu-wc-noreloc:
    - Statuses : 8 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.06] s

  * igt@gem_exec_reloc@basic-gtt:
    - Statuses : 8 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.09] s

  * igt@gem_exec_reloc@basic-gtt-active:
    - Statuses : 6 pass(s)
    - Exec time: [0.11, 0.23] s

  * igt@gem_exec_reloc@basic-gtt-cpu:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.08] s

  * igt@gem_exec_reloc@basic-gtt-cpu-active:
    - Statuses : 10 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.21] s

  * igt@gem_exec_reloc@basic-gtt-cpu-noreloc:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@gem_exec_reloc@basic-gtt-noreloc:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@gem_exec_reloc@basic-gtt-read:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.10] s

  * igt@gem_exec_reloc@basic-gtt-read-active:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_reloc@basic-gtt-read-noreloc:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.03] s

  * igt@gem_exec_reloc@basic-gtt-wc:
    - Statuses : 4 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@gem_exec_reloc@basic-gtt-wc-active:
    - Statuses : 7 pass(s)
    - Exec time: [0.11, 0.23] s

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@gem_exec_reloc@basic-range:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_reloc@basic-range-active:
    - Statuses : 7 pass(s)
    - Exec time: [0.02, 0.41] s

  * igt@gem_exec_reloc@basic-softpin:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.02] s

  * igt@gem_exec_reloc@basic-wc:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.07] s

  * igt@gem_exec_reloc@basic-wc-active:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.26] s

  * igt@gem_exec_reloc@basic-wc-cpu:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.08] s

  * igt@gem_exec_reloc@basic-wc-cpu-active:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.22] s

  * igt@gem_exec_reloc@basic-wc-cpu-noreloc:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@gem_exec_reloc@basic-wc-gtt:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.09] s

  * igt@gem_exec_reloc@basic-wc-gtt-active:
    - Statuses : 8 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.22] s

  * igt@gem_exec_reloc@basic-wc-gtt-noreloc:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_reloc@basic-wc-noreloc:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@gem_exec_reloc@basic-wc-read:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.08] s

  * igt@gem_exec_reloc@basic-wc-read-active:
    - Statuses : 6 pass(s)
    - Exec time: [0.11, 0.21] s

  * igt@gem_exec_reloc@basic-wc-read-noreloc:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.03] s

  * igt@gem_exec_reloc@basic-write-cpu:
    - Statuses : 5 pass(s)
    - Exec time: [0.00, 0.08] s

  * igt@gem_exec_reloc@basic-write-cpu-active:
    - Statuses : 8 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.25] s

  * igt@gem_exec_reloc@basic-write-cpu-noreloc:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_exec_reloc@basic-write-gtt:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.09] s

  * igt@gem_exec_reloc@basic-write-gtt-active:
    - Statuses : 6 pass(s)
    - Exec time: [0.11, 0.22] s

  * igt@gem_exec_reloc@basic-write-gtt-noreloc:
    - Statuses : 5 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@gem_exec_reloc@basic-write-read:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.06] s

  * igt@gem_exec_reloc@basic-write-read-active:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.22] s

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - Statuses : 9 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@gem_exec_reloc@basic-write-wc:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_reloc@basic-write-wc-active:
    - Statuses : 5 pass(s)
    - Exec time: [0.11, 0.25] s

  * igt@gem_exec_reloc@basic-write-wc-noreloc:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@gem_exec_schedule@smoketest-all:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 32.59] s

  * igt@gem_exec_suspend@basic-s3:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_suspend@basic-s4-devices:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_fence_thrash@bo-copy:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.00, 1.82] s

  * igt@gem_fence_thrash@bo-write-verify-none:
    - Statuses : 8 pass(s) 1 skip(s)
    - Exec time: [0.00, 1.32] s

  * igt@gem_fence_thrash@bo-write-verify-threaded-none:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_fence_thrash@bo-write-verify-x:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.00, 1.34] s

  * igt@gem_fence_thrash@bo-write-verify-y:
    - Statuses : 6 pass(s)
    - Exec time: [1.12, 1.51] s

  * igt@gem_fenced_exec_thrash@2-spare-fences:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 2.21] s

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - Statuses : 7 pass(s)
    - Exec time: [2.15, 2.27] s

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
    - Statuses : 6 pass(s)
    - Exec time: [2.16, 2.21] s

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
    - Statuses : 9 pass(s)
    - Exec time: [2.17, 2.22] s

  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
    - Statuses : 7 pass(s)
    - Exec time: [2.15, 2.21] s

  * igt@gem_fenced_exec_thrash@too-many-fences:
    - Statuses : 7 pass(s)
    - Exec time: [2.15, 2.55] s

  * igt@gem_flink_basic@bad-flink:
    - Statuses : 10 pass(s)
    - Exec time: [0.0] s

  * igt@gem_flink_basic@bad-open:
    - Statuses : 9 pass(s)
    - Exec time: [0.0] s

  * igt@gem_flink_basic@basic:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_flink_basic@double-flink:
    - Statuses : 9 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_flink_basic@flink-lifetime:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@gem_flink_race@flink_close:
    - Statuses : 11 pass(s)
    - Exec time: [5.02, 5.05] s

  * igt@gem_flink_race@flink_name:
    - Statuses : 6 pass(s)
    - Exec time: [5.37, 5.38] s

  * igt@gem_gtt_cpu_tlb:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.05, 0.54] s

  * igt@gem_linear_blits@basic:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.02] s

  * igt@gem_linear_blits@interruptible:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 20.96] s

  * igt@gem_linear_blits@normal:
    - Statuses : 4 pass(s) 1 skip(s)
    - Exec time: [0.0, 22.33] s

  * igt@gem_madvise@dontneed-after-mmap:
    - Statuses : 9 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@gem_madvise@dontneed-before-exec:
    - Statuses : 8 pass(s) 2 skip(s)
    - Exec time: [0.0, 0.02] s

  * igt@gem_madvise@dontneed-before-mmap:
    - Statuses : 10 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@gem_madvise@dontneed-before-pwrite:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_mmap@bad-object:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_mmap@basic:
    - Statuses : 8 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_mmap@basic-small-bo:
    - Statuses : 9 pass(s)
    - Exec time: [0.33, 4.64] s

  * igt@gem_mmap@big-bo:
    - Statuses : 8 pass(s) 1 skip(s)
    - Exec time: [0.0, 1.92] s

  * igt@gem_mmap@short-mmap:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_mmap_gtt@basic:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_mmap_gtt@basic-copy:
    - Statuses : 8 pass(s)
    - Exec time: [0.17, 1.36] s

  * igt@gem_mmap_gtt@basic-read:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.12] s

  * igt@gem_mmap_gtt@basic-read-write:
    - Statuses : 7 pass(s)
    - Exec time: [0.01, 0.04] s

  * igt@gem_mmap_gtt@basic-read-write-distinct:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.05] s

  * igt@gem_mmap_gtt@basic-short:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_gtt@basic-small-bo:
    - Statuses : 6 pass(s)
    - Exec time: [0.18, 1.65] s

  * igt@gem_mmap_gtt@basic-small-bo-tiledx:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 1.57] s

  * igt@gem_mmap_gtt@basic-small-bo-tiledy:
    - Statuses : 6 pass(s)
    - Exec time: [0.14, 1.24] s

  * igt@gem_mmap_gtt@basic-small-copy:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_gtt@basic-small-copy-odd:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 7.15] s

  * igt@gem_mmap_gtt@basic-small-copy-xy:
    - Statuses : 5 pass(s)
    - Exec time: [0.50, 3.92] s

  * igt@gem_mmap_gtt@basic-wc:
    - Statuses : 8 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.65] s

  * igt@gem_mmap_gtt@basic-write:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.44] s

  * igt@gem_mmap_gtt@basic-write-cpu-read-gtt:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 0.41] s

  * igt@gem_mmap_gtt@basic-write-gtt:
    - Statuses : 4 pass(s)
    - Exec time: [0.13, 0.77] s

  * igt@gem_mmap_gtt@basic-write-read:
    - Statuses : 7 pass(s)
    - Exec time: [0.01, 0.05] s

  * igt@gem_mmap_gtt@basic-write-read-distinct:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.07] s

  * igt@gem_mmap_gtt@big-bo:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.66] s

  * igt@gem_mmap_gtt@big-bo-tiledx:
    - Statuses : 7 pass(s)
    - Exec time: [0.15, 1.50] s

  * igt@gem_mmap_gtt@big-bo-tiledy:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.02] s

  * igt@gem_mmap_gtt@big-copy:
    - Statuses : 8 pass(s)
    - Exec time: [1.94, 21.30] s

  * igt@gem_mmap_gtt@big-copy-odd:
    - Statuses : 7 pass(s)
    - Exec time: [1.70, 12.18] s

  * igt@gem_mmap_gtt@big-copy-xy:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 15.50] s

  * igt@gem_mmap_gtt@coherency:
    - Statuses : 2 pass(s) 4 skip(s)
    - Exec time: [0.0, 0.72] s

  * igt@gem_mmap_gtt@fault-concurrent:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 5.77] s

  * igt@gem_mmap_gtt@hang:
    - Statuses : 7 pass(s)
    - Exec time: [5.43, 5.82] s

  * igt@gem_mmap_gtt@medium-copy:
    - Statuses : 8 pass(s) 1 skip(s)
    - Exec time: [0.0, 10.83] s

  * igt@gem_mmap_gtt@medium-copy-odd:
    - Statuses : 6 pass(s)
    - Exec time: [0.94, 6.30] s

  * igt@gem_mmap_gtt@medium-copy-xy:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_gtt@zero-extend:
    - Statuses : 8 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_mmap_offset@bad-extensions:
    - Statuses : 10 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_mmap_offset@bad-flags:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_mmap_offset@bad-object:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@basic-uaf:
    - Statuses : 10 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@gem_mmap_offset@clear:
    - Statuses : 9 pass(s)
    - Exec time: [24.39, 41.33] s

  * igt@gem_mmap_offset@close-race:
    - Statuses : 10 pass(s)
    - Exec time: [20.03, 20.68] s

  * igt@gem_mmap_offset@isolation:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@gem_mmap_offset@open-flood:
    - Statuses : 10 pass(s)
    - Exec time: [21.48, 21.84] s

  * igt@gem_mmap_offset@pf-nonblock:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_wc@close:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.24] s

  * igt@gem_mmap_wc@coherency:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_wc@copy:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.51] s

  * igt@gem_mmap_wc@fault-concurrent:
    - Statuses : 9 pass(s) 1 skip(s)
    - Exec time: [0.0, 1.94] s

  * igt@gem_mmap_wc@invalid-flags:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_wc@read:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_wc@read-write:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@gem_mmap_wc@read-write-distinct:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.04] s

  * igt@gem_mmap_wc@set-cache-level:
    - Statuses : 8 pass(s) 2 skip(s)
    - Exec time: [0.0, 0.01] s

  * igt@gem_mmap_wc@write:
    - Statuses : 7 pass(s)
    - Exec time: [0.04, 0.31] s

  * igt@gem_mmap_wc@write-cpu-read-wc:
    - Statuses : 5 pass(s)
    - Exec time: [0.10, 0.36] s

  * igt@gem_mmap_wc@write-cpu-read-wc-unflushed:
    - Statuses :
    - Exec time: [None] s

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/index.html

--===============1185602264356153706==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/4] drm/i915/ttm: make eviction mappable aware</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/100818/">https://patchwork.freedesktop.org/series/100818/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11299_full -&gt; Patchwork_22433_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (13 -&gt; 13)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_22433_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>{igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-25@pipe-a-edp-1-downscale-with-pixel-format}:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-iclb8/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-25@pipe-a-edp-1-downscale-with-pixel-format.html">SKIP</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_plane_scaling@downscale-with-rotation-factor-0-75@pipe-b-edp-1-downscale-with-rotation}:</p>
<ul>
<li>{shard-rkl}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-rkl-6/igt@kms_plane_scaling@downscale-with-rotation-factor-0-75@pipe-b-edp-1-downscale-with-rotation.html">SKIP</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_plane_scaling@scaler-with-rotation-unity-scaling@pipe-d-hdmi-a-3-scaler-with-rotation}:</p>
<ul>
<li>{shard-dg1}:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22433/shard-dg1-18/igt@kms_plane_scaling@scaler-with-rotation-unity-scaling@pipe-d-hdmi-a-3-scaler-with-rotation.html">SKIP</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_11299_full and Patchwork_22433_full:</p>
<h3>New IGT tests (1756)</h3>
<ul>
<li>
<p>igt@core_auth@basic-auth:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@core_auth@many-magics:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.14, 1.87] s</li>
</ul>
</li>
<li>
<p>igt@core_getclient:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.05, 0.47] s</li>
</ul>
</li>
<li>
<p>igt@core_getstats:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.03, 0.50] s</li>
</ul>
</li>
<li>
<p>igt@core_getversion:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@core_setmaster_vs_auth:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [0.04, 0.86] s</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries_display_off:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.05, 3.04] s</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries_display_on:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.12, 1.31] s</li>
</ul>
</li>
<li>
<p>igt@drm_import_export@flink:</p>
<ul>
<li>Statuses : 1 fail(s) 9 pass(s)</li>
<li>Exec time: [0.01, 10.76] s</li>
</ul>
</li>
<li>
<p>igt@drm_import_export@import-close-race-flink:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [10.74, 10.75] s</li>
</ul>
</li>
<li>
<p>igt@drm_import_export@import-close-race-prime:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [10.74] s</li>
</ul>
</li>
<li>
<p>igt@drm_import_export@prime:</p>
<ul>
<li>Statuses : 1 fail(s) 9 pass(s)</li>
<li>Exec time: [0.01, 10.75] s</li>
</ul>
</li>
<li>
<p>igt@drm_read@empty-block:</p>
<ul>
<li>Statuses : 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 1.00] s</li>
</ul>
</li>
<li>
<p>igt@drm_read@empty-nonblock:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_read@fault-buffer:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@drm_read@invalid-buffer:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_read@short-buffer-block:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@drm_read@short-buffer-nonblock:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@dumb_buffer@create-clear:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [33.66, 44.99] s</li>
</ul>
</li>
<li>
<p>igt@dumb_buffer@create-valid-dumb:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@dumb_buffer@invalid-bpp:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@dumb_buffer@map-invalid-size:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@dumb_buffer@map-uaf:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@dumb_buffer@map-valid:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@fbdev@info:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-bltcopy:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.33, 3.56] s</li>
</ul>
</li>
<li>
<p>igt@gem_basic@bad-close:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_basic@create-close:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_basic@create-fd-close:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_blits@basic:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [1.68, 48.59] s</li>
</ul>
</li>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [22.08, 28.31] s</li>
</ul>
</li>
<li>
<p>igt@gem_caching@read-writes:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 45.17] s</li>
</ul>
</li>
<li>
<p>igt@gem_caching@reads:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 13.72] s</li>
</ul>
</li>
<li>
<p>igt@gem_caching@writes:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 32.22] s</li>
</ul>
</li>
<li>
<p>igt@gem_close@basic:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_close@many-handles-one-vma:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.02, 0.33] s</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@basic-process:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.03, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@basic-threads:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-invalid-size:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>Statuses : 10 dmesg-warn(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-valid-nonaligned:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_bad_destroy@double-destroy:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_bad_destroy@invalid-ctx:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_bad_destroy@invalid-default-ctx:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_bad_destroy@invalid-pad:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_create@basic:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_create@basic-files:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [2.01, 2.12] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-invalid-context:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_freq@sysfs:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [4.78, 5.30] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@basic:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@basic-default:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@get-priority-new-ctx:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@invalid-ctx-get:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@invalid-ctx-set:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@invalid-param-get:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@invalid-param-set:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@invalid-size-get:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@invalid-size-set:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@non-root-set:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.01, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@root-set:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-invalid-size:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>Statuses : 1 pass(s) 4 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-range:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.25] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 34.29] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@banned:</p>
<ul>
<li>Statuses : 11 pass(s)</li>
<li>Exec time: [0.07, 0.58] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@execbuf:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.02, 0.20] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>Statuses : 8 pass(s) 1 skip(s)</li>
<li>Exec time: [0.00, 20.78] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-10ms:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.79, 3.44] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-1us:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.71, 3.32] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>Statuses : 4 pass(s) 1 timeout(s)</li>
<li>Exec time: [1.99, 120.28] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [1.11, 3.59] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [1.98, 7.83] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-external:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [0.03, 0.42] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-immediate:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.77, 3.36] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-internal-10ms:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.04, 0.30] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-internal-1us:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.03, 0.43] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-internal-immediate:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [0.03, 0.45] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [7.10, 15.40] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [27.81, 39.90] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>Statuses : 1 fail(s) 9 pass(s)</li>
<li>Exec time: [10.91, 15.35] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@throttle:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.02, 0.17] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>Statuses : 1 fail(s) 7 pass(s)</li>
<li>Exec time: [12.11, 43.91] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-10ms:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.04, 0.31] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-1us:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [0.03, 0.33] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-immediate:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.03, 0.28] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-wedge-10ms:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [0.04, 0.97] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-wedge-1us:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-wedge-immediate:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.03, 0.29] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_await@wide-all:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [21.96, 26.09] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_await@wide-contexts:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [21.71, 24.18] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-chain:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-semaphore:</p>
<ul>
<li>Statuses : 8 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 14.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hang:</p>
<ul>
<li>Statuses : 8 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 12.99] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@userptr:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 1.39] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@basic:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy-all:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.02, 0.07] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait-all:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.02, 0.08] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>Statuses : 4 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0, 6.65] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-uc:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [5.58, 8.68] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-wb:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [5.50, 6.12] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 5.79] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [5.42, 5.79] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-ro-default:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-rw-default:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-set-default:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [5.41, 5.75] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-pro-default:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [5.41, 5.81] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-prw-default:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 5.80] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-before-default:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 5.78] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-default:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [5.41, 5.76] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [5.42, 5.77] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-default:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-set-default:</p>
<ul>
<li>Statuses : 8 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 5.78] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@basic:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [3.66, 30.35] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_nop@basic-parallel:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [2.79, 3.61] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_nop@basic-sequential:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [2.78, 3.35] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_nop@basic-series:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [2.77, 3.30] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@contexts:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@batch-first:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@cliprects-invalid:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@cliprects_ptr-dirt:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@dr1-dirt:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@dr4-dirt:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-bsd-ring:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-bsd1-flag-on-blt:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-bsd1-flag-on-render:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-bsd1-flag-on-vebox:</p>
<ul>
<li>Statuses : 8 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-bsd2-flag-on-blt:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-bsd2-flag-on-render:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-bsd2-flag-on-vebox:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-fence-in:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-flag:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-ring:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-ring2:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-blt:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-bsd:</p>
<ul>
<li>Statuses : 10 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-vebox:</p>
<ul>
<li>Statuses : 1 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rel-constants-invalid:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rel-constants-invalid-rel-gen5:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rel-constants-invalid-ring:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rs-invalid:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>Statuses : 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>Statuses : 9 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>Statuses : 5 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@sol-reset-invalid:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@sol-reset-not-gen7:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-active:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-active:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.01, 0.12] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-active:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.23] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-noreloc:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-active:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.21] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-noreloc:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-wc:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.07] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-wc-active:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.22] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-wc-noreloc:</p>
<ul>
<li>Statuses : 8 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.06] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt:</p>
<ul>
<li>Statuses : 8 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.09] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-active:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.11, 0.23] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.08] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-active:</p>
<ul>
<li>Statuses : 10 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.21] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-noreloc:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-noreloc:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.10] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-active:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-noreloc:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-active:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.11, 0.23] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-range:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-range-active:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.02, 0.41] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-softpin:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.07] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-active:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.26] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.08] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu-active:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.22] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu-noreloc:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.09] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt-active:</p>
<ul>
<li>Statuses : 8 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.22] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt-noreloc:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-noreloc:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.08] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-active:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.11, 0.21] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-noreloc:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.00, 0.08] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu-active:</p>
<ul>
<li>Statuses : 8 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.25] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu-noreloc:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.09] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-active:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.11, 0.22] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-noreloc:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.06] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.22] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-active:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.11, 0.25] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-noreloc:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@smoketest-all:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 32.59] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.00, 1.82] s</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-none:</p>
<ul>
<li>Statuses : 8 pass(s) 1 skip(s)</li>
<li>Exec time: [0.00, 1.32] s</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-threaded-none:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-x:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.00, 1.34] s</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-y:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [1.12, 1.51] s</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@2-spare-fences:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 2.21] s</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [2.15, 2.27] s</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [2.16, 2.21] s</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [2.17, 2.22] s</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [2.15, 2.21] s</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@too-many-fences:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [2.15, 2.55] s</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@bad-flink:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@bad-open:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@basic:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@double-flink:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_flink_basic@flink-lifetime:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_flink_race@flink_close:</p>
<ul>
<li>Statuses : 11 pass(s)</li>
<li>Exec time: [5.02, 5.05] s</li>
</ul>
</li>
<li>
<p>igt@gem_flink_race@flink_name:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [5.37, 5.38] s</li>
</ul>
</li>
<li>
<p>igt@gem_gtt_cpu_tlb:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.05, 0.54] s</li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@basic:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@interruptible:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 20.96] s</li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@normal:</p>
<ul>
<li>Statuses : 4 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 22.33] s</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-after-mmap:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-exec:</p>
<ul>
<li>Statuses : 8 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-mmap:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-pwrite:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-object:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>Statuses : 8 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic-small-bo:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [0.33, 4.64] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@big-bo:</p>
<ul>
<li>Statuses : 8 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 1.92] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@short-mmap:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-copy:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.17, 1.36] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-read:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.12] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-read-write:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.01, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-read-write-distinct:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-short:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-bo:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.18, 1.65] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-bo-tiledx:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 1.57] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-bo-tiledy:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.14, 1.24] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-copy:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-copy-odd:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 7.15] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-copy-xy:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.50, 3.92] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-wc:</p>
<ul>
<li>Statuses : 8 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.65] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.44] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write-cpu-read-gtt:</p>
<ul>
<li>Statuses : 6 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 0.41] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write-gtt:</p>
<ul>
<li>Statuses : 4 pass(s)</li>
<li>Exec time: [0.13, 0.77] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write-read:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.01, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write-read-distinct:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.07] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-bo:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 5.66] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-bo-tiledx:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.15, 1.50] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-bo-tiledy:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 5.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [1.94, 21.30] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [1.70, 12.18] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-xy:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 15.50] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>Statuses : 2 pass(s) 4 skip(s)</li>
<li>Exec time: [0.0, 0.72] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 5.77] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@hang:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [5.43, 5.82] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy:</p>
<ul>
<li>Statuses : 8 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 10.83] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-odd:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.94, 6.30] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-xy:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@zero-extend:</p>
<ul>
<li>Statuses : 8 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@bad-extensions:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@bad-flags:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@bad-object:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@basic-uaf:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>Statuses : 9 pass(s)</li>
<li>Exec time: [24.39, 41.33] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@close-race:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [20.03, 20.68] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@isolation:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@open-flood:</p>
<ul>
<li>Statuses : 10 pass(s)</li>
<li>Exec time: [21.48, 21.84] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@pf-nonblock:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@close:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.24] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@coherency:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@copy:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.51] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@fault-concurrent:</p>
<ul>
<li>Statuses : 9 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 1.94] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@invalid-flags:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read-write:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read-write-distinct:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>Statuses : 8 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.04, 0.31] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-cpu-read-wc:</p>
<ul>
<li>Statuses : 5 pass(s)</li>
<li>Exec time: [0.10, 0.36] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-cpu-read-wc-unflushed:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
</ul>

</body>
</html>

--===============1185602264356153706==--
