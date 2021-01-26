Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EA7303211
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 03:46:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D524899A7;
	Tue, 26 Jan 2021 02:46:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3EA8A89991;
 Tue, 26 Jan 2021 02:46:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 31450A47DF;
 Tue, 26 Jan 2021 02:46:47 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Tue, 26 Jan 2021 02:46:47 -0000
Message-ID: <161162920719.9812.5609716214058413985@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210125205401.29505-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210125205401.29505-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgUmV2?=
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
Content-Type: multipart/mixed; boundary="===============0000747549=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0000747549==
Content-Type: multipart/alternative;
 boundary="===============7702248968824859563=="

--===============7702248968824859563==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Revert "mm: fix initialization of struct page for holes in memory layout"
URL   : https://patchwork.freedesktop.org/series/86273/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9680_full -> Patchwork_19493_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19493_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19493_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19493_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_userptr_blits@input-checking (NEW):
    - shard-skl:          NOTRUN -> [DMESG-WARN][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/shard-skl2/igt@gem_userptr_blits@input-checking.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * {igt@gem_create@create-massive}:
    - shard-skl:          NOTRUN -> [DMESG-WARN][2]
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/shard-skl1/igt@gem_create@create-massive.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9680_full and Patchwork_19493_full:

### New IGT tests (1666) ###

  * igt@core_auth@many-magics:
    - Statuses : 7 pass(s)
    - Exec time: [0.15, 3.48] s

  * igt@core_getclient:
    - Statuses : 8 pass(s)
    - Exec time: [0.07, 0.59] s

  * igt@core_getstats:
    - Statuses : 7 pass(s)
    - Exec time: [0.07, 0.55] s

  * igt@core_getversion:
    - Statuses : 8 pass(s)
    - Exec time: [0.07, 0.58] s

  * igt@core_setmaster_vs_auth:
    - Statuses : 8 pass(s)
    - Exec time: [0.06, 0.59] s

  * igt@debugfs_test@read_all_entries_display_off:
    - Statuses : 8 pass(s)
    - Exec time: [0.09, 1.16] s

  * igt@debugfs_test@read_all_entries_display_on:
    - Statuses :
    - Exec time: [None] s

  * igt@drm_import_export@flink:
    - Statuses : 8 pass(s)
    - Exec time: [10.74, 10.75] s

  * igt@drm_import_export@import-close-race-flink:
    - Statuses : 8 pass(s)
    - Exec time: [10.74, 10.75] s

  * igt@drm_import_export@import-close-race-prime:
    - Statuses : 8 pass(s)
    - Exec time: [10.74] s

  * igt@drm_import_export@prime:
    - Statuses : 7 pass(s)
    - Exec time: [10.74, 10.75] s

  * igt@drm_read@empty-block:
    - Statuses : 2 pass(s)
    - Exec time: [1.0, 1.00] s

  * igt@drm_read@empty-nonblock:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@drm_read@fault-buffer:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@drm_read@invalid-buffer:
    - Statuses : 8 pass(s)
    - Exec time: [0.0] s

  * igt@drm_read@short-buffer-block:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@drm_read@short-buffer-nonblock:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@dumb_buffer@create-clear:
    - Statuses : 8 pass(s)
    - Exec time: [37.08, 57.85] s

  * igt@dumb_buffer@create-valid-dumb:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@dumb_buffer@invalid-bpp:
    - Statuses : 8 pass(s)
    - Exec time: [0.0] s

  * igt@dumb_buffer@map-invalid-size:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@dumb_buffer@map-uaf:
    - Statuses : 7 pass(s)
    - Exec time: [0.02, 0.10] s

  * igt@dumb_buffer@map-valid:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@gem_bad_reloc@negative-reloc-bltcopy:
    - Statuses : 8 pass(s)
    - Exec time: [0.38, 14.62] s

  * igt@gem_blits@basic:
    - Statuses : 8 pass(s)
    - Exec time: [1.45, 46.18] s

  * igt@gem_busy@close-race:
    - Statuses : 6 pass(s)
    - Exec time: [21.70, 22.38] s

  * igt@gem_caching@read-writes:
    - Statuses : 8 pass(s)
    - Exec time: [4.43, 42.01] s

  * igt@gem_caching@reads:
    - Statuses : 8 pass(s)
    - Exec time: [0.66, 11.80] s

  * igt@gem_caching@writes:
    - Statuses : 8 pass(s)
    - Exec time: [2.28, 28.72] s

  * igt@gem_close@basic:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_close@many-handles-one-vma:
    - Statuses : 8 pass(s)
    - Exec time: [0.02, 0.36] s

  * igt@gem_create@create-invalid-size:
    - Statuses : 8 pass(s)
    - Exec time: [0.0] s

  * igt@gem_create@create-valid-nonaligned:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_ctx_bad_destroy@double-destroy:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_ctx_bad_destroy@invalid-ctx:
    - Statuses : 8 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_bad_destroy@invalid-default-ctx:
    - Statuses : 8 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_bad_destroy@invalid-pad:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@gem_ctx_exec@basic-invalid-context:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@gem_ctx_freq@sysfs:
    - Statuses : 8 pass(s)
    - Exec time: [4.81, 5.28] s

  * igt@gem_ctx_param@basic:
    - Statuses : 8 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@basic-default:
    - Statuses : 8 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@get-priority-new-ctx:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_ctx_param@invalid-ctx-get:
    - Statuses : 8 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@invalid-ctx-set:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@invalid-param-get:
    - Statuses : 8 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@invalid-param-set:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@invalid-size-get:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@invalid-size-set:
    - Statuses : 8 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@non-root-set:
    - Statuses : 7 pass(s)
    - Exec time: [0.01, 0.13] s

  * igt@gem_ctx_param@non-root-set-no-zeromap:
    - Statuses : 7 pass(s)
    - Exec time: [0.01, 0.14] s

  * igt@gem_ctx_param@root-set:
    - Statuses : 8 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@root-set-no-zeromap-disabled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@root-set-no-zeromap-enabled:
    - Statuses : 8 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@set-priority-invalid-size:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@set-priority-not-supported:
    - Statuses : 2 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@set-priority-range:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 0.07] s

  * igt@gem_eio@banned:
    - Statuses : 8 pass(s)
    - Exec time: [0.06, 0.46] s

  * igt@gem_eio@execbuf:
    - Statuses : 8 pass(s)
    - Exec time: [0.02, 0.13] s

  * igt@gem_eio@hibernate:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.07, 15.19] s

  * igt@gem_eio@in-flight-10ms:
    - Statuses : 8 pass(s)
    - Exec time: [0.44, 3.43] s

  * igt@gem_eio@in-flight-1us:
    - Statuses : 8 pass(s)
    - Exec time: [0.42, 3.50] s

  * igt@gem_eio@in-flight-contexts-10ms:
    - Statuses : 8 pass(s)
    - Exec time: [1.26, 36.55] s

  * igt@gem_eio@in-flight-contexts-1us:
    - Statuses : 7 pass(s)
    - Exec time: [1.06, 35.91] s

  * igt@gem_eio@in-flight-contexts-immediate:
    - Statuses : 7 pass(s)
    - Exec time: [2.24, 36.03] s

  * igt@gem_eio@in-flight-external:
    - Statuses : 8 pass(s)
    - Exec time: [0.03, 0.32] s

  * igt@gem_eio@in-flight-immediate:
    - Statuses : 8 pass(s)
    - Exec time: [0.38, 3.44] s

  * igt@gem_eio@in-flight-internal-10ms:
    - Statuses : 8 pass(s)
    - Exec time: [0.04, 0.41] s

  * igt@gem_eio@in-flight-internal-1us:
    - Statuses : 8 pass(s)
    - Exec time: [0.03, 0.37] s

  * igt@gem_eio@in-flight-internal-immediate:
    - Statuses : 8 pass(s)
    - Exec time: [0.03, 0.40] s

  * igt@gem_eio@in-flight-suspend:
    - Statuses : 8 pass(s)
    - Exec time: [1.08, 3.54] s

  * igt@gem_eio@reset-stress:
    - Statuses : 8 pass(s)
    - Exec time: [28.41, 38.96] s

  * igt@gem_eio@suspend:
    - Statuses : 8 pass(s)
    - Exec time: [10.95, 12.54] s

  * igt@gem_eio@throttle:
    - Statuses : 8 pass(s)
    - Exec time: [0.02, 0.17] s

  * igt@gem_eio@unwedge-stress:
    - Statuses : 7 pass(s)
    - Exec time: [28.54, 39.17] s

  * igt@gem_eio@wait-10ms:
    - Statuses : 8 pass(s)
    - Exec time: [0.04, 0.33] s

  * igt@gem_eio@wait-1us:
    - Statuses : 8 pass(s)
    - Exec time: [0.03, 0.32] s

  * igt@gem_eio@wait-immediate:
    - Statuses : 8 pass(s)
    - Exec time: [0.03, 0.29] s

  * igt@gem_eio@wait-wedge-10ms:
    - Statuses : 8 pass(s)
    - Exec time: [0.04, 0.34] s

  * igt@gem_eio@wait-wedge-1us:
    - Statuses : 8 pass(s)
    - Exec time: [0.03, 0.33] s

  * igt@gem_eio@wait-wedge-immediate:
    - Statuses : 8 pass(s)
    - Exec time: [0.03, 0.90] s

  * igt@gem_exec_await@wide-all:
    - Statuses : 8 pass(s)
    - Exec time: [21.80, 24.77] s

  * igt@gem_exec_await@wide-contexts:
    - Statuses : 7 pass(s)
    - Exec time: [21.69, 23.34] s

  * igt@gem_exec_balancer@bonded-chain:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 14.54] s

  * igt@gem_exec_balancer@bonded-semaphore:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 14.12] s

  * igt@gem_exec_balancer@hang:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 14.14] s

  * igt@gem_exec_capture@userptr:
    - Statuses : 8 pass(s)
    - Exec time: [0.01, 0.09] s

  * igt@gem_exec_create@forked:
    - Statuses : 6 pass(s)
    - Exec time: [20.07, 20.13] s

  * igt@gem_exec_create@madvise:
    - Statuses : 8 pass(s)
    - Exec time: [20.03, 21.24] s

  * igt@gem_exec_fence@basic-busy-all:
    - Statuses : 6 pass(s)
    - Exec time: [0.02, 0.03] s

  * igt@gem_exec_fence@basic-wait-all:
    - Statuses : 7 pass(s)
    - Exec time: [0.02, 0.04] s

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - Statuses : 4 pass(s) 3 skip(s)
    - Exec time: [0.0, 7.37] s

  * igt@gem_exec_flush@basic-batch-kernel-default-uc:
    - Statuses : 6 pass(s)
    - Exec time: [5.57, 6.03] s

  * igt@gem_exec_flush@basic-batch-kernel-default-wb:
    - Statuses : 8 pass(s)
    - Exec time: [5.57, 8.21] s

  * igt@gem_exec_flush@basic-uc-pro-default:
    - Statuses : 2 pass(s)
    - Exec time: [5.42, 5.43] s

  * igt@gem_exec_flush@basic-uc-prw-default:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_flush@basic-uc-ro-default:
    - Statuses : 8 pass(s)
    - Exec time: [5.41, 5.81] s

  * igt@gem_exec_flush@basic-uc-rw-default:
    - Statuses : 8 pass(s)
    - Exec time: [5.42, 5.88] s

  * igt@gem_exec_flush@basic-uc-set-default:
    - Statuses : 8 pass(s)
    - Exec time: [5.41, 5.74] s

  * igt@gem_exec_flush@basic-wb-pro-default:
    - Statuses : 8 pass(s)
    - Exec time: [5.41, 5.78] s

  * igt@gem_exec_flush@basic-wb-prw-default:
    - Statuses : 8 pass(s)
    - Exec time: [5.41, 5.78] s

  * igt@gem_exec_flush@basic-wb-ro-before-default:
    - Statuses : 8 pass(s)
    - Exec time: [5.41, 5.75] s

  * igt@gem_exec_flush@basic-wb-ro-default:
    - Statuses : 8 pass(s)
    - Exec time: [5.40, 5.75] s

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - Statuses : 8 pass(s)
    - Exec time: [5.41, 5.80] s

  * igt@gem_exec_flush@basic-wb-rw-default:
    - Statuses : 8 pass(s)
    - Exec time: [5.40, 5.80] s

  * igt@gem_exec_flush@basic-wb-set-default:
    - Statuses : 7 pass(s)
    - Exec time: [5.41, 5.79] s

  * igt@gem_exec_nop@basic-parallel:
    - Statuses : 8 pass(s)
    - Exec time: [2.78, 3.41] s

  * igt@gem_exec_nop@basic-sequential:
    - Statuses : 8 pass(s)
    - Exec time: [2.77, 3.33] s

  * igt@gem_exec_nop@basic-series:
    - Statuses : 8 pass(s)
    - Exec time: [2.75, 3.30] s

  * igt@gem_exec_parallel@basic:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_parallel@contexts:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_parallel@fds:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_params@batch-first:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@gem_exec_params@cliprects-invalid:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@cliprects_ptr-dirt:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@dr1-dirt:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@dr4-dirt:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@invalid-bsd-ring:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@gem_exec_params@invalid-bsd1-flag-on-blt:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@invalid-bsd1-flag-on-render:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@invalid-bsd1-flag-on-vebox:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.01] s

  * igt@gem_exec_params@invalid-bsd2-flag-on-blt:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@invalid-bsd2-flag-on-render:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@gem_exec_params@invalid-bsd2-flag-on-vebox:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_params@invalid-fence-in:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@invalid-flag:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@invalid-ring:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@invalid-ring2:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@no-blt:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_params@no-bsd:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec_params@no-vebox:
    - Statuses : 1 pass(s) 5 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec_params@rel-constants-invalid:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@rel-constants-invalid-rel-gen5:
    - Statuses : 6 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec_params@rel-constants-invalid-ring:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@rs-invalid:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_exec_params@rsvd2-dirt:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec_params@secure-non-master:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec_params@secure-non-root:
    - Statuses : 8 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec_params@sol-reset-invalid:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_exec_params@sol-reset-not-gen7:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.01] s

  * igt@gem_exec_reloc@basic-cpu:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.07] s

  * igt@gem_exec_reloc@basic-cpu-active:
    - Statuses : 8 pass(s)
    - Exec time: [0.11, 0.31] s

  * igt@gem_exec_reloc@basic-cpu-gtt:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_reloc@basic-cpu-gtt-active:
    - Statuses : 8 pass(s)
    - Exec time: [0.11, 0.31] s

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.05] s

  * igt@gem_exec_reloc@basic-cpu-noreloc:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@gem_exec_reloc@basic-cpu-read:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@gem_exec_reloc@basic-cpu-read-active:
    - Statuses : 8 pass(s)
    - Exec time: [0.11, 0.31] s

  * igt@gem_exec_reloc@basic-cpu-read-noreloc:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@gem_exec_reloc@basic-cpu-wc:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.08] s

  * igt@gem_exec_reloc@basic-cpu-wc-active:
    - Statuses : 8 pass(s)
    - Exec time: [0.11, 0.31] s

  * igt@gem_exec_reloc@basic-cpu-wc-noreloc:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@gem_exec_reloc@basic-gtt:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.08] s

  * igt@gem_exec_reloc@basic-gtt-active:
    - Statuses : 8 pass(s)
    - Exec time: [0.11, 0.37] s

  * igt@gem_exec_reloc@basic-gtt-cpu:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.08] s

  * igt@gem_exec_reloc@basic-gtt-cpu-active:
    - Statuses : 6 pass(s)
    - Exec time: [0.11, 0.17] s

  * igt@gem_exec_reloc@basic-gtt-cpu-noreloc:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@gem_exec_reloc@basic-gtt-noreloc:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@gem_exec_reloc@basic-gtt-read:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.08] s

  * igt@gem_exec_reloc@basic-gtt-read-active:
    - Statuses : 6 pass(s)
    - Exec time: [0.11, 0.17] s

  * igt@gem_exec_reloc@basic-gtt-read-noreloc:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.05] s

  * igt@gem_exec_reloc@basic-gtt-wc:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_exec_reloc@basic-gtt-wc-active:
    - Statuses : 7 pass(s)
    - Exec time: [0.11, 0.33] s

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.05] s

  * igt@gem_exec_reloc@basic-range:
    - Statuses : 8 pass(s)
    - Exec time: [0.01, 0.38] s

  * igt@gem_exec_reloc@basic-range-active:
    - Statuses : 8 pass(s)
    - Exec time: [0.01, 0.42] s

  * igt@gem_exec_reloc@basic-softpin:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@gem_exec_reloc@basic-wc:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_exec_reloc@basic-wc-active:
    - Statuses : 8 pass(s)
    - Exec time: [0.11, 0.30] s

  * igt@gem_exec_reloc@basic-wc-cpu:
    - Statuses : 8 pass(s)
    - Exec time: [0.01, 0.08] s

  * igt@gem_exec_reloc@basic-wc-cpu-active:
    - Statuses : 8 pass(s)
    - Exec time: [0.11, 0.41] s

  * igt@gem_exec_reloc@basic-wc-cpu-noreloc:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@gem_exec_reloc@basic-wc-gtt:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.09] s

  * igt@gem_exec_reloc@basic-wc-gtt-active:
    - Statuses : 7 pass(s)
    - Exec time: [0.11, 0.30] s

  * igt@gem_exec_reloc@basic-wc-gtt-noreloc:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@gem_exec_reloc@basic-wc-noreloc:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.05] s

  * igt@gem_exec_reloc@basic-wc-read:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.08] s

  * igt@gem_exec_reloc@basic-wc-read-active:
    - Statuses : 8 pass(s)
    - Exec time: [0.11, 0.29] s

  * igt@gem_exec_reloc@basic-wc-read-noreloc:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.05] s

  * igt@gem_exec_reloc@basic-write-cpu:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.07] s

  * igt@gem_exec_reloc@basic-write-cpu-active:
    - Statuses : 6 pass(s)
    - Exec time: [0.11, 0.17] s

  * igt@gem_exec_reloc@basic-write-cpu-noreloc:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@gem_exec_reloc@basic-write-gtt:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.09] s

  * igt@gem_exec_reloc@basic-write-gtt-active:
    - Statuses : 8 pass(s)
    - Exec time: [0.11, 0.32] s

  * igt@gem_exec_reloc@basic-write-gtt-noreloc:
    - Statuses : 8 pass(s)
    - Exec time: [0.01, 0.10] s

  * igt@gem_exec_reloc@basic-write-read:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.08] s

  * igt@gem_exec_reloc@basic-write-read-active:
    - Statuses : 8 pass(s)
    - Exec time: [0.11, 0.29] s

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@gem_exec_reloc@basic-write-wc:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.08] s

  * igt@gem_exec_reloc@basic-write-wc-active:
    - Statuses : 7 pass(s)
    - Exec time: [0.11, 0.32] s

  * igt@gem_exec_reloc@basic-write-wc-noreloc:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@gem_exec_schedule@smoketest-all:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 32.57] s

  * igt@gem_exec_suspend@basic:
    - Statuses : 8 pass(s)
    - Exec time: [0.19, 5.89] s

  * igt@gem_exec_suspend@basic-s3-devices:
    - Statuses : 8 pass(s)
    - Exec time: [6.05, 24.17] s

  * igt@gem_exec_suspend@basic-s4-devices:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [7.12, 13.36] s

  * igt@gem_fence_thrash@bo-copy:
    - Statuses : 8 pass(s)
    - Exec time: [1.14, 2.20] s

  * igt@gem_fence_thrash@bo-write-verify-none:
    - Statuses : 8 pass(s)
    - Exec time: [1.10, 1.41] s

  * igt@gem_fence_thrash@bo-write-verify-threaded-none:
    - Statuses : 8 pass(s)
    - Exec time: [1.20, 4.66] s

  * igt@gem_fence_thrash@bo-write-verify-x:
    - Statuses : 8 pass(s)
    - Exec time: [1.11, 1.40] s

  * igt@gem_fence_thrash@bo-write-verify-y:
    - Statuses : 7 pass(s)
    - Exec time: [1.13, 1.41] s

  * igt@gem_fenced_exec_thrash@2-spare-fences:
    - Statuses : 8 pass(s)
    - Exec time: [2.15, 3.07] s

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - Statuses : 8 pass(s)
    - Exec time: [2.15, 3.34] s

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
    - Statuses : 7 pass(s)
    - Exec time: [2.15, 2.18] s

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
    - Statuses : 8 pass(s)
    - Exec time: [2.15, 3.42] s

  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
    - Statuses : 8 pass(s)
    - Exec time: [2.15, 3.19] s

  * igt@gem_fenced_exec_thrash@too-many-fences:
    - Statuses : 1 incomplete(s) 7 pass(s)
    - Exec time: [0.0, 3.30] s

  * igt@gem_flink_race@flink_close:
    - Statuses : 8 pass(s)
    - Exec time: [5.01, 5.04] s

  * igt@gem_flink_race@flink_name:
    - Statuses : 8 pass(s)
    - Exec time: [5.37, 5.38] s

  * igt@gem_gpgpu_fill:
    - Statuses : 1 pass(s) 1 skip(s)
    - Exec time: [0.08, 0.10] s

  * igt@gem_gtt_cpu_tlb:
    - Statuses : 8 pass(s)
    - Exec time: [0.09, 0.61] s

  * igt@gem_linear_blits@interruptible:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 24.21] s

  * igt@gem_linear_blits@normal:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.0, 18.74] s

  * igt@gem_madvise@dontneed-after-mmap:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@gem_madvise@dontneed-before-exec:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_madvise@dontneed-before-mmap:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@gem_madvise@dontneed-before-pwrite:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_media_fill:
    - Statuses : 7 pass(s) 1 skip(s)
    - Exec time: [0.09, 0.66] s

  * igt@gem_mmap@bad-object:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_mmap@basic-small-bo:
    - Statuses : 8 pass(s)
    - Exec time: [0.56, 6.82] s

  * igt@gem_mmap@big-bo:
    - Statuses : 6 pass(s)
    - Exec time: [0.66, 2.51] s

  * igt@gem_mmap@short-mmap:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_mmap_gtt@basic-copy:
    - Statuses : 8 pass(s)
    - Exec time: [0.14, 1.15] s

  * igt@gem_mmap_gtt@basic-read:
    - Statuses : 7 pass(s)
    - Exec time: [0.03, 0.36] s

  * igt@gem_mmap_gtt@basic-read-write:
    - Statuses : 8 pass(s)
    - Exec time: [0.01, 0.15] s

  * igt@gem_mmap_gtt@basic-read-write-distinct:
    - Statuses : 8 pass(s)
    - Exec time: [0.01, 0.15] s

  * igt@gem_mmap_gtt@basic-short:
    - Statuses : 8 pass(s)
    - Exec time: [0.02, 0.23] s

  * igt@gem_mmap_gtt@basic-small-bo:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_gtt@basic-small-bo-tiledx:
    - Statuses : 7 pass(s)
    - Exec time: [0.24, 0.89] s

  * igt@gem_mmap_gtt@basic-small-bo-tiledy:
    - Statuses : 8 pass(s)
    - Exec time: [0.22, 2.42] s

  * igt@gem_mmap_gtt@basic-small-copy:
    - Statuses : 8 pass(s)
    - Exec time: [0.40, 3.93] s

  * igt@gem_mmap_gtt@basic-small-copy-odd:
    - Statuses : 8 pass(s)
    - Exec time: [0.67, 7.08] s

  * igt@gem_mmap_gtt@basic-small-copy-xy:
    - Statuses : 7 pass(s)
    - Exec time: [0.95, 7.11] s

  * igt@gem_mmap_gtt@basic-wc:
    - Statuses : 7 pass(s)
    - Exec time: [0.64, 0.65] s

  * igt@gem_mmap_gtt@basic-write:
    - Statuses : 8 pass(s)
    - Exec time: [0.11, 0.71] s

  * igt@gem_mmap_gtt@basic-write-cpu-read-gtt:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 0.71] s

  * igt@gem_mmap_gtt@basic-write-gtt:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.80] s

  * igt@gem_mmap_gtt@basic-write-read:
    - Statuses : 8 pass(s)
    - Exec time: [0.01, 0.14] s

  * igt@gem_mmap_gtt@basic-write-read-distinct:
    - Statuses : 8 pass(s)
    - Exec time: [0.01, 0.16] s

  * igt@gem_mmap_gtt@big-bo:
    - Statuses : 8 pass(s)
    - Exec time: [0.26, 3.00] s

  * igt@gem_mmap_gtt@big-bo-tiledx:
    - Statuses : 8 pass(s)
    - Exec time: [0.48, 5.18] s

  * igt@gem_mmap_gtt@big-bo-tiledy:
    - Statuses : 8 pass(s)
    - Exec time: [0.31, 3.38] s

  * igt@gem_mmap_gtt@big-copy:
    - Statuses : 8 pass(s)
    - Exec time: [1.32, 14.0] s

  * igt@gem_mmap_gtt@big-copy-odd:
    - Statuses : 8 pass(s)
    - Exec time: [1.55, 14.52] s

  * igt@gem_mmap_gtt@big-copy-xy:
    - Statuses : 8 pass(s)
    - Exec time: [1.58, 16.47] s

  * igt@gem_mmap_gtt@coherency:
    - Statuses : 4 pass(s) 4 skip(s)
    - Exec time: [0.0, 0.59] s

  * igt@gem_mmap_gtt@fault-concurrent:
    - Statuses : 8 pass(s)
    - Exec time: [2.58, 8.56] s

  * igt@gem_mmap_gtt@hang:
    - Statuses : 8 pass(s)
    - Exec time: [5.42, 5.98] s

  * igt@gem_mmap_gtt@medium-copy:
    - Statuses : 8 pass(s)
    - Exec time: [0.93, 10.08] s

  * igt@gem_mmap_gtt@medium-copy-odd:
    - Statuses : 8 pass(s)
    - Exec time: [0.82, 7.26] s

  * igt@gem_mmap_gtt@medium-copy-xy:
    - Statuses : 8 pass(s)
    - Exec time: [0.81, 8.22] s

  * igt@gem_mmap_gtt@zero-extend:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_mmap_offset@bad-extensions:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_mmap_offset@bad-flags:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@bad-object:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_mmap_offset@basic-uaf:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_mmap_offset@clear:
    - Statuses : 7 pass(s)
    - Exec time: [22.56, 46.36] s

  * igt@gem_mmap_offset@close-race:
    - Statuses : 8 pass(s)
    - Exec time: [20.06, 20.65] s

  * igt@gem_mmap_offset@isolation:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.04] s

  * igt@gem_mmap_offset@open-flood:
    - Statuses : 7 pass(s)
    - Exec time: [21.50, 21.95] s

  * igt@gem_mmap_offset@pf-nonblock:
    - Statuses : 8 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@gem_mmap_wc@close:
    - Statuses : 8 pass(s)
    - Exec time: [0.04, 0.40] s

  * igt@gem_mmap_wc@coherency:
    - Statuses : 8 pass(s)
    - Exec time: [0.09, 0.71] s

  * igt@gem_mmap_wc@copy:
    - Statuses : 7 pass(s)
    - Exec time: [0.16, 1.06] s

  * igt@gem_mmap_wc@fault-concurrent:
    - Statuses : 8 pass(s)
    - Exec time: [0.55, 6.41] s

  * igt@gem_mmap_wc@invalid-flags:
    - Statuses : 8 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_mmap_wc@read:
    - Statuses : 8 pass(s)
    - Exec time: [0.05, 0.57] s

  * igt@gem_mmap_wc@read-write:
    - Statuses : 8 pass(s)
    - Exec time: [0.01, 0.23] s

  * igt@gem_mmap_wc@read-write-distinct:
    - Statuses : 8 pass(s)
    - Exec time: [0.01, 0.14] s

  * igt@gem_mmap_wc@set-cache-level:
    - Statuses : 2 pass(s)
    - Exec time: [0.00] s

  * igt@gem_mmap_wc@write:
    - Statuses : 8 pass(s)
    - Exec time: [0.07, 0.73] s

  * igt@gem_mmap_wc@write-cpu-read-wc:
    - Statuses : 7 pass(s)
    - Exec time: [0.10, 0.35] s

  * igt@gem_mmap_wc@write-cpu-read-wc-unflushed:
    - Statuses : 7 pass(s)
    - Exec time: [0.10, 0.78] s

  * igt@gem_mmap_wc@write-gtt-read-wc:
    - Statuses : 8 pass(s)
    - Exec time: [0.10, 0.88] s

  * igt@gem_mmap_wc@write-read:
    - Statuses : 8 pass(s)
    - Exec time: [0.01, 0.15] s

  * igt@gem_mmap_wc@write-read-distinct:
    - Statuses : 8 pass(s)
    - Exec time: [0.01, 0.16] s

  * igt@gem_partial_pwrite_pread@reads:
    - Statuses : 8 pass(s)
    - Exec time: [0.65, 12.51] s

  * igt@gem_partial_pwrite_pread@reads-display:
    - Statuses : 8 pass(s)
    - Exec time: [0.65, 13.28] s

  * igt@gem_partial_pwrite_pread@reads-snoop:
    - Statuses : 8 pass(s)
    - Exec time: [0.65, 12.12] s

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - Statuses : 8 pass(s)
    - Exec time: [0.65, 12.61] s

  * igt@gem_partial_pwrite_pread@write:
    - Statuses : 8 pass(s)
    - Exec time: [3.21, 34.61] s

  * igt@gem_partial_pwrite_pread@write-display:
    - Statuses : 2 pass(s)
    - Exec time: [3.23, 3.29] s

  * igt@gem_partial_pwrite_pread@write-snoop:
    - Statuses : 6 pass(s)
    - Exec time: [3.21, 13.18] s

  * igt@gem_partial_pwrite_pread@write-uncached:
    - Statuses : 8 pass(s)
    - Exec time: [3.22, 34.77] s

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - Statuses : 8 pass(s)
    - Exec time: [3.85, 48.17] s

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - Statuses : 8 pass(s)
    - Exec time: [3.82, 46.29] s

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - Statuses : 6 pass(s)
    - Exec time: [3.83, 19.44] s

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - Statuses : 7 pass(s)
    - Exec time: [3.86, 47.81] s

  * igt@gem_pipe_control_store_loop@fresh-buffer:
    - Statuses : 8 pass(s)
    - Exec time: [2.15] s

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - Statuses : 2 pass(s)
    - Exec time: [2.15] s

  * igt@gem_ppgtt@blt-vs-render-ctx0:
    - Statuses :

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/index.html

--===============7702248968824859563==
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
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9680_full -&gt; Patchwork_19493_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19493_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_19493_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_19493_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@gem_userptr_blits@input-checking (NEW):<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/shard-skl2/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>{igt@gem_create@create-massive}:<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19493/shard-skl1/igt@gem_create@create-massive.html">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9680_full and Patchwork_19493_full:</p>
<h3>New IGT tests (1666)</h3>
<ul>
<li>
<p>igt@core_auth@many-magics:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.15, 3.48] s</li>
</ul>
</li>
<li>
<p>igt@core_getclient:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.07, 0.59] s</li>
</ul>
</li>
<li>
<p>igt@core_getstats:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.07, 0.55] s</li>
</ul>
</li>
<li>
<p>igt@core_getversion:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.07, 0.58] s</li>
</ul>
</li>
<li>
<p>igt@core_setmaster_vs_auth:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.06, 0.59] s</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries_display_off:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.09, 1.16] s</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries_display_on:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@drm_import_export@flink:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [10.74, 10.75] s</li>
</ul>
</li>
<li>
<p>igt@drm_import_export@import-close-race-flink:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [10.74, 10.75] s</li>
</ul>
</li>
<li>
<p>igt@drm_import_export@import-close-race-prime:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [10.74] s</li>
</ul>
</li>
<li>
<p>igt@drm_import_export@prime:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [10.74, 10.75] s</li>
</ul>
</li>
<li>
<p>igt@drm_read@empty-block:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [1.0, 1.00] s</li>
</ul>
</li>
<li>
<p>igt@drm_read@empty-nonblock:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@drm_read@fault-buffer:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@drm_read@invalid-buffer:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_read@short-buffer-block:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@drm_read@short-buffer-nonblock:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@dumb_buffer@create-clear:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [37.08, 57.85] s</li>
</ul>
</li>
<li>
<p>igt@dumb_buffer@create-valid-dumb:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@dumb_buffer@invalid-bpp:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@dumb_buffer@map-invalid-size:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@dumb_buffer@map-uaf:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.02, 0.10] s</li>
</ul>
</li>
<li>
<p>igt@dumb_buffer@map-valid:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-bltcopy:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.38, 14.62] s</li>
</ul>
</li>
<li>
<p>igt@gem_blits@basic:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [1.45, 46.18] s</li>
</ul>
</li>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [21.70, 22.38] s</li>
</ul>
</li>
<li>
<p>igt@gem_caching@read-writes:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [4.43, 42.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_caching@reads:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.66, 11.80] s</li>
</ul>
</li>
<li>
<p>igt@gem_caching@writes:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [2.28, 28.72] s</li>
</ul>
</li>
<li>
<p>igt@gem_close@basic:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_close@many-handles-one-vma:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.02, 0.36] s</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-invalid-size:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-valid-nonaligned:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_bad_destroy@double-destroy:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_bad_destroy@invalid-ctx:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_bad_destroy@invalid-default-ctx:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_bad_destroy@invalid-pad:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-invalid-context:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_freq@sysfs:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [4.81, 5.28] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@basic:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@basic-default:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@get-priority-new-ctx:</p>
<ul>
<li>Statuses : 6 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@invalid-ctx-get:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@invalid-ctx-set:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@invalid-param-get:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0] s</li>
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
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@invalid-size-set:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@non-root-set:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.01, 0.13] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@non-root-set-no-zeromap:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.01, 0.14] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@root-set:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@root-set-no-zeromap-disabled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@root-set-no-zeromap-enabled:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0] s</li>
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
<li>Statuses : 2 pass(s) 6 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-range:</p>
<ul>
<li>Statuses : 5 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 0.07] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@banned:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.06, 0.46] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@execbuf:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.02, 0.13] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>Statuses : 7 pass(s) 1 skip(s)</li>
<li>Exec time: [0.07, 15.19] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-10ms:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.44, 3.43] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-1us:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.42, 3.50] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [1.26, 36.55] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [1.06, 35.91] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [2.24, 36.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-external:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.03, 0.32] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-immediate:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.38, 3.44] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-internal-10ms:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.04, 0.41] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-internal-1us:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.03, 0.37] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-internal-immediate:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.03, 0.40] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [1.08, 3.54] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [28.41, 38.96] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [10.95, 12.54] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@throttle:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.02, 0.17] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [28.54, 39.17] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-10ms:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.04, 0.33] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-1us:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.03, 0.32] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-immediate:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.03, 0.29] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-wedge-10ms:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.04, 0.34] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-wedge-1us:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.03, 0.33] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-wedge-immediate:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.03, 0.90] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_await@wide-all:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [21.80, 24.77] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_await@wide-contexts:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [21.69, 23.34] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-chain:</p>
<ul>
<li>Statuses : 5 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 14.54] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-semaphore:</p>
<ul>
<li>Statuses : 6 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 14.12] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hang:</p>
<ul>
<li>Statuses : 6 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 14.14] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@userptr:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.01, 0.09] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@forked:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [20.07, 20.13] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@madvise:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [20.03, 21.24] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy-all:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.02, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait-all:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.02, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>Statuses : 4 pass(s) 3 skip(s)</li>
<li>Exec time: [0.0, 7.37] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-uc:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [5.57, 6.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-wb:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [5.57, 8.21] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [5.42, 5.43] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-ro-default:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [5.41, 5.81] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-rw-default:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [5.42, 5.88] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-set-default:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [5.41, 5.74] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-pro-default:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [5.41, 5.78] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-prw-default:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [5.41, 5.78] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-before-default:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [5.41, 5.75] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-default:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [5.40, 5.75] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [5.41, 5.80] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-default:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [5.40, 5.80] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-set-default:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [5.41, 5.79] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_nop@basic-parallel:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [2.78, 3.41] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_nop@basic-sequential:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [2.77, 3.33] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_nop@basic-series:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [2.75, 3.30] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@basic:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
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
<p>igt@gem_exec_parallel@fds:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@batch-first:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@cliprects-invalid:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@cliprects_ptr-dirt:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@dr1-dirt:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@dr4-dirt:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-bsd-ring:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-bsd1-flag-on-blt:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
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
<li>Statuses : 7 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-bsd2-flag-on-blt:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-bsd2-flag-on-render:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-bsd2-flag-on-vebox:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-fence-in:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-flag:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-ring:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
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
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-bsd:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@no-vebox:</p>
<ul>
<li>Statuses : 1 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rel-constants-invalid:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rel-constants-invalid-rel-gen5:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rel-constants-invalid-ring:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rs-invalid:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>Statuses : 8 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@sol-reset-invalid:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@sol-reset-not-gen7:</p>
<ul>
<li>Statuses : 7 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.07] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-active:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.11, 0.31] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-active:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.11, 0.31] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-noreloc:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-active:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.11, 0.31] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-noreloc:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-wc:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.08] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-wc-active:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.11, 0.31] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-wc-noreloc:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.08] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-active:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.11, 0.37] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.08] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-active:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.11, 0.17] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-noreloc:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-noreloc:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.08] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-active:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.11, 0.17] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-noreloc:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-active:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.11, 0.33] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-range:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.01, 0.38] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-range-active:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.01, 0.42] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-softpin:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-active:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.11, 0.30] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.01, 0.08] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu-active:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.11, 0.41] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu-noreloc:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.09] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt-active:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.11, 0.30] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt-noreloc:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-noreloc:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.08] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-active:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.11, 0.29] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-noreloc:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.07] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu-active:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.11, 0.17] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu-noreloc:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.09] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-active:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.11, 0.32] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-noreloc:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.01, 0.10] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.08] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.11, 0.29] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.08] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-active:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.11, 0.32] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-noreloc:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@smoketest-all:</p>
<ul>
<li>Statuses : 6 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 32.57] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.19, 5.89] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3-devices:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [6.05, 24.17] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>Statuses : 7 pass(s) 1 skip(s)</li>
<li>Exec time: [7.12, 13.36] s</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [1.14, 2.20] s</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-none:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [1.10, 1.41] s</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-threaded-none:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [1.20, 4.66] s</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-x:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [1.11, 1.40] s</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-y:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [1.13, 1.41] s</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@2-spare-fences:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [2.15, 3.07] s</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [2.15, 3.34] s</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [2.15, 2.18] s</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [2.15, 3.42] s</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [2.15, 3.19] s</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@too-many-fences:</p>
<ul>
<li>Statuses : 1 incomplete(s) 7 pass(s)</li>
<li>Exec time: [0.0, 3.30] s</li>
</ul>
</li>
<li>
<p>igt@gem_flink_race@flink_close:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [5.01, 5.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_flink_race@flink_name:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [5.37, 5.38] s</li>
</ul>
</li>
<li>
<p>igt@gem_gpgpu_fill:</p>
<ul>
<li>Statuses : 1 pass(s) 1 skip(s)</li>
<li>Exec time: [0.08, 0.10] s</li>
</ul>
</li>
<li>
<p>igt@gem_gtt_cpu_tlb:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.09, 0.61] s</li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@interruptible:</p>
<ul>
<li>Statuses : 7 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 24.21] s</li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@normal:</p>
<ul>
<li>Statuses : 7 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 18.74] s</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-after-mmap:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-exec:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-mmap:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-pwrite:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill:</p>
<ul>
<li>Statuses : 7 pass(s) 1 skip(s)</li>
<li>Exec time: [0.09, 0.66] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-object:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic-small-bo:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.56, 6.82] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@big-bo:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.66, 2.51] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@short-mmap:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-copy:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.14, 1.15] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-read:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.03, 0.36] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-read-write:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.01, 0.15] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-read-write-distinct:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.01, 0.15] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-short:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.02, 0.23] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-bo:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-bo-tiledx:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.24, 0.89] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-bo-tiledy:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.22, 2.42] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-copy:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.40, 3.93] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-copy-odd:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.67, 7.08] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-copy-xy:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.95, 7.11] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-wc:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.64, 0.65] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.11, 0.71] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write-cpu-read-gtt:</p>
<ul>
<li>Statuses : 6 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 0.71] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write-gtt:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.80] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write-read:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.01, 0.14] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write-read-distinct:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.01, 0.16] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-bo:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.26, 3.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-bo-tiledx:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.48, 5.18] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-bo-tiledy:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.31, 3.38] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [1.32, 14.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [1.55, 14.52] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-xy:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [1.58, 16.47] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>Statuses : 4 pass(s) 4 skip(s)</li>
<li>Exec time: [0.0, 0.59] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [2.58, 8.56] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@hang:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [5.42, 5.98] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.93, 10.08] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-odd:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.82, 7.26] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-xy:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.81, 8.22] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@zero-extend:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@bad-extensions:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@bad-flags:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@bad-object:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@basic-uaf:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [22.56, 46.36] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@close-race:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [20.06, 20.65] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@isolation:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@open-flood:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [21.50, 21.95] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@pf-nonblock:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@close:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.04, 0.40] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@coherency:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.09, 0.71] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@copy:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.16, 1.06] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@fault-concurrent:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.55, 6.41] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@invalid-flags:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.05, 0.57] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read-write:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.01, 0.23] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read-write-distinct:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.01, 0.14] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@set-cache-level:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.07, 0.73] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-cpu-read-wc:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.10, 0.35] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-cpu-read-wc-unflushed:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.10, 0.78] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-gtt-read-wc:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.10, 0.88] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-read:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.01, 0.15] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-read-distinct:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.01, 0.16] s</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.65, 12.51] s</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-display:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.65, 13.28] s</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-snoop:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.65, 12.12] s</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [0.65, 12.61] s</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [3.21, 34.61] s</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-display:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [3.23, 3.29] s</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-snoop:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [3.21, 13.18] s</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-uncached:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [3.22, 34.77] s</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [3.85, 48.17] s</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-display:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [3.82, 46.29] s</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-snoop:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [3.83, 19.44] s</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [3.86, 47.81] s</li>
</ul>
</li>
<li>
<p>igt@gem_pipe_control_store_loop@fresh-buffer:</p>
<ul>
<li>Statuses : 8 pass(s)</li>
<li>Exec time: [2.15] s</li>
</ul>
</li>
<li>
<p>igt@gem_pipe_control_store_loop@reused-buffer:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [2.15] s</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@blt-vs-render-ctx0:</p>
<ul>
<li>Statuses :</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7702248968824859563==--

--===============0000747549==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0000747549==--
