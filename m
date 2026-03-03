Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cFlMMO5Xpmk2OQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 04:39:26 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB5F1E8853
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 04:39:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F73910E619;
	Tue,  3 Mar 2026 03:39:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 523DB10E614;
 Tue,  3 Mar 2026 03:39:21 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7535833607422980040=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EFull=3A_success_for_series_starting_with_=5B?=
 =?utf-8?q?PATCHv3=2C1/2=5D_drm/i915/dp=3A_Read_ALPM_caps_after_DPCD_init?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 03 Mar 2026 03:39:21 -0000
Message-ID: <177250916134.306092.2965465812920927994@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260302132602.480408-1-arun.r.murthy@intel.com>
In-Reply-To: <20260302132602.480408-1-arun.r.murthy@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Queue-Id: 4DB5F1E8853
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.11 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[emeril.freedesktop.org];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[intel-gfx@lists.freedesktop.org];
	R_DKIM_NA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_SPAM(0.00)[0.342];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

--===============7535833607422980040==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [PATCHv3,1/2] drm/i915/dp: Read ALPM caps after DPCD init
URL   : https://patchwork.freedesktop.org/series/162419/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_18073_full -> Patchwork_162419v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

New tests
---------

  New tests have been introduced between CI_DRM_18073_full and Patchwork_162419v1_full:

### New IGT tests (32) ###

  * igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-a-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-b-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-c-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-d-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-a-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-c-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-d-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-a-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-b-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-c-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-d-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc@pipe-c-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-a-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-b-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-c-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-d-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs@pipe-a-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs@pipe-b-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs@pipe-c-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs@pipe-d-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-c-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-d-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-a-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-c-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-d-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_162419v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-dg1:          NOTRUN -> [SKIP][1] ([i915#8411])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-rkl:          NOTRUN -> [SKIP][2] ([i915#8411])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@device_reset@cold-reset-bound:
    - shard-rkl:          NOTRUN -> [SKIP][3] ([i915#11078])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@device_reset@cold-reset-bound.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-tglu-1:       NOTRUN -> [SKIP][4] ([i915#11078])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@gem_basic@multigpu-create-close:
    - shard-tglu-1:       NOTRUN -> [SKIP][5] ([i915#7697])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-rkl:          NOTRUN -> [SKIP][6] ([i915#3555] / [i915#9323])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-tglu:         NOTRUN -> [SKIP][7] ([i915#9323])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-tglu:         NOTRUN -> [SKIP][8] ([i915#7697])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-rkl:          NOTRUN -> [SKIP][9] ([i915#6335])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-tglu-1:       NOTRUN -> [SKIP][10] ([i915#6335])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-glk:          NOTRUN -> [INCOMPLETE][11] ([i915#13356]) +1 other test incomplete
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-glk3/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_ctx_persistence@heartbeat-close:
    - shard-dg1:          NOTRUN -> [SKIP][12] ([i915#8555])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@gem_ctx_persistence@heartbeat-close.html

  * igt@gem_ctx_persistence@legacy-engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][13] ([i915#1099])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-snb4/igt@gem_ctx_persistence@legacy-engines-mixed.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-tglu-1:       NOTRUN -> [SKIP][14] ([i915#280])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@gem_ctx_sseu@invalid-sseu.html
    - shard-dg1:          NOTRUN -> [SKIP][15] ([i915#280])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-rkl:          NOTRUN -> [SKIP][16] ([i915#280]) +1 other test skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@gem_ctx_sseu@mmap-args.html
    - shard-tglu:         NOTRUN -> [SKIP][17] ([i915#280])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg1:          NOTRUN -> [SKIP][18] ([i915#4771])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-dg1:          NOTRUN -> [SKIP][19] ([i915#4036])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-tglu-1:       NOTRUN -> [SKIP][20] ([i915#4525])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#4525])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@gem_exec_balancer@parallel-out-fence.html
    - shard-tglu:         NOTRUN -> [SKIP][22] ([i915#4525])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_create@forked@lmem0:
    - shard-dg1:          [PASS][23] -> [ABORT][24] ([i915#15759]) +2 other tests abort
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-19/igt@gem_exec_create@forked@lmem0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-19/igt@gem_exec_create@forked@lmem0.html

  * igt@gem_exec_flush@basic-uc-prw-default:
    - shard-dg1:          NOTRUN -> [SKIP][25] ([i915#3539])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@gem_exec_flush@basic-uc-prw-default.html

  * igt@gem_exec_flush@basic-wb-prw-default:
    - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#3539] / [i915#4852]) +1 other test skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@gem_exec_flush@basic-wb-prw-default.html

  * igt@gem_exec_flush@basic-wb-ro-before-default:
    - shard-dg1:          NOTRUN -> [SKIP][27] ([i915#3539] / [i915#4852])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@gem_exec_flush@basic-wb-ro-before-default.html

  * igt@gem_exec_params@secure-non-master:
    - shard-rkl:          NOTRUN -> [SKIP][28] +8 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_reloc@basic-write-read:
    - shard-dg1:          NOTRUN -> [SKIP][29] ([i915#3281]) +8 other tests skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@gem_exec_reloc@basic-write-read.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][30] ([i915#3281]) +6 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_exec_reloc@basic-write-wc-active:
    - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#3281]) +2 other tests skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@gem_exec_reloc@basic-write-wc-active.html

  * igt@gem_exec_schedule@preempt-queue-contexts:
    - shard-dg2:          NOTRUN -> [SKIP][32] ([i915#4537] / [i915#4812])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@gem_exec_schedule@preempt-queue-contexts.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          [PASS][33] -> [INCOMPLETE][34] ([i915#13356]) +1 other test incomplete
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg2-3/igt@gem_exec_suspend@basic-s0.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-5/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-tglu:         NOTRUN -> [SKIP][35] ([i915#4613])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#4613])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-glk:          NOTRUN -> [SKIP][37] ([i915#4613]) +1 other test skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-glk2/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][38] ([i915#12193])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:
    - shard-dg1:          NOTRUN -> [SKIP][39] ([i915#4565])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][40] ([i915#4613]) +1 other test skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_mmap@big-bo:
    - shard-dg1:          NOTRUN -> [SKIP][41] ([i915#4083]) +3 other tests skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@gem_mmap@big-bo.html

  * igt@gem_mmap_gtt@basic-copy:
    - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#4077])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@gem_mmap_gtt@basic-copy.html

  * igt@gem_mmap_gtt@basic-small-bo-tiledy:
    - shard-dg1:          NOTRUN -> [SKIP][43] ([i915#4077]) +3 other tests skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@gem_mmap_gtt@basic-small-bo-tiledy.html

  * igt@gem_mmap_wc@write-wc-read-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][44] ([i915#4083])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@gem_mmap_wc@write-wc-read-gtt.html

  * igt@gem_pread@bench:
    - shard-dg1:          NOTRUN -> [SKIP][45] ([i915#3282]) +2 other tests skip
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@gem_pread@bench.html

  * igt@gem_pread@exhaustion:
    - shard-glk11:        NOTRUN -> [WARN][46] ([i915#2658])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-glk11/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@hw-rejects-pxp-context:
    - shard-rkl:          NOTRUN -> [SKIP][47] ([i915#13717])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@gem_pxp@hw-rejects-pxp-context.html

  * igt@gem_pxp@protected-raw-src-copy-not-readible:
    - shard-dg1:          NOTRUN -> [SKIP][48] ([i915#4270]) +1 other test skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@gem_pxp@protected-raw-src-copy-not-readible.html

  * igt@gem_pxp@verify-pxp-stale-buf-execution:
    - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#4270])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@gem_pxp@verify-pxp-stale-buf-execution.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#5190] / [i915#8428])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg1:          NOTRUN -> [SKIP][51] ([i915#4079])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#4079])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_tiled_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          NOTRUN -> [SKIP][53] ([i915#3282])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@gem_tiled_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-tglu-1:       NOTRUN -> [SKIP][54] ([i915#3297]) +1 other test skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@gem_userptr_blits@coherency-sync.html
    - shard-dg1:          NOTRUN -> [SKIP][55] ([i915#3297])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#3297] / [i915#3323])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy:
    - shard-dg2:          NOTRUN -> [SKIP][57] ([i915#3297] / [i915#4880])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-busy.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-tglu:         NOTRUN -> [SKIP][58] ([i915#3297])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gem_workarounds@suspend-resume:
    - shard-rkl:          [PASS][59] -> [INCOMPLETE][60] ([i915#13356])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-7/igt@gem_workarounds@suspend-resume.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@gem_workarounds@suspend-resume.html

  * igt@gen3_render_linear_blits:
    - shard-dg2:          NOTRUN -> [SKIP][61] +2 other tests skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-1/igt@gen3_render_linear_blits.html

  * igt@gen9_exec_parse@bb-large:
    - shard-tglu:         NOTRUN -> [SKIP][62] ([i915#2527] / [i915#2856])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-tglu-1:       NOTRUN -> [SKIP][63] ([i915#2527] / [i915#2856]) +2 other tests skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-rkl:          NOTRUN -> [SKIP][64] ([i915#2527]) +2 other tests skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-far.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-dg2:          NOTRUN -> [SKIP][65] ([i915#2856])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@gen9_exec_parse@bb-start-out.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-dg1:          NOTRUN -> [SKIP][66] ([i915#2527])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_drm_fdinfo@busy-idle-check-all@vcs1:
    - shard-dg1:          NOTRUN -> [SKIP][67] ([i915#11527]) +5 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@i915_drm_fdinfo@busy-idle-check-all@vcs1.html

  * igt@i915_drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-dg1:          NOTRUN -> [SKIP][68] ([i915#14073]) +5 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@i915_drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@i915_drm_fdinfo@virtual-busy-all:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#14118])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@i915_drm_fdinfo@virtual-busy-all.html

  * igt@i915_module_load@fault-injection@intel_connector_register:
    - shard-glk:          NOTRUN -> [ABORT][70] ([i915#15342]) +1 other test abort
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-glk1/igt@i915_module_load@fault-injection@intel_connector_register.html

  * igt@i915_module_load@resize-bar:
    - shard-dg2:          [PASS][71] -> [DMESG-WARN][72] ([i915#14545])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg2-11/igt@i915_module_load@resize-bar.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-7/igt@i915_module_load@resize-bar.html
    - shard-dg1:          NOTRUN -> [SKIP][73] ([i915#7178])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_freq_api@freq-reset:
    - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#8399])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@i915_pm_freq_api@freq-reset.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][75] ([i915#8399])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [PASS][76] -> [INCOMPLETE][77] ([i915#13356] / [i915#13820]) +1 other test incomplete
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg2-8/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-6/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-tglu:         NOTRUN -> [WARN][78] ([i915#13790] / [i915#2681]) +1 other test warn
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-dg1:          [PASS][79] -> [DMESG-WARN][80] ([i915#4391] / [i915#4423])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-13/igt@i915_suspend@basic-s3-without-i915.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-13/igt@i915_suspend@basic-s3-without-i915.html

  * igt@i915_suspend@debugfs-reader:
    - shard-rkl:          [PASS][81] -> [INCOMPLETE][82] ([i915#4817])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-7/igt@i915_suspend@debugfs-reader.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-4/igt@i915_suspend@debugfs-reader.html

  * igt@kms_3d@basic:
    - shard-mtlp:         [PASS][83] -> [SKIP][84] ([i915#15726])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-mtlp-5/igt@kms_3d@basic.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-mtlp-1/igt@kms_3d@basic.html

  * igt@kms_addfb_basic@addfb25-x-tiled-legacy:
    - shard-dg1:          NOTRUN -> [SKIP][85] ([i915#4212])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@kms_addfb_basic@addfb25-x-tiled-legacy.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-tglu-1:       NOTRUN -> [SKIP][86] ([i915#12454] / [i915#12712])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-tglu-1:       NOTRUN -> [SKIP][87] ([i915#9531])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#1769] / [i915#3555])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
    - shard-glk10:        NOTRUN -> [SKIP][89] ([i915#1769])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-glk10/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-tglu-1:       NOTRUN -> [SKIP][90] ([i915#1769] / [i915#3555])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-tglu-1:       NOTRUN -> [SKIP][91] ([i915#5286]) +3 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#5286]) +4 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
    - shard-tglu:         NOTRUN -> [SKIP][93] ([i915#5286]) +1 other test skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][94] ([i915#4538] / [i915#5286])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-dg1:          NOTRUN -> [SKIP][95] ([i915#5286])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         [PASS][96] -> [FAIL][97] ([i915#15733] / [i915#5138])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][98] ([i915#3638]) +1 other test skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-tglu:         NOTRUN -> [SKIP][99] ([i915#3828])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#3638]) +4 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][101] ([i915#4538] / [i915#5190]) +1 other test skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_big_fb@y-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][102] ([i915#4538]) +3 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][103] ([i915#6095]) +165 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][104] ([i915#10307] / [i915#10434] / [i915#6095]) +2 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-4/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][105] ([i915#12313]) +1 other test skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-1:
    - shard-glk10:        NOTRUN -> [SKIP][106] +93 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-glk10/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#12313])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
    - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#12313])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#6095]) +74 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-c-dp-3 (NEW):
    - shard-dg2:          NOTRUN -> [SKIP][110] ([i915#10307] / [i915#6095]) +136 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-c-dp-3.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][111] ([i915#6095]) +39 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc:
    - shard-glk11:        NOTRUN -> [SKIP][112] +150 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-glk11/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][113] ([i915#6095]) +39 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#14098] / [i915#6095]) +45 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-dg1:          NOTRUN -> [SKIP][115] ([i915#12313])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][116] ([i915#6095]) +43 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#14544] / [i915#6095]) +6 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][118] ([i915#14098] / [i915#14544] / [i915#6095]) +3 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_cdclk@mode-transition:
    - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#3742])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@kms_cdclk@mode-transition.html
    - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#3742])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#13783]) +3 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-1/igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3.html

  * igt@kms_chamelium_frames@dp-crc-single:
    - shard-tglu-1:       NOTRUN -> [SKIP][122] ([i915#11151] / [i915#7828]) +3 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_chamelium_frames@dp-crc-single.html

  * igt@kms_chamelium_frames@dp-frame-dump:
    - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#11151] / [i915#7828]) +1 other test skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_chamelium_frames@dp-frame-dump.html

  * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
    - shard-dg1:          NOTRUN -> [SKIP][124] ([i915#11151] / [i915#7828]) +2 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html

  * igt@kms_chamelium_frames@vga-frame-dump:
    - shard-tglu:         NOTRUN -> [SKIP][125] ([i915#11151] / [i915#7828]) +2 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_chamelium_frames@vga-frame-dump.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#11151] / [i915#7828]) +4 other tests skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][127] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@atomic-hdcp14:
    - shard-snb:          NOTRUN -> [SKIP][128] +18 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-snb4/igt@kms_content_protection@atomic-hdcp14.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][129] ([i915#15330] / [i915#3116] / [i915#3299])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_content_protection@dp-mst-lic-type-0.html
    - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#15330] / [i915#3116])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-1-suspend-resume:
    - shard-dg1:          NOTRUN -> [SKIP][131] ([i915#15330])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html

  * igt@kms_content_protection@lic-type-0:
    - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#6944] / [i915#9424])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@lic-type-0-hdcp14:
    - shard-tglu:         NOTRUN -> [SKIP][133] ([i915#6944])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_content_protection@lic-type-0-hdcp14.html

  * igt@kms_content_protection@lic-type-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][134] ([i915#6944] / [i915#9424])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@srm:
    - shard-dg2:          NOTRUN -> [FAIL][135] ([i915#7173]) +2 other tests fail
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_content_protection@srm.html
    - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#6944] / [i915#7118])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent-hdcp14:
    - shard-dg1:          NOTRUN -> [SKIP][137] ([i915#6944])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@kms_content_protection@uevent-hdcp14.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-tglu-1:       NOTRUN -> [SKIP][138] ([i915#13049])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-32x10:
    - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#3555])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-32x10.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-tglu-1:       NOTRUN -> [SKIP][140] ([i915#3555]) +1 other test skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-random-256x85:
    - shard-rkl:          [PASS][141] -> [FAIL][142] ([i915#13566])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@kms_cursor_crc@cursor-random-256x85.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@kms_cursor_crc@cursor-random-256x85.html

  * igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [FAIL][143] ([i915#13566])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#13049]) +1 other test skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-32x32:
    - shard-tglu:         NOTRUN -> [SKIP][145] ([i915#3555]) +2 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_cursor_crc@cursor-sliding-32x32.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#4103]) +1 other test skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          NOTRUN -> [FAIL][147] ([i915#15764])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-tglu:         NOTRUN -> [SKIP][148] ([i915#4103])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-dg1:          NOTRUN -> [SKIP][149] ([i915#9723])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-tglu:         NOTRUN -> [SKIP][150] ([i915#1769] / [i915#3555] / [i915#3804])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#3804])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html
    - shard-tglu:         NOTRUN -> [SKIP][152] ([i915#3804])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dp_link_training@non-uhbr-sst:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#13749])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@kms_dp_link_training@non-uhbr-sst.html

  * igt@kms_dp_link_training@uhbr-sst:
    - shard-tglu-1:       NOTRUN -> [SKIP][154] ([i915#13748])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_dp_link_training@uhbr-sst.html

  * igt@kms_dsc@dsc-basic:
    - shard-tglu:         NOTRUN -> [SKIP][155] ([i915#3555] / [i915#3840]) +1 other test skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-5/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-dg1:          NOTRUN -> [SKIP][156] ([i915#3840])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#3840] / [i915#9053])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
    - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#3840] / [i915#9053])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#3955])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#3469])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@display-3x:
    - shard-tglu:         NOTRUN -> [SKIP][161] ([i915#1839])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@psr1:
    - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#658])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@kms_feature_discovery@psr1.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-dg1:          NOTRUN -> [SKIP][163] ([i915#9934]) +2 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#9934]) +1 other test skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][165] ([i915#9934])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][166] -> [TIMEOUT][167] ([i915#14033]) +1 other test timeout
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-snb7/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-snb6/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-tglu-1:       NOTRUN -> [SKIP][168] ([i915#3637] / [i915#9934])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][169] ([i915#3637] / [i915#9934]) +6 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#9934]) +5 other tests skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a3:
    - shard-dg2:          [PASS][171] -> [FAIL][172] ([i915#13027]) +1 other test fail
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg2-6/igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a3.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-1/igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a3.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-glk:          NOTRUN -> [INCOMPLETE][173] ([i915#12745] / [i915#4839])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-glk4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][174] ([i915#12745])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-glk4/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][175] ([i915#15643])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#15643]) +2 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#15643]) +3 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
    - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#15643])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-shrfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][179] ([i915#15104]) +1 other test skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][180] ([i915#8708]) +5 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite:
    - shard-snb:          [PASS][181] -> [SKIP][182] +14 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][183] +17 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-tglu-1:       NOTRUN -> [SKIP][184] +30 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][185] +38 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#1825]) +27 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][187] ([i915#10056])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-glk10/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-blt:
    - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#15102]) +2 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][189] ([i915#8708]) +1 other test skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#15102] / [i915#3458]) +1 other test skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc:
    - shard-tglu-1:       NOTRUN -> [SKIP][191] ([i915#15102]) +10 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-cpu:
    - shard-dg1:          NOTRUN -> [SKIP][192] ([i915#15102]) +1 other test skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-tglu:         NOTRUN -> [SKIP][193] ([i915#15102]) +10 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#15102] / [i915#3023]) +12 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][195] ([i915#5354]) +6 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][196] ([i915#15102] / [i915#3458]) +9 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html

  * igt@kms_hdr@bpc-switch:
    - shard-dg2:          [PASS][197] -> [SKIP][198] ([i915#3555] / [i915#8228])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg2-11/igt@kms_hdr@bpc-switch.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-7/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#13331])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_hdr@brightness-with-hdr.html
    - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#12713])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_hdr@invalid-hdr:
    - shard-dg1:          NOTRUN -> [SKIP][201] ([i915#3555] / [i915#8228])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@kms_hdr@invalid-hdr.html

  * igt@kms_joiner@basic-max-non-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][202] ([i915#13688])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_joiner@basic-max-non-joiner.html
    - shard-rkl:          NOTRUN -> [SKIP][203] ([i915#13688])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@kms_joiner@basic-max-non-joiner.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][204] ([i915#15460])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-dg1:          NOTRUN -> [SKIP][205] ([i915#1839])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier:
    - shard-tglu-1:       NOTRUN -> [SKIP][206] ([i915#15709])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier.html

  * igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping:
    - shard-dg1:          NOTRUN -> [SKIP][207] ([i915#15709])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-4-tiled-modifier:
    - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#15709]) +2 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@kms_plane@pixel-format-4-tiled-modifier.html

  * igt@kms_plane@pixel-format-y-tiled-modifier-source-clamping:
    - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#15709]) +1 other test skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_plane@pixel-format-y-tiled-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-y-tiled-modifier@pipe-b-plane-5:
    - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#15608]) +1 other test skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@kms_plane@pixel-format-y-tiled-modifier@pipe-b-plane-5.html

  * igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping:
    - shard-tglu:         NOTRUN -> [SKIP][211] ([i915#15709]) +1 other test skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping.html

  * igt@kms_plane_alpha_blend@constant-alpha-max:
    - shard-glk11:        NOTRUN -> [FAIL][212] ([i915#10647] / [i915#12169])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-glk11/igt@kms_plane_alpha_blend@constant-alpha-max.html

  * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-hdmi-a-1:
    - shard-glk11:        NOTRUN -> [FAIL][213] ([i915#10647]) +1 other test fail
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-glk11/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-hdmi-a-1.html

  * igt@kms_plane_multiple@2x-tiling-4:
    - shard-tglu:         NOTRUN -> [SKIP][214] ([i915#13958]) +1 other test skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_plane_multiple@2x-tiling-4.html

  * igt@kms_plane_multiple@2x-tiling-yf:
    - shard-rkl:          NOTRUN -> [SKIP][215] ([i915#13958])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@kms_plane_multiple@2x-tiling-yf.html

  * igt@kms_plane_multiple@tiling-4:
    - shard-dg2:          [PASS][216] -> [ABORT][217] ([i915#15759])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg2-4/igt@kms_plane_multiple@tiling-4.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-3/igt@kms_plane_multiple@tiling-4.html

  * igt@kms_plane_multiple@tiling-4@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [ABORT][218] ([i915#15759])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-3/igt@kms_plane_multiple@tiling-4@pipe-b-hdmi-a-3.html

  * igt@kms_plane_multiple@tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][219] ([i915#14259])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_plane_multiple@tiling-y.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-tglu:         NOTRUN -> [SKIP][220] ([i915#14259])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-5/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          [PASS][221] -> [SKIP][222] ([i915#6953] / [i915#9423])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-7/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d:
    - shard-tglu-1:       NOTRUN -> [SKIP][223] ([i915#15329]) +4 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d.html
    - shard-dg1:          NOTRUN -> [SKIP][224] ([i915#15329]) +4 other tests skip
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-tglu:         NOTRUN -> [SKIP][225] ([i915#9812])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-tglu-1:       NOTRUN -> [SKIP][226] ([i915#3828])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-rkl:          NOTRUN -> [FAIL][227] ([i915#15752])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-dg1:          [PASS][228] -> [SKIP][229] ([i915#15073]) +1 other test skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-13/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-14/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-tglu-1:       NOTRUN -> [SKIP][230] ([i915#15073])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@system-suspend-idle:
    - shard-dg2:          [PASS][231] -> [INCOMPLETE][232] ([i915#14419])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg2-11/igt@kms_pm_rpm@system-suspend-idle.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-6/igt@kms_pm_rpm@system-suspend-idle.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-dg1:          NOTRUN -> [SKIP][233] ([i915#6524])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-rkl:          NOTRUN -> [SKIP][234] ([i915#11520]) +4 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][235] ([i915#11520])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][236] ([i915#11520]) +6 other tests skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-glk8/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][237] ([i915#11520]) +3 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:
    - shard-tglu:         NOTRUN -> [SKIP][238] ([i915#11520]) +2 other tests skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-glk11:        NOTRUN -> [SKIP][239] ([i915#11520]) +2 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-glk11/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
    - shard-dg1:          NOTRUN -> [SKIP][240] ([i915#11520]) +3 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:
    - shard-glk10:        NOTRUN -> [SKIP][241] ([i915#11520]) +4 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-glk10/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-tglu-1:       NOTRUN -> [SKIP][242] ([i915#9683])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_psr2_su@page_flip-nv12.html
    - shard-dg1:          NOTRUN -> [SKIP][243] ([i915#9683])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-tglu:         NOTRUN -> [SKIP][244] ([i915#9683])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-5/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@fbc-psr-cursor-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][245] ([i915#1072] / [i915#9732]) +6 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_psr@fbc-psr-cursor-mmap-gtt.html

  * igt@kms_psr@fbc-psr-primary-blt:
    - shard-rkl:          NOTRUN -> [SKIP][246] ([i915#1072] / [i915#9732]) +16 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@kms_psr@fbc-psr-primary-blt.html

  * igt@kms_psr@fbc-psr2-basic:
    - shard-dg1:          NOTRUN -> [SKIP][247] ([i915#1072] / [i915#9732]) +7 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@kms_psr@fbc-psr2-basic.html

  * igt@kms_psr@fbc-psr2-no-drrs:
    - shard-glk:          NOTRUN -> [SKIP][248] +154 other tests skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-glk2/igt@kms_psr@fbc-psr2-no-drrs.html

  * igt@kms_psr@psr-basic:
    - shard-tglu:         NOTRUN -> [SKIP][249] ([i915#9732]) +12 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_psr@psr-basic.html

  * igt@kms_psr@psr-cursor-plane-onoff:
    - shard-tglu-1:       NOTRUN -> [SKIP][250] ([i915#9732]) +7 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_psr@psr-cursor-plane-onoff.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglu-1:       NOTRUN -> [SKIP][251] ([i915#9685])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][252] ([i915#15500])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-glk11/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-rkl:          NOTRUN -> [SKIP][253] ([i915#5289]) +1 other test skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-tglu:         NOTRUN -> [SKIP][254] ([i915#5289]) +1 other test skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_scaling_modes@scaling-mode-full:
    - shard-dg1:          NOTRUN -> [SKIP][255] ([i915#3555])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@kms_scaling_modes@scaling-mode-full.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-tglu-1:       NOTRUN -> [SKIP][256] ([i915#8623]) +1 other test skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern.html
    - shard-dg1:          NOTRUN -> [SKIP][257] ([i915#8623])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-rkl:          NOTRUN -> [SKIP][258] ([i915#9906])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@kms_vrr@seamless-rr-switch-virtual.html
    - shard-tglu:         NOTRUN -> [SKIP][259] ([i915#9906])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_vrr@seamless-rr-switch-virtual.html

  * igt@perf_pmu@module-unload:
    - shard-tglu:         NOTRUN -> [ABORT][260] ([i915#15778])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-5/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@rc6-suspend:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][261] ([i915#13356])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-glk11/igt@perf_pmu@rc6-suspend.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-rkl:          NOTRUN -> [SKIP][262] ([i915#8516])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-fence-read:
    - shard-dg1:          NOTRUN -> [SKIP][263] ([i915#3708])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@prime_vgem@basic-fence-read.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-dg1:          NOTRUN -> [SKIP][264] ([i915#9917])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-tglu-1:       NOTRUN -> [FAIL][265] ([i915#12910])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  
#### Possible fixes ####

  * igt@api_intel_bb@crc32:
    - shard-dg2:          [ABORT][266] ([i915#15759]) -> [PASS][267]
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg2-6/igt@api_intel_bb@crc32.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-1/igt@api_intel_bb@crc32.html

  * igt@api_intel_bb@crc32@vecs0-lmem0:
    - shard-dg2:          [ABORT][268] -> [PASS][269]
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg2-6/igt@api_intel_bb@crc32@vecs0-lmem0.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-1/igt@api_intel_bb@crc32@vecs0-lmem0.html

  * igt@api_intel_bb@crc32@vecs0-smem0:
    - shard-dg2:          [INCOMPLETE][270] ([i915#15759]) -> [PASS][271]
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg2-6/igt@api_intel_bb@crc32@vecs0-smem0.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-1/igt@api_intel_bb@crc32@vecs0-smem0.html

  * igt@gem_mmap_offset@clear@smem0:
    - shard-rkl:          [ABORT][272] -> [PASS][273] +1 other test pass
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-4/igt@gem_mmap_offset@clear@smem0.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@gem_mmap_offset@clear@smem0.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          [ABORT][274] ([i915#5566]) -> [PASS][275]
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-glk2/igt@gen9_exec_parse@allowed-single.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-glk4/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_module_load@load:
    - shard-dg1:          ([PASS][276], [PASS][277], [PASS][278], [PASS][279], [PASS][280], [PASS][281], [PASS][282], [PASS][283], [PASS][284], [PASS][285], [PASS][286], [PASS][287], [PASS][288], [PASS][289], [PASS][290], [PASS][291], [PASS][292], [PASS][293], [PASS][294], [PASS][295], [DMESG-WARN][296], [PASS][297], [PASS][298], [PASS][299], [PASS][300]) ([i915#4423]) -> ([PASS][301], [PASS][302], [PASS][303], [PASS][304], [PASS][305], [PASS][306], [PASS][307], [PASS][308], [PASS][309], [PASS][310], [PASS][311], [PASS][312], [PASS][313], [PASS][314], [PASS][315], [PASS][316], [PASS][317], [PASS][318], [PASS][319], [PASS][320], [PASS][321], [PASS][322], [PASS][323], [PASS][324], [PASS][325])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-19/igt@i915_module_load@load.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-14/igt@i915_module_load@load.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-12/igt@i915_module_load@load.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-16/igt@i915_module_load@load.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-18/igt@i915_module_load@load.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-14/igt@i915_module_load@load.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-17/igt@i915_module_load@load.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-12/igt@i915_module_load@load.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-13/igt@i915_module_load@load.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-18/igt@i915_module_load@load.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-12/igt@i915_module_load@load.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-14/igt@i915_module_load@load.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-17/igt@i915_module_load@load.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-13/igt@i915_module_load@load.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-13/igt@i915_module_load@load.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-16/igt@i915_module_load@load.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-17/igt@i915_module_load@load.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-19/igt@i915_module_load@load.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-19/igt@i915_module_load@load.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-14/igt@i915_module_load@load.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-16/igt@i915_module_load@load.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-16/igt@i915_module_load@load.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-19/igt@i915_module_load@load.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-13/igt@i915_module_load@load.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-18/igt@i915_module_load@load.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-12/igt@i915_module_load@load.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-12/igt@i915_module_load@load.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-12/igt@i915_module_load@load.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-13/igt@i915_module_load@load.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-13/igt@i915_module_load@load.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-13/igt@i915_module_load@load.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-14/igt@i915_module_load@load.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-14/igt@i915_module_load@load.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-14/igt@i915_module_load@load.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-14/igt@i915_module_load@load.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@i915_module_load@load.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@i915_module_load@load.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@i915_module_load@load.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@i915_module_load@load.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@i915_module_load@load.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@i915_module_load@load.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@i915_module_load@load.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@i915_module_load@load.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@i915_module_load@load.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@i915_module_load@load.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@i915_module_load@load.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-19/igt@i915_module_load@load.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-19/igt@i915_module_load@load.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-19/igt@i915_module_load@load.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-19/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-rkl:          [INCOMPLETE][326] ([i915#13356]) -> [PASS][327]
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-3/igt@i915_pm_rpm@system-suspend.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][328] ([i915#13729] / [i915#13821]) -> [PASS][329]
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-snb4/igt@i915_pm_rps@reset.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-snb4/igt@i915_pm_rps@reset.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-dg2:          [FAIL][330] ([i915#5956]) -> [PASS][331] +1 other test pass
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [FAIL][332] ([i915#15733] / [i915#5138]) -> [PASS][333]
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_cursor_crc@cursor-suspend:
    - shard-rkl:          [ABORT][334] ([i915#15132]) -> [PASS][335]
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-1/igt@kms_cursor_crc@cursor-suspend.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@kms_cursor_crc@cursor-suspend.html

  * igt@kms_cursor_legacy@torture-bo:
    - shard-dg1:          [DMESG-WARN][336] ([i915#4423]) -> [PASS][337] +3 other tests pass
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-14/igt@kms_cursor_legacy@torture-bo.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@kms_cursor_legacy@torture-bo.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-dg2:          [SKIP][338] ([i915#3555]) -> [PASS][339]
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg2-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - shard-mtlp:         [SKIP][340] ([i915#15672]) -> [PASS][341]
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-mtlp-1/igt@kms_force_connector_basic@prune-stale-modes.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-mtlp-4/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite:
    - shard-snb:          [SKIP][342] -> [PASS][343] +16 other tests pass
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-rkl:          [SKIP][344] ([i915#15073]) -> [PASS][345] +3 other tests pass
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-dg1:          [ABORT][346] ([i915#15759]) -> [PASS][347]
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-12/igt@kms_rotation_crc@primary-rotation-90.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@kms_vblank@ts-continuation-suspend:
    - shard-rkl:          [INCOMPLETE][348] ([i915#12276]) -> [PASS][349]
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@kms_vblank@ts-continuation-suspend.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@kms_vblank@ts-continuation-suspend.html

  * igt@perf_pmu@busy-double-start:
    - shard-mtlp:         [FAIL][350] ([i915#4349]) -> [PASS][351] +2 other tests pass
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-mtlp-4/igt@perf_pmu@busy-double-start.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-mtlp-1/igt@perf_pmu@busy-double-start.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [FAIL][352] ([i915#4349]) -> [PASS][353] +4 other tests pass
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg2-3/igt@perf_pmu@busy-double-start@vecs1.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html

  
#### Warnings ####

  * igt@drm_buddy@drm_buddy:
    - shard-rkl:          [SKIP][354] ([i915#14544] / [i915#15678]) -> [SKIP][355] ([i915#15678])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@drm_buddy@drm_buddy.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@drm_buddy@drm_buddy.html

  * igt@gem_bad_reloc@negative-reloc:
    - shard-rkl:          [SKIP][356] ([i915#3281]) -> [SKIP][357] ([i915#14544] / [i915#3281]) +2 other tests skip
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-2/igt@gem_bad_reloc@negative-reloc.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@gem_bad_reloc@negative-reloc.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - shard-rkl:          [SKIP][358] ([i915#14544] / [i915#3281]) -> [SKIP][359] ([i915#3281]) +3 other tests skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@gem_bad_reloc@negative-reloc-lut.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-rkl:          [SKIP][360] ([i915#13008] / [i915#14544]) -> [SKIP][361] ([i915#13008])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@gem_ccs@large-ctrl-surf-copy.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-rkl:          [SKIP][362] ([i915#14544] / [i915#7697]) -> [SKIP][363] ([i915#7697])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@gem_close_race@multigpu-basic-process.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
    - shard-rkl:          [SKIP][364] ([i915#4525]) -> [SKIP][365] ([i915#14544] / [i915#4525])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-2/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html

  * igt@gem_lmem_swapping@heavy-verify-multi-ccs:
    - shard-rkl:          [SKIP][366] ([i915#4613]) -> [SKIP][367] ([i915#14544] / [i915#4613]) +1 other test skip
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-7/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-rkl:          [SKIP][368] ([i915#14544] / [i915#4613]) -> [SKIP][369] ([i915#4613]) +1 other test skip
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@gem_lmem_swapping@parallel-random.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-dg2:          [FAIL][370] ([i915#15734]) -> [INCOMPLETE][371] ([i915#5493])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg2-7/igt@gem_lmem_swapping@smem-oom.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-7/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [CRASH][372] ([i915#5493]) -> [INCOMPLETE][373] ([i915#5493])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg2-7/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-7/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_partial_pwrite_pread@write:
    - shard-rkl:          [SKIP][374] ([i915#3282]) -> [SKIP][375] ([i915#14544] / [i915#3282])
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-2/igt@gem_partial_pwrite_pread@write.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@gem_partial_pwrite_pread@write.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          [SKIP][376] ([i915#14544] / [i915#3282]) -> [SKIP][377] ([i915#3282]) +6 other tests skip
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-rkl:          [SKIP][378] ([i915#14544] / [i915#3282] / [i915#3297]) -> [SKIP][379] ([i915#3282] / [i915#3297])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@gem_userptr_blits@forbidden-operations.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-rkl:          [SKIP][380] ([i915#3297]) -> [SKIP][381] ([i915#14544] / [i915#3297])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-2/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@relocations:
    - shard-rkl:          [SKIP][382] ([i915#3281] / [i915#3297]) -> [SKIP][383] ([i915#14544] / [i915#3281] / [i915#3297])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-2/igt@gem_userptr_blits@relocations.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@gem_userptr_blits@relocations.html

  * igt@gen9_exec_parse@bb-secure:
    - shard-rkl:          [SKIP][384] ([i915#2527]) -> [SKIP][385] ([i915#14544] / [i915#2527])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-2/igt@gen9_exec_parse@bb-secure.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@gen9_exec_parse@bb-secure.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          [SKIP][386] ([i915#14544] / [i915#2527]) -> [SKIP][387] ([i915#2527]) +2 other tests skip
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@gen9_exec_parse@shadow-peek.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-rkl:          [SKIP][388] ([i915#14544] / [i915#8399]) -> [SKIP][389] ([i915#8399])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@i915_pm_freq_api@freq-suspend.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@i915_pm_freq_api@freq-suspend.html

  * igt@intel_hwmon@hwmon-read:
    - shard-rkl:          [SKIP][390] ([i915#14544] / [i915#7707]) -> [SKIP][391] ([i915#7707])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@intel_hwmon@hwmon-read.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@intel_hwmon@hwmon-read.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-270:
    - shard-rkl:          [SKIP][392] ([i915#14544] / [i915#5286]) -> [SKIP][393] ([i915#5286])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][394] ([i915#5286]) -> [SKIP][395] ([i915#14544] / [i915#5286]) +1 other test skip
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-rkl:          [SKIP][396] ([i915#3638]) -> [SKIP][397] ([i915#14544] / [i915#3638]) +1 other test skip
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-2/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-rkl:          [SKIP][398] ([i915#14544]) -> [SKIP][399] +5 other tests skip
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-rkl:          [SKIP][400] -> [SKIP][401] ([i915#14544]) +2 other tests skip
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-2/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs:
    - shard-rkl:          [SKIP][402] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][403] ([i915#14098] / [i915#6095]) +9 other tests skip
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][404] ([i915#14544] / [i915#6095]) -> [SKIP][405] ([i915#6095]) +5 other tests skip
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-b-hdmi-a-2.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs:
    - shard-rkl:          [SKIP][406] ([i915#14098] / [i915#6095]) -> [SKIP][407] ([i915#14098] / [i915#14544] / [i915#6095]) +3 other tests skip
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-2/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][408] ([i915#12313]) -> [SKIP][409] ([i915#12313] / [i915#14544])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-2/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_chamelium_audio@hdmi-audio:
    - shard-dg1:          [SKIP][410] ([i915#11151] / [i915#4423] / [i915#7828]) -> [SKIP][411] ([i915#11151] / [i915#7828])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-16/igt@kms_chamelium_audio@hdmi-audio.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-12/igt@kms_chamelium_audio@hdmi-audio.html

  * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
    - shard-rkl:          [SKIP][412] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][413] ([i915#11151] / [i915#7828]) +2 other tests skip
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html

  * igt@kms_chamelium_hpd@vga-hpd:
    - shard-rkl:          [SKIP][414] ([i915#11151] / [i915#7828]) -> [SKIP][415] ([i915#11151] / [i915#14544] / [i915#7828])
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd.html

  * igt@kms_content_protection@lic-type-0-hdcp14:
    - shard-dg2:          [SKIP][416] ([i915#6944]) -> [FAIL][417] ([i915#7173])
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg2-5/igt@kms_content_protection@lic-type-0-hdcp14.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_content_protection@lic-type-0-hdcp14.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          [SKIP][418] ([i915#9433]) -> [SKIP][419] ([i915#6944] / [i915#9424])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-12/igt@kms_content_protection@mei-interface.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][420] ([i915#6944] / [i915#7118] / [i915#9424]) -> [SKIP][421] ([i915#6944] / [i915#7118] / [i915#7162] / [i915#9424])
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg2-3/igt@kms_content_protection@type1.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_content_protection@type1.html
    - shard-rkl:          [SKIP][422] ([i915#6944] / [i915#7118] / [i915#9424]) -> [SKIP][423] ([i915#14544] / [i915#6944] / [i915#7118] / [i915#9424])
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-2/igt@kms_content_protection@type1.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_content_protection@type1.html

  * igt@kms_content_protection@uevent:
    - shard-rkl:          [SKIP][424] ([i915#14544] / [i915#6944] / [i915#7118] / [i915#9424]) -> [SKIP][425] ([i915#6944] / [i915#7118] / [i915#9424])
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@kms_content_protection@uevent.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_content_protection@uevent.html

  * igt@kms_content_protection@uevent-hdcp14:
    - shard-dg2:          [FAIL][426] ([i915#7173]) -> [SKIP][427] ([i915#6944]) +1 other test skip
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg2-11/igt@kms_content_protection@uevent-hdcp14.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-7/igt@kms_content_protection@uevent-hdcp14.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-dg1:          [ABORT][428] ([i915#15759]) -> [SKIP][429] ([i915#13049]) +1 other test skip
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-16/igt@kms_cursor_crc@cursor-offscreen-512x170.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-random-32x10:
    - shard-rkl:          [SKIP][430] ([i915#14544] / [i915#3555]) -> [SKIP][431] ([i915#3555])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@kms_cursor_crc@cursor-random-32x10.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_cursor_crc@cursor-random-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-dg2:          [ABORT][432] ([i915#15759]) -> [SKIP][433] ([i915#3555])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg2-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-rkl:          [SKIP][434] ([i915#13049]) -> [SKIP][435] ([i915#13049] / [i915#14544])
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-512x512.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [FAIL][436] -> [FAIL][437] ([i915#15764])
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-rkl:          [SKIP][438] ([i915#14544] / [i915#3555] / [i915#3840]) -> [SKIP][439] ([i915#3555] / [i915#3840])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@kms_dsc@dsc-with-bpc-formats.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-rkl:          [SKIP][440] ([i915#14544] / [i915#9337]) -> [SKIP][441] ([i915#9337])
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@kms_feature_discovery@dp-mst.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_flip@2x-dpms-vs-vblank-race:
    - shard-rkl:          [SKIP][442] ([i915#14544] / [i915#9934]) -> [SKIP][443] ([i915#9934]) +3 other tests skip
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@kms_flip@2x-dpms-vs-vblank-race.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_flip@2x-dpms-vs-vblank-race.html

  * igt@kms_flip@2x-plain-flip-fb-recreate:
    - shard-rkl:          [SKIP][444] ([i915#9934]) -> [SKIP][445] ([i915#14544] / [i915#9934])
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-2/igt@kms_flip@2x-plain-flip-fb-recreate.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_flip@2x-plain-flip-fb-recreate.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-rkl:          [SKIP][446] ([i915#15643]) -> [SKIP][447] ([i915#14544] / [i915#15643])
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-pwrite:
    - shard-rkl:          [SKIP][448] ([i915#15102]) -> [SKIP][449] ([i915#14544] / [i915#15102]) +1 other test skip
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-pwrite.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-rkl:          [SKIP][450] ([i915#15102] / [i915#3023]) -> [SKIP][451] ([i915#14544] / [i915#15102] / [i915#3023]) +7 other tests skip
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-glk:          [ABORT][452] -> [SKIP][453]
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-glk2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-glk1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][454] ([i915#1825]) -> [SKIP][455] ([i915#14544] / [i915#1825]) +9 other tests skip
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt:
    - shard-rkl:          [SKIP][456] ([i915#14544] / [i915#15102]) -> [SKIP][457] ([i915#15102])
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt.html
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][458] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][459] ([i915#15102] / [i915#3458]) +4 other tests skip
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff:
    - shard-dg1:          [SKIP][460] ([i915#15102] / [i915#3458] / [i915#4423]) -> [SKIP][461] ([i915#15102] / [i915#3458])
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff.html
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render:
    - shard-rkl:          [SKIP][462] ([i915#14544] / [i915#1825]) -> [SKIP][463] ([i915#1825]) +11 other tests skip
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render.html
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          [SKIP][464] ([i915#15102] / [i915#3458]) -> [SKIP][465] ([i915#10433] / [i915#15102] / [i915#3458])
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-rkl:          [SKIP][466] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][467] ([i915#15102] / [i915#3023]) +8 other tests skip
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-suspend.html
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-mtlp:         [SKIP][468] ([i915#1187] / [i915#12713]) -> [SKIP][469] ([i915#12713])
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-mtlp-1/igt@kms_hdr@brightness-with-hdr.html
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-mtlp-4/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-rkl:          [SKIP][470] ([i915#14544] / [i915#15458]) -> [SKIP][471] ([i915#15458])
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@kms_joiner@invalid-modeset-ultra-joiner.html
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_plane@pixel-format-4-tiled-modifier-source-clamping:
    - shard-rkl:          [SKIP][472] ([i915#14544] / [i915#15709]) -> [SKIP][473] ([i915#15709]) +1 other test skip
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-modifier-source-clamping.html
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_plane@pixel-format-4-tiled-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping:
    - shard-rkl:          [SKIP][474] ([i915#15709]) -> [SKIP][475] ([i915#14544] / [i915#15709]) +2 other tests skip
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-2/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping.html
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping.html

  * igt@kms_plane_multiple@2x-tiling-4:
    - shard-rkl:          [SKIP][476] ([i915#13958] / [i915#14544]) -> [SKIP][477] ([i915#13958])
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-4.html
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@kms_plane_multiple@2x-tiling-4.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-rkl:          [SKIP][478] ([i915#14544] / [i915#15329] / [i915#3555]) -> [SKIP][479] ([i915#15329] / [i915#3555])
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
    - shard-rkl:          [SKIP][480] ([i915#14544] / [i915#15329]) -> [SKIP][481] ([i915#15329]) +2 other tests skip
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:
    - shard-rkl:          [SKIP][482] ([i915#15329]) -> [SKIP][483] ([i915#14544] / [i915#15329]) +7 other tests skip
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-rkl:          [SKIP][484] ([i915#14544] / [i915#5354]) -> [SKIP][485] ([i915#5354])
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@kms_pm_backlight@basic-brightness.html
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_dc@dc5-psr:
    - shard-rkl:          [SKIP][486] ([i915#9685]) -> [SKIP][487] ([i915#14544] / [i915#9685])
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-2/igt@kms_pm_dc@dc5-psr.html
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_pm_dc@dc5-psr.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          [SKIP][488] ([i915#14544] / [i915#15739]) -> [SKIP][489] ([i915#15739])
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@package-g7:
    - shard-rkl:          [SKIP][490] ([i915#14544] / [i915#15403]) -> [SKIP][491] ([i915#15403])
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@kms_pm_rpm@package-g7.html
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_pm_rpm@package-g7.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:
    - shard-rkl:          [SKIP][492] ([i915#11520] / [i915#14544]) -> [SKIP][493] ([i915#11520]) +3 other tests skip
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@pr-cursor-plane-update-sf:
    - shard-rkl:          [SKIP][494] ([i915#11520]) -> [SKIP][495] ([i915#11520] / [i915#14544])
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-2/igt@kms_psr2_sf@pr-cursor-plane-update-sf.html
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_psr2_sf@pr-cursor-plane-update-sf.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-rkl:          [SKIP][496] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][497] ([i915#1072] / [i915#9732]) +7 other tests skip
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_psr@pr-cursor-mmap-cpu:
    - shard-rkl:          [SKIP][498] ([i915#1072] / [i915#9732]) -> [SKIP][499] ([i915#1072] / [i915#14544] / [i915#9732]) +4 other tests skip
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-2/igt@kms_psr@pr-cursor-mmap-cpu.html
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_psr@pr-cursor-mmap-cpu.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-rkl:          [SKIP][500] ([i915#5289]) -> [SKIP][501] ([i915#14544] / [i915#5289])
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-2/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
    - shard-rkl:          [SKIP][502] ([i915#14544] / [i915#5289]) -> [SKIP][503] ([i915#5289])
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html

  * igt@kms_vblank@ts-continuation-dpms-suspend:
    - shard-rkl:          [INCOMPLETE][504] ([i915#12276]) -> [ABORT][505] ([i915#15132]) +1 other test abort
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-3/igt@kms_vblank@ts-continuation-dpms-suspend.html
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-1/igt@kms_vblank@ts-continuation-dpms-suspend.html

  * igt@kms_vrr@flip-basic:
    - shard-rkl:          [SKIP][506] ([i915#15243] / [i915#3555]) -> [SKIP][507] ([i915#14544] / [i915#15243] / [i915#3555])
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-2/igt@kms_vrr@flip-basic.html
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_vrr@flip-basic.html

  * igt@kms_vrr@negative-basic:
    - shard-rkl:          [SKIP][508] ([i915#14544] / [i915#3555] / [i915#9906]) -> [SKIP][509] ([i915#3555] / [i915#9906])
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-6/igt@kms_vrr@negative-basic.html
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_vrr@negative-basic.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-rkl:          [SKIP][510] ([i915#8516]) -> [SKIP][511] ([i915#14544] / [i915#8516])
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-2/igt@perf_pmu@rc6-all-gts.html
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@perf_pmu@rc6-all-gts.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          [SKIP][512] ([i915#3708]) -> [SKIP][513] ([i915#14544] / [i915#3708])
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-rkl-7/igt@prime_vgem@coherency-gtt.html
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@prime_vgem@coherency-gtt.html

  
  [i915#10056]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11527
  [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
  [i915#12169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12169
  [i915#12193]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12193
  [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
  [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
  [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
  [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
  [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13331]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688
  [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
  [i915#13729]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13729
  [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
  [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
  [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
  [i915#13790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790
  [i915#13820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820
  [i915#13821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
  [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
  [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
  [i915#14419]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
  [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
  [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
  [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
  [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
  [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
  [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
  [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
  [i915#15342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342
  [i915#15403]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15403
  [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
  [i915#15460]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460
  [i915#15500]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15500
  [i915#15608]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15608
  [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
  [i915#15672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15672
  [i915#15678]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15678
  [i915#15709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
  [i915#15726]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15726
  [i915#15733]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733
  [i915#15734]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15734
  [i915#15739]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15739
  [i915#15752]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15752
  [i915#15759]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759
  [i915#15764]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15764
  [i915#15778]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15778
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
  [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
  [i915#4036]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4036
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
  [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4565]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4565
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
  [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
  [i915#5566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
  [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7162]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7178]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7178
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
  [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_18073 -> Patchwork_162419v1

  CI-20190529: 20190529
  CI_DRM_18073: 658ee8457333fe9f26f88f812f6cd423f800720b @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8776: 8776
  Patchwork_162419v1: 658ee8457333fe9f26f88f812f6cd423f800720b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/index.html

--===============7535833607422980040==
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
<tr><td><b>Series:</b></td><td>series starting with [PATCHv3,1/2] drm/i915/=
dp: Read ALPM caps after DPCD init</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/162419/">https://patchwork.freedesktop.org/series/162419/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_162419v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_162419v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18073_full -&gt; Patchwork_162419v=
1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_18073_full and Patchwork_1=
62419v1_full:</p>
<h3>New IGT tests (32)</h3>
<ul>
<li>
<p>igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-a-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-b-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-c-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-d-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-a-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-c-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-d-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-a-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-b-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-c-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-rc-ccs-cc@pipe-d-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc@pipe-c-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-a-dp-3=
:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-b-dp-3=
:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-c-dp-3=
:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-d-dp-3=
:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs@pipe-a-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs@pipe-b-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs@pipe-c-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-mc-ccs@pipe-d-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-c-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-d-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-a-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-c-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-d-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_162419v1_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@api_intel_bb@blit-reloc-k=
eep-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@api_intel_bb@object-reloc-=
keep-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@device_reset@unbind-cold-=
reset-rebind.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@gem_basic@multigpu-create=
-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@gem_ccs@ctrl-surf-copy-ne=
w-ctx.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@gem_close_race@multigpu-b=
asic-process.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@gem_create@create-ext-cpu-=
access-big.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@gem_create@create-ext-cpu=
-access-sanity-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-glk3/igt@gem_ctx_isolation@preservat=
ion-s3@rcs0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/13356">i915#13356</a>) +1 other test incomplete</=
li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-close:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@gem_ctx_persistence@heart=
beat-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-snb4/igt@gem_ctx_persistence@legacy-=
engines-mixed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@gem_ctx_sseu@invalid-sseu=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/280">i915#280</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@gem_ctx_sseu@invalid-sseu=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@gem_ctx_sseu@mmap-args.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/280">i915#280</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@gem_ctx_sseu@mmap-args.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@gem_exec_balancer@bonded-=
dual.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/4771">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@gem_exec_balancer@invalid=
-bonds.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4036">i915#4036</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@gem_exec_balancer@paralle=
l-ordering.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@gem_exec_balancer@parallel=
-out-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/4525">i915#4525</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@gem_exec_balancer@paralle=
l-out-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@forked@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg1-19/igt@gem_exec_create@forked@lmem0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v=
1/shard-dg1-19/igt@gem_exec_create@forked@lmem0.html">ABORT</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759">i915#15759<=
/a>) +2 other tests abort</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-prw-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@gem_exec_flush@basic-uc-p=
rw-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3539">i915#3539</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-prw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@gem_exec_flush@basic-wb-p=
rw-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/4852">i915#4852</a>) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-before-default:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@gem_exec_flush@basic-wb-r=
o-before-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@gem_exec_params@secure-non=
-master.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@gem_exec_reloc@basic-writ=
e-read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3281">i915#3281</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@gem_exec_reloc@basic-write=
-read-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3281">i915#3281</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@gem_exec_reloc@basic-writ=
e-wc-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue-contexts:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@gem_exec_schedule@preempt=
-queue-contexts.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4537">i915#4537</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg2-3/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/sh=
ard-dg2-5/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>=
) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@gem_lmem_swapping@heavy-r=
andom.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@gem_lmem_swapping@heavy-ve=
rify-multi.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-glk2/igt@gem_lmem_swapping@heavy-ver=
ify-multi-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@gem_lmem_swapping@heavy-v=
erify-random-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/12193">i915#12193</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs@lmem0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@gem_lmem_swapping@heavy-v=
erify-random-ccs@lmem0.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/4565">i915#4565</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@gem_lmem_swapping@paralle=
l-random-verify-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@big-bo:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@gem_mmap@big-bo.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4=
083">i915#4083</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@gem_mmap_gtt@basic-copy.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-bo-tiledy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@gem_mmap_gtt@basic-small-=
bo-tiledy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/4077">i915#4077</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-wc-read-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@gem_mmap_wc@write-wc-read=
-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@bench:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@gem_pread@bench.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3=
282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-glk11/igt@gem_pread@exhaustion.html"=
>WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-context:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@gem_pxp@hw-rejects-pxp-con=
text.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13717">i915#13717</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-raw-src-copy-not-readible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@gem_pxp@protected-raw-src=
-copy-not-readible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-execution:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@gem_pxp@verify-pxp-stale-=
buf-execution.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@gem_render_copy@y-tiled-m=
c-ccs-to-vebox-yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@gem_set_tiling_vs_blt@til=
ed-to-untiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@gem_set_tiling_vs_blt@unt=
iled-to-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@gem_tiled_partial_pwrite_p=
read@writes-after-reads.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@gem_userptr_blits@coheren=
cy-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@gem_userptr_blits@coheren=
cy-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@gem_userptr_blits@dmabuf-s=
ync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@gem_userptr_blits@map-fix=
ed-invalidate-busy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@gem_userptr_blits@unsync-=
unmap-cycles.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-7/igt@gem_workarounds@suspend-resume.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419=
v1/shard-rkl-6/igt@gem_workarounds@suspend-resume.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915=
#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gen3_render_linear_blits:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-1/igt@gen3_render_linear_blits.h=
tml">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@gen9_exec_parse@bb-large.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@gen9_exec_parse@bb-start-=
cmd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@gen9_exec_parse@bb-start-f=
ar.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/2527">i915#2527</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@gen9_exec_parse@bb-start-=
out.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@gen9_exec_parse@valid-reg=
isters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@busy-idle-check-all@vcs1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@i915_drm_fdinfo@busy-idle=
-check-all@vcs1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/11527">i915#11527</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@i915_drm_fdinfo@most-busy=
-idle-check-all@rcs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14073">i915#14073</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@virtual-busy-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@i915_drm_fdinfo@virtual-b=
usy-all.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/14118">i915#14118</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@fault-injection@intel_connector_register:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-glk1/igt@i915_module_load@fault-inje=
ction@intel_connector_register.html">ABORT</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/15342">i915#15342</a>) +1 other tes=
t abort</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg2-11/igt@i915_module_load@resize-bar.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1=
/shard-dg2-7/igt@i915_module_load@resize-bar.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545">i915#145=
45</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@i915_module_load@resize-b=
ar.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/7178">i915#7178</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@i915_pm_freq_api@freq-rese=
t.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@i915_pm_freq_api@freq-sus=
pend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg2-8/igt@i915_pm_freq_api@freq-suspend@gt0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162=
419v1/shard-dg2-6/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356=
">i915#13356</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/13820">i915#13820</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@i915_pm_rc6_residency@rc6=
-fence.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/13790">i915#13790</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/2681">i915#2681</a>) +1 other test warn</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg1-13/igt@i915_suspend@basic-s3-without-i915.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
62419v1/shard-dg1-13/igt@i915_suspend@basic-s3-without-i915.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4=
391">i915#4391</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-7/igt@i915_suspend@debugfs-reader.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/=
shard-rkl-4/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_3d@basic:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-mtlp-5/igt@kms_3d@basic.html">PASS</a> -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-mtlp-1/i=
gt@kms_3d@basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/15726">i915#15726</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@kms_addfb_basic@addfb25-x=
-tiled-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_addfb_basic@invalid-s=
mem-bo-on-discrete.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/12454">i915#12454</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/12712">i915#12712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_atomic@plane-primary-=
overlay-mutable-zpos.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@kms_atomic_transition@plan=
e-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555=
">i915#3555</a>)</li>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-glk10/igt@kms_atomic_transition@plan=
e-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-internal-panels.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#=
3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/5286">i915#5286</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@kms_big_fb@4-tiled-64bpp-r=
otate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/5286">i915#5286</a>) +4 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_big_fb@4-tiled-64bpp-=
rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@kms_big_fb@4-tiled-64bpp-=
rotate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@kms_big_fb@4-tiled-addfb.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-180-hflip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_162419v1/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-str=
ide-64bpp-rotate-180-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/15733">i915#15733</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@kms_big_fb@linear-16bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_big_fb@linear-max-hw-=
stride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@kms_big_fb@x-tiled-8bpp-ro=
tate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3638">i915#3638</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_big_fb@y-tiled-32bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-h=
w-stride-64bpp-rotate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a>) +3 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@kms_ccs@bad-aux-stride-4-=
tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +165 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-4/igt@kms_ccs@bad-aux-stride-y-t=
iled-gen12-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#104=
34</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6095">i915#6095</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_ccs@crc-primary-basic=
-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-1:</=
p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-glk10/igt@kms_ccs@crc-primary-basic-=
y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-1.html">SKIP</a> +93 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +74 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-c-dp-3=
 (NEW):</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_ccs@crc-primary-rotat=
ion-180-y-tiled-gen12-rc-ccs-cc@pipe-c-dp-3.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i=
915#6095</a>) +136 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspe=
nd-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +39 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-glk11/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> +150 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_ccs@crc-primary-suspe=
nd-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +39 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@kms_ccs@crc-primary-suspen=
d-yf-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +45 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@kms_ccs@crc-sprite-planes=
-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-d-hdmi-a-1:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-dg2-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +43 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-=
tiled-dg2-mc-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a=
>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-=
tiled-dg2-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/60=
95">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@kms_cdclk@mode-transition.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3742">i915#3742</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_cdclk@mode-transition=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-1/igt@kms_cdclk@plane-scaling@pi=
pe-c-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/13783">i915#13783</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-single:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_chamelium_frames@dp-c=
rc-single.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-frame-dump:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_chamelium_frames@dp-f=
rame-dump.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-cmp-planar-formats:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@kms_chamelium_frames@hdmi=
-cmp-planar-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@vga-frame-dump:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_chamelium_frames@vga-=
frame-dump.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@kms_chamelium_hpd@vga-hpd-=
fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_content_protection@at=
omic-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-hdcp14:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-snb4/igt@kms_content_protection@atom=
ic-hdcp14.html">SKIP</a> +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_content_protection@dp=
-mst-lic-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/15330">i915#15330</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)<=
/li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@kms_content_protection@dp-=
mst-lic-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/15330">i915#15330</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1-suspend-resume:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@kms_content_protection@dp=
-mst-type-1-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@kms_content_protection@lic=
-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0-hdcp14:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_content_protection@li=
c-type-0-hdcp14.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_content_protection@li=
c-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_content_protection@sr=
m.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/7173">i915#7173</a>) +2 other tests fail</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@kms_content_protection@srm=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent-hdcp14:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@kms_content_protection@ue=
vent-hdcp14.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_cursor_crc@cursor-off=
screen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@kms_cursor_crc@cursor-onsc=
reen-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_cursor_crc@cursor-ons=
creen-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x85:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@kms_cursor_crc@cursor-random-256x85.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
62419v1/shard-rkl-8/igt@kms_cursor_crc@cursor-random-256x85.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">=
i915#13566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@kms_cursor_crc@cursor-rand=
om-256x85@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@kms_cursor_crc@cursor-rand=
om-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x32:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_cursor_crc@cursor-sli=
ding-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-varying-size.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +1 other te=
st skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-c=
ursor-atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/15764">i915#15764</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-toggle.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@kms_dirtyfb@psr-dirtyfb-i=
octl.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_dither@fb-8bpc-vs-pan=
el-6bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/1769">i915#1769</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-2/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_dither@fb-8bpc-vs-pan=
el-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-sst:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@kms_dp_link_training@non-u=
hbr-sst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/13749">i915#13749</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-sst:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_dp_link_training@uhbr=
-sst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13748">i915#13748</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-5/igt@kms_dsc@dsc-basic.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3840">i915#3840</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@kms_dsc@dsc-fractional-bp=
p-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_dsc@dsc-with-output-f=
ormats-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/3840">i915#3840</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/9053">i915#9053</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@kms_dsc@dsc-with-output-fo=
rmats-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3840">i915#3840</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/9053">i915#9053</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3955">i915#3955</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_fbcon_fbt@psr-suspend=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3469">i915#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_feature_discovery@dis=
play-3x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@kms_feature_discovery@psr1=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@kms_flip@2x-absolute-wf_v=
blank.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_flip@2x-flip-vs-absol=
ute-wf_vblank-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms-=
on-nop-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-snb7/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_162419v1/shard-snb6/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.h=
tml">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14033">i915#14033</a>) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_flip@2x-modeset-vs-vb=
lank-race.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_flip@2x-plain-flip-in=
terruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +6 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@kms_flip@2x-single-buffer-=
flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +5 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a3:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg2-6/igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a3.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_162419v1/shard-dg2-1/igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a3.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/13027">i915#13027</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-glk4/igt@kms_flip@flip-vs-suspend-in=
terruptible.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-glk4/igt@kms_flip@flip-vs-suspend-in=
terruptible@a-hdmi-a1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-5/igt@kms_flip_scaled_crc@flip-=
32bpp-yftileccs-to-64bpp-yftile-upscaling.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +2 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +3 oth=
er tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-shrfb-draw-mmap-gtt:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@kms_frontbuffer_tracking@=
fbc-1p-offscreen-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104">i915#15104</a>) +1 =
other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@kms_frontbuffer_tracking@=
fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +5 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-i=
ndfb-draw-pwrite.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_162419v1/shard-snb7/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> +14 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-cur-indfb-draw-render.html">SKIP</a> +17 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> +30 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> +38 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +27 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-glk10/igt@kms_frontbuffer_tracking@f=
bc-suspend.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/10056">i915#10056</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-offscreen-pri-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +2 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-farfromfence-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbcpsr-farfromfence-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +1 other test ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbcpsr-rgb565-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1=
 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-wc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbcpsr-rgb565-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +10 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-cpu:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@kms_frontbuffer_tracking@=
psr-1p-offscreen-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +1 =
other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +10 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>=
) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +6 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@kms_frontbuffer_tracking@=
psr-rgb565-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +9 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg2-11/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg=
2-7/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_hdr@brightness-with-h=
dr.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/13331">i915#13331</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@kms_hdr@brightness-with-hd=
r.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@kms_hdr@invalid-hdr.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-max-non-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_joiner@basic-max-non-=
joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/13688">i915#13688</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@kms_joiner@basic-max-non-j=
oiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13688">i915#13688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_joiner@invalid-modese=
t-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/15460">i915#15460</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@kms_multipipe_modeset@bas=
ic-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_plane@pixel-format-4-=
tiled-lnl-ccs-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@kms_plane@pixel-format-4-=
tiled-lnl-ccs-modifier-source-clamping.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-modifier:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@kms_plane@pixel-format-4-t=
iled-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/15709">i915#15709</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-modifier-source-clamping:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_plane@pixel-format-y-=
tiled-modifier-source-clamping.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +1 other test=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-modifier@pipe-b-plane-5:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@kms_plane@pixel-format-y-t=
iled-modifier@pipe-b-plane-5.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/15608">i915#15608</a>) +1 other test s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_plane@pixel-format-yf=
-tiled-ccs-modifier-source-clamping.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +1 other=
 test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-glk11/igt@kms_plane_alpha_blend@cons=
tant-alpha-max.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/10647">i915#10647</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/12169">i915#12169</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-glk11/igt@kms_plane_alpha_blend@cons=
tant-alpha-max@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/10647">i915#10647</a>) +1 other test=
 fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-4:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_plane_multiple@2x-til=
ing-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13958">i915#13958</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-yf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@kms_plane_multiple@2x-tili=
ng-yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-4:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg2-4/igt@kms_plane_multiple@tiling-4.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/=
shard-dg2-3/igt@kms_plane_multiple@tiling-4.html">ABORT</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759">i915#15759</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-4@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-3/igt@kms_plane_multiple@tiling-=
4@pipe-b-hdmi-a-3.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/15759">i915#15759</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_plane_multiple@tiling=
-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-5/igt@kms_plane_multiple@tiling=
-yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_162419v1/shard-dg2-7/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953=
">i915#6953</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d:</=
p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-5-with-rotation@pipe-d.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +4 =
other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-5-with-rotation@pipe-d.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +4 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_pm_backlight@basic-br=
ightness.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_pm_dc@dc5-retention-f=
lops.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@kms_pm_dc@dc6-dpms.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/15752">i915#15752</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg1-13/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
162419v1/shard-dg1-14/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073=
">i915#15073</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lp=
sp-stress.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-idle:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg2-11/igt@kms_pm_rpm@system-suspend-idle.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241=
9v1/shard-dg2-6/igt@kms_pm_rpm@system-suspend-idle.html">INCOMPLETE</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419">i91=
5#14419</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@kms_prime@basic-crc-hybri=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@kms_psr2_sf@fbc-pr-cursor-=
plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_psr2_sf@fbc-pr-primar=
y-plane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-glk8/igt@kms_psr2_sf@fbc-psr2-cursor=
-plane-move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +6 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-over=
lay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_psr2_sf@fbc-psr2-over=
lay-plane-update-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-glk11/igt@kms_psr2_sf@pr-cursor-plan=
e-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@kms_psr2_sf@psr2-overlay-=
plane-update-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-glk10/igt@kms_psr2_sf@psr2-primary-p=
lane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_psr2_su@page_flip-nv1=
2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9683">i915#9683</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@kms_psr2_su@page_flip-nv1=
2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-5/igt@kms_psr2_su@page_flip-p01=
0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_psr@fbc-psr-cursor-mm=
ap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-7/igt@kms_psr@fbc-psr-primary-bl=
t.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/9732">i915#9732</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-basic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@kms_psr@fbc-psr2-basic.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/9732">i915#9732</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-no-drrs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-glk2/igt@kms_psr@fbc-psr2-no-drrs.ht=
ml">SKIP</a> +154 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_psr@psr-basic.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/9732">i915#9732</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-plane-onoff:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_psr@psr-cursor-plane-=
onoff.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9732">i915#9732</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_psr_stress_test@inval=
idate-primary-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-glk11/igt@kms_rotation_crc@multiplan=
e-rotation-cropping-bottom.html">INCOMPLETE</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/15500">i915#15500</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@kms_scaling_modes@scaling=
-mode-full.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@kms_tiled_display@basic-t=
est-pattern.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/8623">i915#8623</a>) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@kms_tiled_display@basic-t=
est-pattern.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@kms_vrr@seamless-rr-switch=
-virtual.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9906">i915#9906</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-7/igt@kms_vrr@seamless-rr-switc=
h-virtual.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-5/igt@perf_pmu@module-unload.ht=
ml">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/15778">i915#15778</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-glk11/igt@perf_pmu@rc6-suspend.html"=
>INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-5/igt@perf_pmu@rc6@other-idle-gt=
0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@prime_vgem@basic-fence-re=
ad.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@sriov_basic@enable-vfs-au=
toprobe-off.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-tglu-1/igt@sriov_basic@enable-vfs-bi=
nd-unbind-each-numvfs-all.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/12910">i915#12910</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg2-6/igt@api_intel_bb@crc32.html">ABORT</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759">i915#157=
59</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_162419v1/shard-dg2-1/igt@api_intel_bb@crc32.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@crc32@vecs0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg2-6/igt@api_intel_bb@crc32@vecs0-lmem0.html">ABORT</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241=
9v1/shard-dg2-1/igt@api_intel_bb@crc32@vecs0-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@crc32@vecs0-smem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg2-6/igt@api_intel_bb@crc32@vecs0-smem0.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
15759">i915#15759</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_162419v1/shard-dg2-1/igt@api_intel_bb@crc32@vecs0-smem0.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear@smem0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-4/igt@gem_mmap_offset@clear@smem0.html">ABORT</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1=
/shard-rkl-8/igt@gem_mmap_offset@clear@smem0.html">PASS</a> +1 other test p=
ass</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-glk2/igt@gen9_exec_parse@allowed-single.html">ABORT</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566">=
i915#5566</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_162419v1/shard-glk4/igt@gen9_exec_parse@allowed-single.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-dg1:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_18073/shard-dg1-19/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-14/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_18073/shard-dg1-12/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/=
shard-dg1-16/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-18/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_18073/shard-dg1-14/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-17/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_18073/shard-dg1-12/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/=
shard-dg1-13/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-18/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_18073/shard-dg1-12/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-14/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_18073/shard-dg1-17/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/=
shard-dg1-13/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-13/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_18073/shard-dg1-16/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-17/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_18073/shard-dg1-19/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/=
shard-dg1-19/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-14/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_18073/shard-dg1-16/igt@i915_module_load@load.html">DMESG-WARN</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1=
-16/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-19/igt@i915_module_load@load.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
18073/shard-dg1-13/igt@i915_module_load@load.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18073/shard-dg1-18/igt@i915_mo=
dule_load@load.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; (<a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-12/igt@i915_modul=
e_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_162419v1/shard-dg1-12/igt@i915_module_load@load.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/=
shard-dg1-12/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-13/igt@i915_mo=
dule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_162419v1/shard-dg1-13/igt@i915_module_load@load.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419=
v1/shard-dg1-13/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-14/igt@i915=
_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_162419v1/shard-dg1-14/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162=
419v1/shard-dg1-14/igt@i915_module_load@load.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-14/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@i915_module_load@load.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
162419v1/shard-dg1-16/igt@i915_module_load@load.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@i915_module_load@load.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_162419v1/shard-dg1-17/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-1=
7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-17/igt@i915_module_load@l=
oad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_162419v1/shard-dg1-17/igt@i915_module_load@load.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg=
1-18/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-18/igt@i915_module_loa=
d@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_162419v1/shard-dg1-18/igt@i915_module_load@load.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard=
-dg1-19/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-19/igt@i915_module_=
load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_162419v1/shard-dg1-19/igt@i915_module_load@load.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/sh=
ard-dg1-19/igt@i915_module_load@load.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-3/igt@i915_pm_rpm@system-suspend.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1335=
6">i915#13356</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_162419v1/shard-rkl-5/igt@i915_pm_rpm@system-suspend.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-snb4/igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13729">i915#13=
729</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/13821">i915#13821</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_162419v1/shard-snb4/igt@i915_pm_rps@reset.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-trans=
ition-fencing.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/5956">i915#5956</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-8/igt@kms_atomic_tra=
nsition@plane-all-modeset-transition-fencing.html">PASS</a> +1 other test p=
ass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15733">i915#15733</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-mtlp-1/igt@k=
ms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-1/igt@kms_cursor_crc@cursor-suspend.html">ABORT</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132"=
>i915#15132</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_162419v1/shard-rkl-5/igt@kms_cursor_crc@cursor-suspend.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@torture-bo:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg1-14/igt@kms_cursor_legacy@torture-bo.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4=
423">i915#4423</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_162419v1/shard-dg1-16/igt@kms_cursor_legacy@torture-bo.html">P=
ASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg2-5/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555=
">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_162419v1/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-mtlp-1/igt@kms_force_connector_basic@prune-stale-modes.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/15672">i915#15672</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-mtlp-4/igt@kms_force_connector_basic=
@prune-stale-modes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-snb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-i=
ndfb-draw-pwrite.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_162419v1/shard-snb4/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-pri-indfb-draw-pwrite.html">PASS</a> +16 other tests pass</l=
i>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i9=
15#15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_162419v1/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> =
+3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-90:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg1-12/igt@kms_rotation_crc@primary-rotation-90.html">A=
BORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/15759">i915#15759</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_162419v1/shard-dg1-17/igt@kms_rotation_crc@primary-rotati=
on-90.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@kms_vblank@ts-continuation-suspend.html">INCO=
MPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/12276">i915#12276</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@kms_vblank@ts-continuation-sus=
pend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-mtlp-4/igt@perf_pmu@busy-double-start.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i91=
5#4349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_162419v1/shard-mtlp-1/igt@perf_pmu@busy-double-start.html">PASS</a> +2=
 other tests pass</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg2-3/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349=
">i915#4349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_162419v1/shard-dg2-11/igt@perf_pmu@busy-double-start@vecs1.html">=
PASS</a> +4 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@drm_buddy@drm_buddy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@drm_buddy@drm_buddy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/15678">i915#15678</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_162419v1/shard-rkl-3/igt@drm_buddy@drm_buddy.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15678=
">i915#15678</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-2/igt@gem_bad_reloc@negative-reloc.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i9=
15#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_162419v1/shard-rkl-6/igt@gem_bad_reloc@negative-reloc.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@gem_bad_reloc@negative-reloc-lut.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3281">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@gem_bad_reloc@negative-r=
eloc-lut.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@gem_ccs@large-ctrl-surf-copy.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008">i=
915#13008</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@gem_ccs@large-ctrl-surf-co=
py.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/13008">i915#13008</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@gem_close_race@multigpu-basic-process.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/7697">i915#7697</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@gem_close_race@mult=
igpu-basic-process.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-2/igt@gem_exec_balancer@parallel-dmabuf-import-out-=
fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@gem_exec_balancer@para=
llel-dmabuf-import-out-fence.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</=
li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-7/igt@gem_lmem_swapping@heavy-verify-multi-ccs.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/4613">i915#4613</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_162419v1/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-m=
ulti-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@gem_lmem_swapping@parallel-random.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/4613">i915#4613</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@gem_lmem_swapping@paral=
lel-random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg2-7/igt@gem_lmem_swapping@smem-oom.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15734">i91=
5#15734</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_162419v1/shard-dg2-7/igt@gem_lmem_swapping@smem-oom.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/549=
3">i915#5493</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg2-7/igt@gem_lmem_swapping@smem-oom@lmem0.html">CRASH<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/549=
3">i915#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_162419v1/shard-dg2-7/igt@gem_lmem_swapping@smem-oom@lmem0.html">=
INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/5493">i915#5493</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-2/igt@gem_partial_pwrite_pread@write.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">=
i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_162419v1/shard-rkl-6/igt@gem_partial_pwrite_pread@write.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-u=
ncached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@gem_=
partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a=
>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@gem_userptr_blits@forbidden-operations.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3282">i915#3282</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@gem_=
userptr_blits@forbidden-operations.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a=
>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-2/igt@gem_userptr_blits@invalid-mmap-offset-unsync.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3297">i915#3297</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@gem_userptr_blits@invalid-mm=
ap-offset-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-2/igt@gem_userptr_blits@relocations.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i=
915#3281</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3297">i915#3297</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@gem_userptr_blits@relocations=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3281">i915#3281</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-2/igt@gen9_exec_parse@bb-secure.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#=
2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_162419v1/shard-rkl-6/igt@gen9_exec_parse@bb-secure.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#1=
4544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/2527">i915#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@gen9_exec_parse@shadow-peek.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/2527">i915#2527</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@i915_pm_freq_api@freq-suspend.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/8399">i915#8399</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@i915_pm_freq_api@freq-suspe=
nd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14=
544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/7707">i915#7707</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_162419v1/shard-rkl-3/igt@intel_hwmon@hwmon-read.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/770=
7">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/5286">i915#5286</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_big_fb@4-tiled-64=
bpp-rotate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate=
-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_big_fb@4-tiled-=
max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286=
</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-2/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/363=
8">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_162419v1/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_big_fb@yf-tiled-16bpp-rotate-2=
70.html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-2/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html">SKI=
P</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
62419v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3=
/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#140=
98</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6095">i915#6095</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs=
@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3=
/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-b-hdmi-a-2.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
6095">i915#6095</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-2/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_ccs@random=
-ccs-data-4-tiled-dg2-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">=
i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-2/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/12313">i915#12313</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled=
-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/12313">i915#12313</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg1-16/igt@kms_chamelium_audio@hdmi-audio.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151=
">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/4423">i915#4423</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg1-12/igt@kms_chamel=
ium_audio@hdmi-audio.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3=
/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#111=
51</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915=
#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/7828">i915#7828</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0-hdcp14:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg2-5/igt@kms_content_protection@lic-type-0-hdcp14.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/6944">i915#6944</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_content_protection@lic-type=
-0-hdcp14.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg1-12/igt@kms_content_protection@mei-interface.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/9433">i915#9433</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_162419v1/shard-dg1-17/igt@kms_content_protection@mei-interfa=
ce.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg2-3/igt@kms_content_protection@type1.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i9=
15#6944</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_content_pro=
tection@type1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162">i915#7162</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#=
9424</a>)</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-2/igt@kms_content_protection@type1.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i9=
15#6944</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_content_prot=
ection@type1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915=
#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@kms_content_protection@uevent.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/7118">i915#7118</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt=
@kms_content_protection@uevent.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i9=
15#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent-hdcp14:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg2-11/igt@kms_content_protection@uevent-hdcp14.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/7173">i915#7173</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_162419v1/shard-dg2-7/igt@kms_content_protection@uevent-hdcp1=
4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/6944">i915#6944</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg1-16/igt@kms_cursor_crc@cursor-offscreen-512x170.html=
">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/15759">i915#15759</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_162419v1/shard-dg1-16/igt@kms_cursor_crc@cursor-offscr=
een-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@kms_cursor_crc@cursor-random-32x10.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_cursor_crc@cursor-=
random-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg2-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.ht=
ml">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/15759">i915#15759</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_162419v1/shard-dg2-11/igt@kms_cursor_crc@cursor-rapi=
d-movement-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-512x512.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/13049">i915#13049</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512=
x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13049">i915#13049</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_162419v1/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atom=
ic-transitions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/15764">i915#15764</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i=
915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@kms_dsc@dsc-wi=
th-bpc-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@kms_feature_discovery@dp-mst.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i=
915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/9337">i915#9337</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_feature_discovery@dp-mst=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9337">i915#9337</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@kms_flip@2x-dpms-vs-vblank-race.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9934">i915#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_flip@2x-dpms-vs-vblan=
k-race.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9934">i915#9934</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-2/igt@kms_flip@2x-plain-flip-fb-recreate.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/99=
34">i915#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_162419v1/shard-rkl-6/igt@kms_flip@2x-plain-flip-fb-recreate.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp=
-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@k=
ms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-pwrite:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-=
pri-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_=
frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-pwrite.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15102">i915#15102</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-c=
ur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/ig=
t@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3023">i915#3023</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-glk2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pr=
i-shrfb-draw-mmap-cpu.html">ABORT</a> -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_162419v1/shard-glk1/igt@kms_frontbuffer_trac=
king@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-p=
ri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_fr=
ontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/1825">i915#1825</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri=
-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-=
3/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
15102">i915#15102</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-=
indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
62419v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-=
draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +4 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur=
-indfb-onoff.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/s=
hard-dg1-12/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-onoff.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-=
shrfb-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-=
3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/1825">i915#1825</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-indfb-scaledprim=
ary.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-dg2-4/igt@kms_fron=
tbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i91=
5#15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-suspend.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_=
frontbuffer_tracking@psr-suspend.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a=
>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-mtlp-1/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187">i9=
15#1187</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/12713">i915#12713</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_162419v1/shard-mtlp-4/igt@kms_hdr@brightness-with-hdr=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@kms_joiner@invalid-modeset-ultra-joiner.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/15458">i915#15458</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_joiner@inva=
lid-modeset-ultra-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/15458">i915#15458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-modifier-source-clamping:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-modifier-sourc=
e-clamping.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt=
@kms_plane@pixel-format-4-tiled-modifier-source-clamping.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i91=
5#15709</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-2/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-mod=
ifier-source-clamping.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_=
plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15709">i915#15709</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-4.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958"=
>i915#13958</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@kms_plane_multiple@2x-ti=
ling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-=
clamping-rotation.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
62419v1/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clampi=
ng-rotation.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/15329">i915#15329</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-=
clamping-rotation@pipe-b.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/s=
hard-rkl-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotati=
on@pipe-b.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15329">i915#15329</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-rotation@pipe-c.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/15329">i915#15329</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_pl=
ane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i=
915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/15329">i915#15329</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@kms_pm_backlight@basic-brightness.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/5354">i915#5354</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@kms_pm_backlight@basic-=
brightness.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-psr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-2/igt@kms_pm_dc@dc5-psr.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16241=
9v1/shard-rkl-6/igt@kms_pm_dc@dc5-psr.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#96=
85</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15=
739">i915#15739</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_162419v1/shard-rkl-3/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15739">i9=
15#15739</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@package-g7:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@kms_pm_rpm@package-g7.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/15403">i915#15403</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_pm_rpm@package-g7.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/154=
03">i915#15403</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continu=
ous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/11520">i915#11520</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3=
/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/115=
20">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-update-sf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-2/igt@kms_psr2_sf@pr-cursor-plane-update-sf.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/11520">i915#11520</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_psr2_sf@pr-cursor-plane-updat=
e-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11520">i915#11520</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">=
i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_psr@fbc-=
psr2-sprite-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +7 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-2/igt@kms_psr@pr-cursor-mmap-cpu.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915=
#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_psr@pr-cursor-mmap-cpu.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-2/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/5289">i915#5289</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_162419v1/shard-rkl-6/igt@kms_rotation_crc@primary-4-t=
iled-reflect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-18=
0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/5289">i915#5289</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-8/igt@kms_rotati=
on_crc@primary-4-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-3/igt@kms_vblank@ts-continuation-dpms-suspend.html"=
>INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/12276">i915#12276</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_162419v1/shard-rkl-1/igt@kms_vblank@ts-continuatio=
n-dpms-suspend.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/15132">i915#15132</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-2/igt@kms_vrr@flip-basic.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243">i915#15243<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/35=
55">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_162419v1/shard-rkl-6/igt@kms_vrr@flip-basic.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915=
#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/15243">i915#15243</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-6/igt@kms_vrr@negative-basic.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14=
544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/9906">i915#9906</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_162419v1/shard-rkl-3/igt@kms_vrr@negative-bas=
ic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-2/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
62419v1/shard-rkl-6/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">=
i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18073/shard-rkl-7/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3=
708</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_162419v1/shard-rkl-6/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18073 -&gt; Patchwork_162419v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18073: 658ee8457333fe9f26f88f812f6cd423f800720b @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_8776: 8776<br />
  Patchwork_162419v1: 658ee8457333fe9f26f88f812f6cd423f800720b @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============7535833607422980040==--
