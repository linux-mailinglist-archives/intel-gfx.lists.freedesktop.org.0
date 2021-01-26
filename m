Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDCD30312D
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Jan 2021 02:28:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F8C46E3E5;
	Tue, 26 Jan 2021 01:28:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 74F9D6E3E5;
 Tue, 26 Jan 2021 01:28:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6D68EA00CC;
 Tue, 26 Jan 2021 01:28:09 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Tue, 26 Jan 2021 01:28:09 -0000
Message-ID: <161162448941.9812.557941677738544923@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210125173636.1733812-1-imre.deak@intel.com>
In-Reply-To: <20210125173636.1733812-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/dp/mst=3A_Export_drm=5Fdp=5Fget?=
 =?utf-8?b?X3ZjX3BheWxvYWRfYncoKQ==?=
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
Content-Type: multipart/mixed; boundary="===============1559322962=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1559322962==
Content-Type: multipart/alternative;
 boundary="===============5027745582469508889=="

--===============5027745582469508889==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/dp/mst: Export drm_dp_get_vc_payload_bw()
URL   : https://patchwork.freedesktop.org/series/86267/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9680_full -> Patchwork_19491_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

New tests
---------

  New tests have been introduced between CI_DRM_9680_full and Patchwork_19491_full:

### New IGT tests (1749) ###

  * igt@core_auth@many-magics:
    - Statuses : 6 pass(s)
    - Exec time: [0.15, 0.85] s

  * igt@core_getclient:
    - Statuses : 7 pass(s)
    - Exec time: [0.07, 0.18] s

  * igt@core_getstats:
    - Statuses : 6 pass(s)
    - Exec time: [0.07, 0.19] s

  * igt@core_getversion:
    - Statuses : 7 pass(s)
    - Exec time: [0.07, 0.18] s

  * igt@core_setmaster_vs_auth:
    - Statuses : 7 pass(s)
    - Exec time: [0.06, 0.18] s

  * igt@debugfs_test@read_all_entries_display_off:
    - Statuses : 7 pass(s)
    - Exec time: [0.07, 1.13] s

  * igt@debugfs_test@read_all_entries_display_on:
    - Statuses :
    - Exec time: [None] s

  * igt@drm_import_export@flink:
    - Statuses : 7 pass(s)
    - Exec time: [10.74, 10.75] s

  * igt@drm_import_export@import-close-race-flink:
    - Statuses : 7 pass(s)
    - Exec time: [10.74, 10.75] s

  * igt@drm_import_export@import-close-race-prime:
    - Statuses : 7 pass(s)
    - Exec time: [10.74] s

  * igt@drm_import_export@prime:
    - Statuses : 7 pass(s)
    - Exec time: [10.74] s

  * igt@drm_read@empty-block:
    - Statuses : 2 pass(s)
    - Exec time: [1.0] s

  * igt@drm_read@empty-nonblock:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@drm_read@fault-buffer:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@drm_read@invalid-buffer:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@drm_read@short-buffer-block:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@drm_read@short-buffer-nonblock:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@dumb_buffer@create-clear:
    - Statuses : 7 pass(s)
    - Exec time: [37.43, 47.67] s

  * igt@dumb_buffer@create-valid-dumb:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@dumb_buffer@invalid-bpp:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@dumb_buffer@map-invalid-size:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@dumb_buffer@map-uaf:
    - Statuses : 7 pass(s)
    - Exec time: [0.02, 0.10] s

  * igt@dumb_buffer@map-valid:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@gem_bad_reloc@negative-reloc-bltcopy:
    - Statuses : 7 pass(s)
    - Exec time: [0.36, 4.37] s

  * igt@gem_blits@basic:
    - Statuses : 7 pass(s)
    - Exec time: [1.44, 14.28] s

  * igt@gem_busy@close-race:
    - Statuses : 7 pass(s)
    - Exec time: [21.71, 22.45] s

  * igt@gem_caching@read-writes:
    - Statuses : 7 pass(s)
    - Exec time: [4.43, 22.74] s

  * igt@gem_caching@reads:
    - Statuses : 7 pass(s)
    - Exec time: [0.66, 5.61] s

  * igt@gem_caching@writes:
    - Statuses : 7 pass(s)
    - Exec time: [2.31, 13.42] s

  * igt@gem_close@basic:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@gem_close@many-handles-one-vma:
    - Statuses : 7 pass(s)
    - Exec time: [0.02, 0.10] s

  * igt@gem_create@create-invalid-size:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@gem_create@create-valid-nonaligned:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_ctx_bad_destroy@double-destroy:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_ctx_bad_destroy@invalid-ctx:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_bad_destroy@invalid-default-ctx:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_bad_destroy@invalid-pad:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_ctx_exec@basic-invalid-context:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_ctx_freq@sysfs:
    - Statuses : 7 pass(s)
    - Exec time: [4.80, 4.99] s

  * igt@gem_ctx_param@basic:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@basic-default:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@get-priority-new-ctx:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_ctx_param@invalid-ctx-get:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@invalid-ctx-set:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@invalid-param-get:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@invalid-param-set:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@invalid-size-get:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@invalid-size-set:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@non-root-set:
    - Statuses : 6 pass(s)
    - Exec time: [0.01, 0.04] s

  * igt@gem_ctx_param@non-root-set-no-zeromap:
    - Statuses : 7 pass(s)
    - Exec time: [0.01, 0.04] s

  * igt@gem_ctx_param@root-set:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@root-set-no-zeromap-disabled:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@root-set-no-zeromap-enabled:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@set-priority-invalid-size:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@set-priority-not-supported:
    - Statuses : 2 pass(s) 5 skip(s)
    - Exec time: [0.0] s

  * igt@gem_ctx_param@set-priority-range:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 0.06] s

  * igt@gem_eio@banned:
    - Statuses : 7 pass(s)
    - Exec time: [0.05, 0.43] s

  * igt@gem_eio@execbuf:
    - Statuses : 7 pass(s)
    - Exec time: [0.02, 0.07] s

  * igt@gem_eio@hibernate:
    - Statuses : 7 pass(s)
    - Exec time: [12.60, 18.97] s

  * igt@gem_eio@in-flight-10ms:
    - Statuses : 7 pass(s)
    - Exec time: [0.46, 2.39] s

  * igt@gem_eio@in-flight-1us:
    - Statuses : 7 pass(s)
    - Exec time: [0.38, 2.63] s

  * igt@gem_eio@in-flight-contexts-10ms:
    - Statuses : 7 pass(s)
    - Exec time: [1.07, 36.51] s

  * igt@gem_eio@in-flight-contexts-1us:
    - Statuses : 7 pass(s)
    - Exec time: [1.11, 36.51] s

  * igt@gem_eio@in-flight-contexts-immediate:
    - Statuses : 6 pass(s)
    - Exec time: [2.02, 36.49] s

  * igt@gem_eio@in-flight-external:
    - Statuses : 7 pass(s)
    - Exec time: [0.03, 0.24] s

  * igt@gem_eio@in-flight-immediate:
    - Statuses : 7 pass(s)
    - Exec time: [0.41, 2.13] s

  * igt@gem_eio@in-flight-internal-10ms:
    - Statuses : 7 pass(s)
    - Exec time: [0.04, 0.26] s

  * igt@gem_eio@in-flight-internal-1us:
    - Statuses : 7 pass(s)
    - Exec time: [0.03, 0.26] s

  * igt@gem_eio@in-flight-internal-immediate:
    - Statuses : 7 pass(s)
    - Exec time: [0.03, 0.26] s

  * igt@gem_eio@in-flight-suspend:
    - Statuses : 7 pass(s)
    - Exec time: [1.26, 2.44] s

  * igt@gem_eio@reset-stress:
    - Statuses : 7 pass(s)
    - Exec time: [28.42, 39.36] s

  * igt@gem_eio@suspend:
    - Statuses : 7 pass(s)
    - Exec time: [10.82, 12.64] s

  * igt@gem_eio@throttle:
    - Statuses : 7 pass(s)
    - Exec time: [0.02, 0.07] s

  * igt@gem_eio@unwedge-stress:
    - Statuses : 7 pass(s)
    - Exec time: [28.41, 40.12] s

  * igt@gem_eio@wait-10ms:
    - Statuses : 7 pass(s)
    - Exec time: [0.04, 0.16] s

  * igt@gem_eio@wait-1us:
    - Statuses : 7 pass(s)
    - Exec time: [0.02, 0.14] s

  * igt@gem_eio@wait-immediate:
    - Statuses : 7 pass(s)
    - Exec time: [0.03, 0.16] s

  * igt@gem_eio@wait-wedge-10ms:
    - Statuses : 7 pass(s)
    - Exec time: [0.05, 0.27] s

  * igt@gem_eio@wait-wedge-1us:
    - Statuses : 7 pass(s)
    - Exec time: [0.03, 0.27] s

  * igt@gem_eio@wait-wedge-immediate:
    - Statuses : 7 pass(s)
    - Exec time: [0.03, 0.27] s

  * igt@gem_exec_alignment@single:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_await@wide-all:
    - Statuses : 7 pass(s)
    - Exec time: [21.80, 22.56] s

  * igt@gem_exec_await@wide-contexts:
    - Statuses : 7 pass(s)
    - Exec time: [21.61, 22.35] s

  * igt@gem_exec_balancer@bonded-chain:
    - Statuses : 4 pass(s) 2 skip(s)
    - Exec time: [0.0, 7.10] s

  * igt@gem_exec_balancer@bonded-semaphore:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 4.55] s

  * igt@gem_exec_balancer@hang:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 4.56] s

  * igt@gem_exec_capture@userptr:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.05] s

  * igt@gem_exec_create@forked:
    - Statuses : 7 pass(s)
    - Exec time: [20.06, 20.13] s

  * igt@gem_exec_create@madvise:
    - Statuses : 7 pass(s)
    - Exec time: [20.03, 20.76] s

  * igt@gem_exec_fence@basic-busy-all:
    - Statuses : 6 pass(s)
    - Exec time: [0.01, 0.03] s

  * igt@gem_exec_fence@basic-wait-all:
    - Statuses : 6 pass(s)
    - Exec time: [0.01, 0.04] s

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - Statuses : 4 pass(s) 3 skip(s)
    - Exec time: [0.0, 5.89] s

  * igt@gem_exec_flush@basic-batch-kernel-default-uc:
    - Statuses : 6 pass(s)
    - Exec time: [5.62, 6.09] s

  * igt@gem_exec_flush@basic-batch-kernel-default-wb:
    - Statuses : 7 pass(s)
    - Exec time: [5.56, 6.00] s

  * igt@gem_exec_flush@basic-uc-pro-default:
    - Statuses : 2 pass(s)
    - Exec time: [5.41, 5.43] s

  * igt@gem_exec_flush@basic-uc-prw-default:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_flush@basic-uc-ro-default:
    - Statuses : 7 pass(s)
    - Exec time: [5.41, 5.50] s

  * igt@gem_exec_flush@basic-uc-rw-default:
    - Statuses : 7 pass(s)
    - Exec time: [5.41, 5.49] s

  * igt@gem_exec_flush@basic-uc-set-default:
    - Statuses : 7 pass(s)
    - Exec time: [5.41, 5.46] s

  * igt@gem_exec_flush@basic-wb-pro-default:
    - Statuses : 7 pass(s)
    - Exec time: [5.41, 5.49] s

  * igt@gem_exec_flush@basic-wb-prw-default:
    - Statuses : 7 pass(s)
    - Exec time: [5.41, 5.46] s

  * igt@gem_exec_flush@basic-wb-ro-before-default:
    - Statuses : 7 pass(s)
    - Exec time: [5.41, 5.46] s

  * igt@gem_exec_flush@basic-wb-ro-default:
    - Statuses : 7 pass(s)
    - Exec time: [5.41, 5.48] s

  * igt@gem_exec_flush@basic-wb-rw-before-default:
    - Statuses : 7 pass(s)
    - Exec time: [5.41, 5.46] s

  * igt@gem_exec_flush@basic-wb-rw-default:
    - Statuses : 7 pass(s)
    - Exec time: [5.42, 5.47] s

  * igt@gem_exec_flush@basic-wb-set-default:
    - Statuses : 7 pass(s)
    - Exec time: [5.40, 5.47] s

  * igt@gem_exec_nop@basic-parallel:
    - Statuses : 7 pass(s)
    - Exec time: [2.78, 3.34] s

  * igt@gem_exec_nop@basic-sequential:
    - Statuses : 7 pass(s)
    - Exec time: [2.77, 3.35] s

  * igt@gem_exec_nop@basic-series:
    - Statuses : 7 pass(s)
    - Exec time: [2.75, 3.29] s

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
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_exec_params@cliprects-invalid:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@cliprects_ptr-dirt:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@dr1-dirt:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@dr4-dirt:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@invalid-bsd-ring:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.01] s

  * igt@gem_exec_params@invalid-bsd1-flag-on-blt:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@invalid-bsd1-flag-on-render:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@invalid-bsd1-flag-on-vebox:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@invalid-bsd2-flag-on-blt:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@invalid-bsd2-flag-on-render:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec_params@invalid-bsd2-flag-on-vebox:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_params@invalid-fence-in:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@invalid-flag:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec_params@invalid-ring:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@invalid-ring2:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@no-blt:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_params@no-bsd:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec_params@no-vebox:
    - Statuses : 1 pass(s) 6 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec_params@rel-constants-invalid:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@rel-constants-invalid-rel-gen5:
    - Statuses : 6 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_exec_params@rel-constants-invalid-ring:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@gem_exec_params@rs-invalid:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_exec_params@rsvd2-dirt:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec_params@secure-non-master:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec_params@secure-non-root:
    - Statuses : 7 skip(s)
    - Exec time: [0.0] s

  * igt@gem_exec_params@sol-reset-invalid:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_exec_params@sol-reset-not-gen7:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.01] s

  * igt@gem_exec_reloc@basic-active:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_reloc@basic-cpu:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_exec_reloc@basic-cpu-active:
    - Statuses : 7 pass(s)
    - Exec time: [0.11, 0.17] s

  * igt@gem_exec_reloc@basic-cpu-gtt:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_exec_reloc@basic-cpu-gtt-active:
    - Statuses : 7 pass(s)
    - Exec time: [0.11, 0.16] s

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_exec_reloc@basic-cpu-noreloc:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_exec_reloc@basic-cpu-read:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@gem_exec_reloc@basic-cpu-read-active:
    - Statuses : 7 pass(s)
    - Exec time: [0.11, 0.17] s

  * igt@gem_exec_reloc@basic-cpu-read-noreloc:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_exec_reloc@basic-cpu-wc:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@gem_exec_reloc@basic-cpu-wc-active:
    - Statuses : 7 pass(s)
    - Exec time: [0.11, 0.21] s

  * igt@gem_exec_reloc@basic-cpu-wc-noreloc:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@gem_exec_reloc@basic-gtt:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_exec_reloc@basic-gtt-active:
    - Statuses : 7 pass(s)
    - Exec time: [0.11, 0.18] s

  * igt@gem_exec_reloc@basic-gtt-cpu:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_exec_reloc@basic-gtt-cpu-active:
    - Statuses : 6 pass(s)
    - Exec time: [0.11, 0.16] s

  * igt@gem_exec_reloc@basic-gtt-cpu-noreloc:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_exec_reloc@basic-gtt-noreloc:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_exec_reloc@basic-gtt-read:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@gem_exec_reloc@basic-gtt-read-active:
    - Statuses : 6 pass(s)
    - Exec time: [0.11, 0.16] s

  * igt@gem_exec_reloc@basic-gtt-read-noreloc:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_exec_reloc@basic-gtt-wc:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_exec_reloc@basic-gtt-wc-active:
    - Statuses : 7 pass(s)
    - Exec time: [0.11, 0.16] s

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_exec_reloc@basic-range:
    - Statuses : 7 pass(s)
    - Exec time: [0.01, 0.11] s

  * igt@gem_exec_reloc@basic-range-active:
    - Statuses : 7 pass(s)
    - Exec time: [0.01, 0.26] s

  * igt@gem_exec_reloc@basic-softpin:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_exec_reloc@basic-wc:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_exec_reloc@basic-wc-active:
    - Statuses : 7 pass(s)
    - Exec time: [0.11, 0.16] s

  * igt@gem_exec_reloc@basic-wc-cpu:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.03] s

  * igt@gem_exec_reloc@basic-wc-cpu-active:
    - Statuses : 7 pass(s)
    - Exec time: [0.11, 0.16] s

  * igt@gem_exec_reloc@basic-wc-cpu-noreloc:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_exec_reloc@basic-wc-gtt:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_exec_reloc@basic-wc-gtt-active:
    - Statuses : 7 pass(s)
    - Exec time: [0.11, 0.16] s

  * igt@gem_exec_reloc@basic-wc-gtt-noreloc:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_exec_reloc@basic-wc-noreloc:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_exec_reloc@basic-wc-read:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_exec_reloc@basic-wc-read-active:
    - Statuses : 7 pass(s)
    - Exec time: [0.11, 0.16] s

  * igt@gem_exec_reloc@basic-wc-read-noreloc:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_exec_reloc@basic-write-cpu:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_exec_reloc@basic-write-cpu-active:
    - Statuses : 7 pass(s)
    - Exec time: [0.11, 0.17] s

  * igt@gem_exec_reloc@basic-write-cpu-noreloc:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_exec_reloc@basic-write-gtt:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_exec_reloc@basic-write-gtt-active:
    - Statuses : 7 pass(s)
    - Exec time: [0.11, 0.16] s

  * igt@gem_exec_reloc@basic-write-gtt-noreloc:
    - Statuses : 7 pass(s)
    - Exec time: [0.01, 0.02] s

  * igt@gem_exec_reloc@basic-write-read:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_exec_reloc@basic-write-read-active:
    - Statuses : 7 pass(s)
    - Exec time: [0.11, 0.16] s

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_exec_reloc@basic-write-wc:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_exec_reloc@basic-write-wc-active:
    - Statuses : 7 pass(s)
    - Exec time: [0.11, 0.16] s

  * igt@gem_exec_reloc@basic-write-wc-noreloc:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_exec_schedule@smoketest-all:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 32.32] s

  * igt@gem_exec_suspend@basic:
    - Statuses : 7 pass(s)
    - Exec time: [0.23, 1.52] s

  * igt@gem_exec_suspend@basic-s3-devices:
    - Statuses : 7 pass(s)
    - Exec time: [6.06, 10.64] s

  * igt@gem_exec_suspend@basic-s4-devices:
    - Statuses : 7 pass(s)
    - Exec time: [7.05, 11.82] s

  * igt@gem_fence_thrash@bo-copy:
    - Statuses : 7 pass(s)
    - Exec time: [1.13, 1.70] s

  * igt@gem_fence_thrash@bo-write-verify-none:
    - Statuses : 7 pass(s)
    - Exec time: [1.09, 1.23] s

  * igt@gem_fence_thrash@bo-write-verify-threaded-none:
    - Statuses : 7 pass(s)
    - Exec time: [1.21, 3.08] s

  * igt@gem_fence_thrash@bo-write-verify-threaded-x:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_fence_thrash@bo-write-verify-threaded-y:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_fence_thrash@bo-write-verify-x:
    - Statuses : 7 pass(s)
    - Exec time: [1.10, 1.30] s

  * igt@gem_fence_thrash@bo-write-verify-y:
    - Statuses : 7 pass(s)
    - Exec time: [1.08, 1.34] s

  * igt@gem_fenced_exec_thrash@2-spare-fences:
    - Statuses : 7 pass(s)
    - Exec time: [2.15, 2.16] s

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - Statuses : 7 pass(s)
    - Exec time: [2.15, 2.16] s

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
    - Statuses : 7 pass(s)
    - Exec time: [2.15, 2.18] s

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
    - Statuses : 7 pass(s)
    - Exec time: [2.15, 2.20] s

  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
    - Statuses : 7 pass(s)
    - Exec time: [2.15, 2.16] s

  * igt@gem_fenced_exec_thrash@too-many-fences:
    - Statuses : 7 pass(s)
    - Exec time: [2.15, 2.17] s

  * igt@gem_flink_race@flink_close:
    - Statuses : 7 pass(s)
    - Exec time: [5.01, 5.03] s

  * igt@gem_flink_race@flink_name:
    - Statuses : 7 pass(s)
    - Exec time: [5.37] s

  * igt@gem_gpgpu_fill:
    - Statuses : 1 pass(s) 1 skip(s)
    - Exec time: [0.09, 0.10] s

  * igt@gem_gtt_cpu_tlb:
    - Statuses : 7 pass(s)
    - Exec time: [0.09, 0.32] s

  * igt@gem_linear_blits@interruptible:
    - Statuses : 7 pass(s)
    - Exec time: [1.64, 24.88] s

  * igt@gem_linear_blits@normal:
    - Statuses : 7 pass(s)
    - Exec time: [1.46, 19.07] s

  * igt@gem_madvise@dontneed-after-mmap:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.02] s

  * igt@gem_madvise@dontneed-before-exec:
    - Statuses : 6 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_madvise@dontneed-before-mmap:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_madvise@dontneed-before-pwrite:
    - Statuses : 7 pass(s)
    - Exec time: [0.00] s

  * igt@gem_media_fill:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.08, 0.29] s

  * igt@gem_mmap@bad-object:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_mmap@basic-small-bo:
    - Statuses : 7 pass(s)
    - Exec time: [0.58, 2.17] s

  * igt@gem_mmap@big-bo:
    - Statuses : 6 pass(s)
    - Exec time: [0.67, 2.52] s

  * igt@gem_mmap@short-mmap:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_mmap_gtt@basic-copy:
    - Statuses : 7 pass(s)
    - Exec time: [0.14, 0.89] s

  * igt@gem_mmap_gtt@basic-read:
    - Statuses : 7 pass(s)
    - Exec time: [0.04, 0.12] s

  * igt@gem_mmap_gtt@basic-read-write:
    - Statuses : 7 pass(s)
    - Exec time: [0.01, 0.05] s

  * igt@gem_mmap_gtt@basic-read-write-distinct:
    - Statuses : 7 pass(s)
    - Exec time: [0.01, 0.05] s

  * igt@gem_mmap_gtt@basic-short:
    - Statuses : 7 pass(s)
    - Exec time: [0.02, 0.07] s

  * igt@gem_mmap_gtt@basic-small-bo:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_gtt@basic-small-bo-tiledx:
    - Statuses : 7 pass(s)
    - Exec time: [0.23, 0.86] s

  * igt@gem_mmap_gtt@basic-small-bo-tiledy:
    - Statuses : 7 pass(s)
    - Exec time: [0.23, 0.79] s

  * igt@gem_mmap_gtt@basic-small-copy:
    - Statuses : 7 pass(s)
    - Exec time: [0.40, 3.18] s

  * igt@gem_mmap_gtt@basic-small-copy-odd:
    - Statuses : 7 pass(s)
    - Exec time: [0.70, 4.22] s

  * igt@gem_mmap_gtt@basic-small-copy-xy:
    - Statuses : 6 pass(s)
    - Exec time: [0.98, 4.56] s

  * igt@gem_mmap_gtt@basic-wc:
    - Statuses : 6 pass(s)
    - Exec time: [0.64] s

  * igt@gem_mmap_gtt@basic-write:
    - Statuses : 7 pass(s)
    - Exec time: [0.09, 0.50] s

  * igt@gem_mmap_gtt@basic-write-cpu-read-gtt:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 0.31] s

  * igt@gem_mmap_gtt@basic-write-gtt:
    - Statuses : 7 pass(s)
    - Exec time: [0.11, 0.81] s

  * igt@gem_mmap_gtt@basic-write-read:
    - Statuses : 7 pass(s)
    - Exec time: [0.01, 0.05] s

  * igt@gem_mmap_gtt@basic-write-read-distinct:
    - Statuses : 7 pass(s)
    - Exec time: [0.01, 0.06] s

  * igt@gem_mmap_gtt@big-bo:
    - Statuses : 7 pass(s)
    - Exec time: [0.27, 1.03] s

  * igt@gem_mmap_gtt@big-bo-tiledx:
    - Statuses : 7 pass(s)
    - Exec time: [0.49, 1.92] s

  * igt@gem_mmap_gtt@big-bo-tiledy:
    - Statuses : 7 pass(s)
    - Exec time: [0.31, 1.18] s

  * igt@gem_mmap_gtt@big-copy:
    - Statuses : 7 pass(s)
    - Exec time: [1.37, 11.29] s

  * igt@gem_mmap_gtt@big-copy-odd:
    - Statuses : 7 pass(s)
    - Exec time: [1.54, 12.40] s

  * igt@gem_mmap_gtt@big-copy-xy:
    - Statuses : 7 pass(s)
    - Exec time: [1.54, 16.49] s

  * igt@gem_mmap_gtt@coherency:
    - Statuses : 3 pass(s) 4 skip(s)
    - Exec time: [0.0, 0.09] s

  * igt@gem_mmap_gtt@fault-concurrent:
    - Statuses : 7 pass(s)
    - Exec time: [2.69, 3.85] s

  * igt@gem_mmap_gtt@hang:
    - Statuses : 7 pass(s)
    - Exec time: [5.42, 5.47] s

  * igt@gem_mmap_gtt@medium-copy:
    - Statuses : 7 pass(s)
    - Exec time: [0.94, 6.70] s

  * igt@gem_mmap_gtt@medium-copy-odd:
    - Statuses : 7 pass(s)
    - Exec time: [0.83, 6.26] s

  * igt@gem_mmap_gtt@medium-copy-xy:
    - Statuses : 7 pass(s)
    - Exec time: [0.82, 8.28] s

  * igt@gem_mmap_gtt@zero-extend:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@gem_mmap_offset@bad-extensions:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_mmap_offset@bad-flags:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_mmap_offset@bad-object:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_mmap_offset@basic-uaf:
    - Statuses : 7 pass(s)
    - Exec time: [0.00] s

  * igt@gem_mmap_offset@clear:
    - Statuses : 7 pass(s)
    - Exec time: [25.59, 35.15] s

  * igt@gem_mmap_offset@close-race:
    - Statuses : 7 pass(s)
    - Exec time: [20.06, 20.18] s

  * igt@gem_mmap_offset@isolation:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_mmap_offset@open-flood:
    - Statuses : 7 pass(s)
    - Exec time: [21.50, 21.58] s

  * igt@gem_mmap_offset@pf-nonblock:
    - Statuses : 7 pass(s)
    - Exec time: [0.00, 0.01] s

  * igt@gem_mmap_wc@close:
    - Statuses : 7 pass(s)
    - Exec time: [0.04, 0.14] s

  * igt@gem_mmap_wc@coherency:
    - Statuses : 7 pass(s)
    - Exec time: [0.09, 0.28] s

  * igt@gem_mmap_wc@copy:
    - Statuses : 7 pass(s)
    - Exec time: [0.14, 0.41] s

  * igt@gem_mmap_wc@fault-concurrent:
    - Statuses : 7 pass(s)
    - Exec time: [0.54, 2.32] s

  * igt@gem_mmap_wc@invalid-flags:
    - Statuses : 7 pass(s)
    - Exec time: [0.0, 0.00] s

  * igt@gem_mmap_wc@read:
    - Statuses : 7 pass(s)
    - Exec time: [0.05, 0.20] s

  * igt@gem_mmap_wc@read-write:
    - Statuses : 7 pass(s)
    - Exec time: [0.01, 0.10] s

  * igt@gem_mmap_wc@read-write-distinct:
    - Statuses : 7 pass(s)
    - Exec time: [0.01, 0.06] s

  * igt@gem_mmap_wc@set-cache-level:
    - Statuses : 2 pass(s)
    - Exec time: [0.00] s

  * igt@gem_mmap_wc@write:
    - Statuses : 7 pass(s)
    - Exec time: [0.07, 0.26] s

  * igt@gem_mmap_wc@write-cpu-read-wc:
    - Statuses : 7 pass(s)
    - Exec time: [0.10, 0.35] s

  * igt@gem_mmap_wc@write-cpu-read-wc-unflushed:
    - Statuses : 7 pass(s)
    - Exec time: [0.11, 0.34] s

  * igt@gem_mmap_wc@write-gtt-read-wc:
    - Statuses : 7 pass(s)
    - Exec time: [0.10, 0.56] s

  * igt@gem_mmap_wc@write-read:
    - Statuses : 7 pass(s)
    - Exec time: [0.01, 0.05] s

  * igt@gem_mmap_wc@write-read-distinct:
    - Statuses : 7 pass(s)
    - Exec time: [0.01, 0.05] s

  * igt@gem_partial_pwrite_pread@reads:
    - Statuses : 7 pass(s)
    - Exec time: [0.65, 5.63] s

  * igt@gem_partial_pwrite_pread@reads-display:
    - Statuses : 7 pass(s)
    - Exec time: [0.65, 6.58] s

  * igt@gem_partial_pwrite_pread@reads-snoop:
    - Statuses : 7 pass(s)
    - Exec time: [0.66, 5.92] s

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - Statuses : 7 pass(s)
    - Exec time: [0.64, 5.85] s

  * igt@gem_partial_pwrite_pread@write:
    - Statuses : 7 pass(s)
    - Exec time: [3.19, 13.22] s

  * igt@gem_partial_pwrite_pread@write-display:
    - Statuses : 2 pass(s)
    - Exec time: [3.24, 3.25] s

  * igt@gem_partial_pwrite_pread@write-snoop:
    - Statuses : 6 pass(s)
    - Exec time: [3.21, 13.62] s

  * igt@gem_partial_pwrite_pread@write-uncached:
    - Statuses : 7 pass(s)
    - Exec time: [3.21, 13.38] s

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - Statuses : 7 pass(s)
    - Exec time: [3.85, 19.19] s

  * igt@gem_partial_pwrite_pread@writes-after-reads-display:
    - Statuses : 7 pass(s)
    - Exec time: [3.82, 19.06] s

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - Statuses : 6 pass(s)
    - Exec time: [3.88, 19.63] s

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - Statuses : 7 pass(s)
    - Exec time: [3.82, 19.01] s

  * igt@gem_pipe_control_store_loop@fresh-buffer:
    - Statuses : 7 pass(s)
    - Exec time: [2.15] s

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - Statuses : 2 pass(s)
    - Exec time: [2.15] s

  * igt@gem_ppgtt@blt-vs-render-ctx0:
    - Statuses :
    - Exec time: [None] s

  * igt@gem_ppgtt@blt-vs-render-ctxn:
    - Statuses : 7 pass(s)
    - Exec time: [32.68, 33.73] s

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 0.01] s

  * igt@gem_pread@display:
    - Statuses : 7 pass(s)
    - Exec time: [3.71, 16.13] s

  * igt@gem_pread@snoop:
    - Statuses : 7 pass(s)
    - Exec time: [3.64, 15.81] s

  * igt@gem_pread@uncached:
    - Statuses : 7 pass(s)
    - Exec time: [3.60, 15.72] s

  * igt@gem_pwrite_snooped:
    - Statuses : 7 pass(s)
    - Exec time: [0.11, 0.29] s

  * igt@gem_readwrite@beyond-eob:
    - Statuses : 7 pass(s)
    - Exec time: [0.0] s

  * igt@gem_readwrite@new-obj:
    - Statuses : 2 pass(s)
    - Exec time: [0.0] s

  * igt@gem_readwrite@read-bad-handle:
    - Statuses : 7 pass(s)
    - Exec time: [0

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19491/index.html

--===============5027745582469508889==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/dp/mst: Export drm_dp_get_vc_payload_bw()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86267/">https://patchwork.freedesktop.org/series/86267/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19491/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19491/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9680_full -&gt; Patchwork_19491_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9680_full and Patchwork_19491_full:</p>
<h3>New IGT tests (1749)</h3>
<ul>
<li>
<p>igt@core_auth@many-magics:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.15, 0.85] s</li>
</ul>
</li>
<li>
<p>igt@core_getclient:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.07, 0.18] s</li>
</ul>
</li>
<li>
<p>igt@core_getstats:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.07, 0.19] s</li>
</ul>
</li>
<li>
<p>igt@core_getversion:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.07, 0.18] s</li>
</ul>
</li>
<li>
<p>igt@core_setmaster_vs_auth:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.06, 0.18] s</li>
</ul>
</li>
<li>
<p>igt@debugfs_test@read_all_entries_display_off:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.07, 1.13] s</li>
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
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [10.74, 10.75] s</li>
</ul>
</li>
<li>
<p>igt@drm_import_export@import-close-race-flink:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [10.74, 10.75] s</li>
</ul>
</li>
<li>
<p>igt@drm_import_export@import-close-race-prime:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [10.74] s</li>
</ul>
</li>
<li>
<p>igt@drm_import_export@prime:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [10.74] s</li>
</ul>
</li>
<li>
<p>igt@drm_read@empty-block:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [1.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_read@empty-nonblock:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_read@fault-buffer:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@drm_read@invalid-buffer:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_read@short-buffer-block:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@drm_read@short-buffer-nonblock:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@dumb_buffer@create-clear:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [37.43, 47.67] s</li>
</ul>
</li>
<li>
<p>igt@dumb_buffer@create-valid-dumb:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@dumb_buffer@invalid-bpp:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@dumb_buffer@map-invalid-size:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
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
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.36, 4.37] s</li>
</ul>
</li>
<li>
<p>igt@gem_blits@basic:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [1.44, 14.28] s</li>
</ul>
</li>
<li>
<p>igt@gem_busy@close-race:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [21.71, 22.45] s</li>
</ul>
</li>
<li>
<p>igt@gem_caching@read-writes:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [4.43, 22.74] s</li>
</ul>
</li>
<li>
<p>igt@gem_caching@reads:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.66, 5.61] s</li>
</ul>
</li>
<li>
<p>igt@gem_caching@writes:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [2.31, 13.42] s</li>
</ul>
</li>
<li>
<p>igt@gem_close@basic:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_close@many-handles-one-vma:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.02, 0.10] s</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-invalid-size:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-valid-nonaligned:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_bad_destroy@double-destroy:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_bad_destroy@invalid-ctx:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_bad_destroy@invalid-default-ctx:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_bad_destroy@invalid-pad:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-invalid-context:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_freq@sysfs:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [4.80, 4.99] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@basic:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@basic-default:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@get-priority-new-ctx:</p>
<ul>
<li>Statuses : 5 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@invalid-ctx-get:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
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
<li>Statuses : 7 pass(s)</li>
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
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@non-root-set:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.01, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@non-root-set-no-zeromap:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.01, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@root-set:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@root-set-no-zeromap-disabled:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@root-set-no-zeromap-enabled:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-invalid-size:</p>
<ul>
<li>Statuses : 5 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-not-supported:</p>
<ul>
<li>Statuses : 2 pass(s) 5 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_param@set-priority-range:</p>
<ul>
<li>Statuses : 5 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 0.06] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@banned:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.05, 0.43] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@execbuf:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.02, 0.07] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@hibernate:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [12.60, 18.97] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-10ms:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.46, 2.39] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-1us:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.38, 2.63] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [1.07, 36.51] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [1.11, 36.51] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [2.02, 36.49] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-external:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.03, 0.24] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-immediate:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.41, 2.13] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-internal-10ms:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.04, 0.26] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-internal-1us:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.03, 0.26] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-internal-immediate:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.03, 0.26] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [1.26, 2.44] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [28.42, 39.36] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@suspend:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [10.82, 12.64] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@throttle:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.02, 0.07] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [28.41, 40.12] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-10ms:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.04, 0.16] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-1us:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.02, 0.14] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-immediate:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.03, 0.16] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-wedge-10ms:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.05, 0.27] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-wedge-1us:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.03, 0.27] s</li>
</ul>
</li>
<li>
<p>igt@gem_eio@wait-wedge-immediate:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.03, 0.27] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_alignment@single:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_await@wide-all:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [21.80, 22.56] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_await@wide-contexts:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [21.61, 22.35] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-chain:</p>
<ul>
<li>Statuses : 4 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 7.10] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-semaphore:</p>
<ul>
<li>Statuses : 5 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 4.55] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hang:</p>
<ul>
<li>Statuses : 5 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 4.56] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@userptr:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@forked:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [20.06, 20.13] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@madvise:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [20.03, 20.76] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-busy-all:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.01, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@basic-wait-all:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.01, 0.04] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>Statuses : 4 pass(s) 3 skip(s)</li>
<li>Exec time: [0.0, 5.89] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-uc:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [5.62, 6.09] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-wb:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [5.56, 6.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-pro-default:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [5.41, 5.43] s</li>
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
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [5.41, 5.50] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-rw-default:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [5.41, 5.49] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-set-default:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [5.41, 5.46] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-pro-default:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [5.41, 5.49] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-prw-default:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [5.41, 5.46] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-before-default:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [5.41, 5.46] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-default:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [5.41, 5.48] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-before-default:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [5.41, 5.46] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-default:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [5.42, 5.47] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-set-default:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [5.40, 5.47] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_nop@basic-parallel:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [2.78, 3.34] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_nop@basic-sequential:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [2.77, 3.35] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_nop@basic-series:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [2.75, 3.29] s</li>
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
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
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
<li>Statuses : 7 pass(s)</li>
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
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-bsd-ring:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-bsd1-flag-on-blt:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-bsd1-flag-on-render:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-bsd1-flag-on-vebox:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-bsd2-flag-on-blt:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-bsd2-flag-on-render:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
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
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-flag:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@invalid-ring:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
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
<li>Statuses : 7 skip(s)</li>
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
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rel-constants-invalid-rel-gen5:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rel-constants-invalid-ring:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rs-invalid:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>Statuses : 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>Statuses : 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-root:</p>
<ul>
<li>Statuses : 7 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@sol-reset-invalid:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@sol-reset-not-gen7:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-active:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-active:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.11, 0.17] s</li>
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
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.11, 0.16] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-noreloc:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-active:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.11, 0.17] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-noreloc:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-wc:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-wc-active:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.11, 0.21] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-wc-noreloc:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-active:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.11, 0.18] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-active:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.11, 0.16] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-noreloc:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-noreloc:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-active:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.11, 0.16] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-noreloc:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
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
<li>Exec time: [0.11, 0.16] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-range:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.01, 0.11] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-range-active:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.01, 0.26] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-softpin:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-active:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.11, 0.16] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu-active:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.11, 0.16] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu-noreloc:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt-active:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.11, 0.16] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt-noreloc:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-noreloc:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-active:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.11, 0.16] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-noreloc:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu-active:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.11, 0.17] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu-noreloc:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-active:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.11, 0.16] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-noreloc:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.01, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.11, 0.16] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-active:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.11, 0.16] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-noreloc:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@smoketest-all:</p>
<ul>
<li>Statuses : 5 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 32.32] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.23, 1.52] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3-devices:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [6.06, 10.64] s</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [7.05, 11.82] s</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [1.13, 1.70] s</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-none:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [1.09, 1.23] s</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-threaded-none:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [1.21, 3.08] s</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-threaded-x:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-threaded-y:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-x:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [1.10, 1.30] s</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-y:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [1.08, 1.34] s</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@2-spare-fences:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [2.15, 2.16] s</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [2.15, 2.16] s</li>
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
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [2.15, 2.20] s</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [2.15, 2.16] s</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@too-many-fences:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [2.15, 2.17] s</li>
</ul>
</li>
<li>
<p>igt@gem_flink_race@flink_close:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [5.01, 5.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_flink_race@flink_name:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [5.37] s</li>
</ul>
</li>
<li>
<p>igt@gem_gpgpu_fill:</p>
<ul>
<li>Statuses : 1 pass(s) 1 skip(s)</li>
<li>Exec time: [0.09, 0.10] s</li>
</ul>
</li>
<li>
<p>igt@gem_gtt_cpu_tlb:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.09, 0.32] s</li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@interruptible:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [1.64, 24.88] s</li>
</ul>
</li>
<li>
<p>igt@gem_linear_blits@normal:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [1.46, 19.07] s</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-after-mmap:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.02] s</li>
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
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-pwrite:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.08, 0.29] s</li>
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
<p>igt@gem_mmap@basic-small-bo:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.58, 2.17] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@big-bo:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.67, 2.52] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@short-mmap:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-copy:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.14, 0.89] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-read:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.04, 0.12] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-read-write:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.01, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-read-write-distinct:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.01, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-short:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.02, 0.07] s</li>
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
<li>Exec time: [0.23, 0.86] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-bo-tiledy:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.23, 0.79] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-copy:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.40, 3.18] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-copy-odd:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.70, 4.22] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-copy-xy:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.98, 4.56] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-wc:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [0.64] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.09, 0.50] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write-cpu-read-gtt:</p>
<ul>
<li>Statuses : 5 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 0.31] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-write-gtt:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.11, 0.81] s</li>
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
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.01, 0.06] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-bo:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.27, 1.03] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-bo-tiledx:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.49, 1.92] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-bo-tiledy:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.31, 1.18] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [1.37, 11.29] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [1.54, 12.40] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-xy:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [1.54, 16.49] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@coherency:</p>
<ul>
<li>Statuses : 3 pass(s) 4 skip(s)</li>
<li>Exec time: [0.0, 0.09] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [2.69, 3.85] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@hang:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [5.42, 5.47] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.94, 6.70] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-odd:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.83, 6.26] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy-xy:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.82, 8.28] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@zero-extend:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@bad-extensions:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
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
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@basic-uaf:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [25.59, 35.15] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@close-race:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [20.06, 20.18] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@isolation:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@open-flood:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [21.50, 21.58] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@pf-nonblock:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.00, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@close:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.04, 0.14] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@coherency:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.09, 0.28] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@copy:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.14, 0.41] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@fault-concurrent:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.54, 2.32] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@invalid-flags:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.05, 0.20] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read-write:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.01, 0.10] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@read-write-distinct:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.01, 0.06] s</li>
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
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.07, 0.26] s</li>
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
<li>Exec time: [0.11, 0.34] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-gtt-read-wc:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.10, 0.56] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-read:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.01, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-read-distinct:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.01, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.65, 5.63] s</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-display:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.65, 6.58] s</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-snoop:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.66, 5.92] s</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.64, 5.85] s</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [3.19, 13.22] s</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-display:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [3.24, 3.25] s</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-snoop:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [3.21, 13.62] s</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-uncached:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [3.21, 13.38] s</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [3.85, 19.19] s</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-display:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [3.82, 19.06] s</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-snoop:</p>
<ul>
<li>Statuses : 6 pass(s)</li>
<li>Exec time: [3.88, 19.63] s</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [3.82, 19.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_pipe_control_store_loop@fresh-buffer:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
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
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@blt-vs-render-ctxn:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [32.68, 33.73] s</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@flink-and-close-vma-leak:</p>
<ul>
<li>Statuses : 5 pass(s) 2 skip(s)</li>
<li>Exec time: [0.0, 0.01] s</li>
</ul>
</li>
<li>
<p>igt@gem_pread@display:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [3.71, 16.13] s</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [3.64, 15.81] s</li>
</ul>
</li>
<li>
<p>igt@gem_pread@uncached:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [3.60, 15.72] s</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite_snooped:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.11, 0.29] s</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@new-obj:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@read-bad-handle:</p>
<ul>
<li>Statuses : 7 pass(s)</li>
<li>Exec time: [0</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5027745582469508889==--

--===============1559322962==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1559322962==--
