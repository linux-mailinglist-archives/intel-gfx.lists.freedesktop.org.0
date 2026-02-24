Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UAmhFJWCnWlsQQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 11:51:01 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1427A185A7D
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 11:51:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75DA810E540;
	Tue, 24 Feb 2026 10:50:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A14210E540;
 Tue, 24 Feb 2026 10:50:57 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8861767652629692714=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EFull=3A_success_for_drm/i915/dp=3A_On_DPCD_i?=
 =?utf-8?q?nit/caps_wake_the_DPRx_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Feb 2026 10:50:57 -0000
Message-ID: <177193025753.280848.11530318193598019602@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260219094326.34922-1-arun.r.murthy@intel.com>
In-Reply-To: <20260219094326.34922-1-arun.r.murthy@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.11 / 15.00];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[emeril.freedesktop.org];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.462];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[intel-gfx@lists.freedesktop.org]
X-Rspamd-Queue-Id: 1427A185A7D
X-Rspamd-Action: no action

--===============8861767652629692714==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: On DPCD init/caps wake the DPRx (rev2)
URL   : https://patchwork.freedesktop.org/series/161818/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_18022_full -> Patchwork_161818v2_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

New tests
---------

  New tests have been introduced between CI_DRM_18022_full and Patchwork_161818v2_full:

### New IGT tests (18) ###

  * igt@kms_async_flips@test-time-stamp-atomic@pipe-a-vga-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.16] s

  * igt@kms_async_flips@test-time-stamp-atomic@pipe-b-vga-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.17] s

  * igt@kms_atomic@crtc-invalid-params@pipe-a-vga-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.20] s

  * igt@kms_atomic_interruptible@legacy-setmode@pipe-a-vga-1:
    - Statuses : 1 pass(s)
    - Exec time: [6.25] s

  * igt@kms_atomic_interruptible@universal-setplane-primary@pipe-a-vga-1:
    - Statuses : 1 pass(s)
    - Exec time: [6.31] s

  * igt@kms_atomic_transition@plane-primary-toggle-with-vblank-wait@pipe-a-vga-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.31] s

  * igt@kms_atomic_transition@plane-primary-toggle-with-vblank-wait@pipe-b-vga-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.32] s

  * igt@kms_cursor_edge_walk@64x64-top-bottom@pipe-a-vga-1:
    - Statuses : 1 pass(s)
    - Exec time: [3.44] s

  * igt@kms_invalid_mode@overflow-vrefresh@pipe-a-vga-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.11] s

  * igt@kms_invalid_mode@overflow-vrefresh@pipe-b-vga-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_invalid_mode@zero-hdisplay@pipe-a-vga-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.12] s

  * igt@kms_invalid_mode@zero-hdisplay@pipe-b-vga-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_lease@atomic-implicit-crtc@pipe-a-vga-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_lease@atomic-implicit-crtc@pipe-b-vga-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.02] s

  * igt@kms_lease@empty-lease@pipe-a-vga-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_lease@empty-lease@pipe-b-vga-1:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_vblank@wait-busy@pipe-a-vga-1:
    - Statuses : 1 pass(s)
    - Exec time: [2.50] s

  * igt@kms_vblank@wait-busy@pipe-b-vga-1:
    - Statuses : 1 pass(s)
    - Exec time: [2.35] s

  

Known issues
------------

  Here are the changes found in Patchwork_161818v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@cold-reset-bound:
    - shard-tglu:         NOTRUN -> [SKIP][1] ([i915#11078])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@device_reset@cold-reset-bound.html

  * igt@drm_buddy@drm_buddy:
    - shard-tglu-1:       NOTRUN -> [SKIP][2] ([i915#15678])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@drm_buddy@drm_buddy.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-tglu:         NOTRUN -> [SKIP][3] ([i915#3555] / [i915#9323])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-rkl:          NOTRUN -> [SKIP][4] ([i915#9323])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][5] ([i915#12392] / [i915#13356])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-snb:          NOTRUN -> [SKIP][6] +68 other tests skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-snb6/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-rkl:          NOTRUN -> [SKIP][7] ([i915#6335])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_create@create-ext-set-pat:
    - shard-rkl:          NOTRUN -> [SKIP][8] ([i915#8562])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-glk:          NOTRUN -> [INCOMPLETE][9] ([i915#13356]) +1 other test incomplete
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-glk5/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_ctx_persistence@hang:
    - shard-snb:          NOTRUN -> [SKIP][10] ([i915#1099])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-snb6/igt@gem_ctx_persistence@hang.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-rkl:          NOTRUN -> [SKIP][11] ([i915#280])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-rkl:          NOTRUN -> [SKIP][12] ([i915#4525]) +1 other test skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-7/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_capture@capture-invisible:
    - shard-rkl:          NOTRUN -> [SKIP][13] ([i915#6334]) +1 other test skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@gem_exec_capture@capture-invisible.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][14] ([i915#3281]) +6 other tests skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][15] ([i915#13196] / [i915#13356]) +1 other test incomplete
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-glk10/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - shard-rkl:          [PASS][16] -> [ABORT][17] ([i915#7975]) +1 other test abort
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-8/igt@gem_exec_suspend@basic-s4-devices.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-1/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-mtlp:         NOTRUN -> [SKIP][18] ([i915#4613])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-3/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-tglu-1:       NOTRUN -> [SKIP][19] ([i915#4613]) +2 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-tglu:         NOTRUN -> [SKIP][20] ([i915#4613]) +2 other tests skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-glk:          NOTRUN -> [SKIP][21] ([i915#4613]) +6 other tests skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-glk1/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-rkl:          NOTRUN -> [SKIP][22] ([i915#3282]) +6 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_softpin@noreloc-s3:
    - shard-rkl:          [PASS][23] -> [INCOMPLETE][24] ([i915#13809])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-5/igt@gem_softpin@noreloc-s3.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-3/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-tglu-1:       NOTRUN -> [SKIP][25] ([i915#3297] / [i915#3323])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-tglu-1:       NOTRUN -> [SKIP][26] ([i915#3297])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-rkl:          NOTRUN -> [SKIP][27] ([i915#3297]) +1 other test skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-tglu:         NOTRUN -> [SKIP][28] ([i915#2527] / [i915#2856])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-tglu-1:       NOTRUN -> [SKIP][29] ([i915#2527] / [i915#2856]) +1 other test skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@gen9_exec_parse@bb-chained.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          NOTRUN -> [SKIP][30] ([i915#2527]) +2 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@gen9_exec_parse@bb-oversize.html

  * igt@i915_module_load@fault-injection@intel_connector_register:
    - shard-tglu-1:       NOTRUN -> [ABORT][31] ([i915#15342]) +1 other test abort
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@i915_module_load@fault-injection@intel_connector_register.html

  * igt@i915_module_load@fault-injection@intel_gt_init-enodev:
    - shard-tglu-1:       NOTRUN -> [SKIP][32] ([i915#15479]) +4 other tests skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@i915_module_load@fault-injection@intel_gt_init-enodev.html

  * igt@i915_module_load@load:
    - shard-mtlp:         ([PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57]) -> ([PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [SKIP][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81]) ([i915#14785])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-2/igt@i915_module_load@load.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-8/igt@i915_module_load@load.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-3/igt@i915_module_load@load.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-4/igt@i915_module_load@load.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-7/igt@i915_module_load@load.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-2/igt@i915_module_load@load.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-5/igt@i915_module_load@load.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-7/igt@i915_module_load@load.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-1/igt@i915_module_load@load.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-3/igt@i915_module_load@load.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-6/igt@i915_module_load@load.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-6/igt@i915_module_load@load.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-1/igt@i915_module_load@load.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-5/igt@i915_module_load@load.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-4/igt@i915_module_load@load.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-2/igt@i915_module_load@load.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-8/igt@i915_module_load@load.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-7/igt@i915_module_load@load.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-6/igt@i915_module_load@load.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-7/igt@i915_module_load@load.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-8/igt@i915_module_load@load.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-1/igt@i915_module_load@load.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-3/igt@i915_module_load@load.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-5/igt@i915_module_load@load.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-4/igt@i915_module_load@load.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-5/igt@i915_module_load@load.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-2/igt@i915_module_load@load.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-2/igt@i915_module_load@load.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-5/igt@i915_module_load@load.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-6/igt@i915_module_load@load.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-3/igt@i915_module_load@load.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-1/igt@i915_module_load@load.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-7/igt@i915_module_load@load.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-8/igt@i915_module_load@load.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-8/igt@i915_module_load@load.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-5/igt@i915_module_load@load.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-8/igt@i915_module_load@load.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-5/igt@i915_module_load@load.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-2/igt@i915_module_load@load.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-1/igt@i915_module_load@load.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-6/igt@i915_module_load@load.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-3/igt@i915_module_load@load.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-1/igt@i915_module_load@load.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-4/igt@i915_module_load@load.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-6/igt@i915_module_load@load.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-3/igt@i915_module_load@load.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-6/igt@i915_module_load@load.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-1/igt@i915_module_load@load.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-2/igt@i915_module_load@load.html

  * igt@i915_module_load@resize-bar:
    - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#6412])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-tglu:         NOTRUN -> [SKIP][83] ([i915#14498])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-10/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-rkl:          [PASS][84] -> [INCOMPLETE][85] ([i915#13356]) +1 other test incomplete
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-4/igt@i915_pm_rpm@system-suspend-execbuf.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_pm_rps@min-max-config-loaded:
    - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#11681] / [i915#6621])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-3/igt@i915_pm_rps@min-max-config-loaded.html

  * igt@i915_query@hwconfig_table:
    - shard-tglu-1:       NOTRUN -> [SKIP][87] ([i915#6245])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@i915_query@hwconfig_table.html

  * igt@intel_hwmon@hwmon-write:
    - shard-tglu-1:       NOTRUN -> [SKIP][88] ([i915#7707])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@intel_hwmon@hwmon-write.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#5286]) +3 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][90] ([i915#5286]) +1 other test skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-10/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-mtlp:         [PASS][91] -> [FAIL][92] ([i915#15733] / [i915#5138])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-tglu-1:       NOTRUN -> [SKIP][93] ([i915#5286]) +4 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-tglu-1:       NOTRUN -> [SKIP][94] ([i915#3828])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#3638]) +3 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][96] ([i915#6095]) +54 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#10307] / [i915#6095]) +134 other tests skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg2-11/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-a-dp-3.html

  * igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][98] ([i915#6095]) +215 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg1-14/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#6095]) +55 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg2-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#14544] / [i915#6095]) +3 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#14098] / [i915#14544] / [i915#6095]) +1 other test skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#10307] / [i915#10434] / [i915#6095])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#12805])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][104] ([i915#6095]) +34 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-10/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][105] ([i915#6095]) +57 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][106] ([i915#15582]) +1 other test incomplete
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-glk6/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][107] ([i915#12313]) +1 other test skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#14098] / [i915#6095]) +38 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
    - shard-tglu-1:       NOTRUN -> [SKIP][109] ([i915#11151] / [i915#7828]) +4 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium_frames@hdmi-frame-dump:
    - shard-mtlp:         NOTRUN -> [SKIP][110] ([i915#11151] / [i915#7828])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-3/igt@kms_chamelium_frames@hdmi-frame-dump.html

  * igt@kms_chamelium_hpd@hdmi-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#11151] / [i915#7828]) +6 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_chamelium_hpd@hdmi-hpd-fast.html

  * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
    - shard-tglu:         NOTRUN -> [SKIP][112] ([i915#11151] / [i915#7828]) +5 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-10/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#6944] / [i915#7118] / [i915#9424])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-rkl:          NOTRUN -> [SKIP][114] ([i915#15330] / [i915#3116])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-tglu:         NOTRUN -> [SKIP][115] ([i915#15330] / [i915#3116] / [i915#3299])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-10/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@dp-mst-type-1-suspend-resume:
    - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#15330])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html

  * igt@kms_content_protection@lic-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#6944] / [i915#9424])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-7/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@suspend-resume:
    - shard-tglu:         NOTRUN -> [SKIP][118] ([i915#6944])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@kms_content_protection@suspend-resume.html

  * igt@kms_content_protection@suspend-resume@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][119] ([i915#7173]) +1 other test fail
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg2-11/igt@kms_content_protection@suspend-resume@pipe-a-dp-3.html

  * igt@kms_content_protection@uevent-hdcp14:
    - shard-tglu-1:       NOTRUN -> [SKIP][120] ([i915#6944]) +1 other test skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_content_protection@uevent-hdcp14.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#13049]) +1 other test skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-tglu-1:       NOTRUN -> [SKIP][122] ([i915#13049]) +1 other test skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-random-32x32:
    - shard-tglu-1:       NOTRUN -> [SKIP][123] ([i915#3555]) +2 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_cursor_crc@cursor-random-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#3555]) +2 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][125] ([i915#13566])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-3/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-2.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-tglu:         NOTRUN -> [SKIP][126] ([i915#13049])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#4103]) +3 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_dp_link_training@non-uhbr-sst:
    - shard-dg2:          [PASS][128] -> [SKIP][129] ([i915#13749])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_dp_link_training@non-uhbr-sst.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg2-7/igt@kms_dp_link_training@non-uhbr-sst.html
    - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#13749])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@kms_dp_link_training@non-uhbr-sst.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#13707])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#3555] / [i915#3840]) +2 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#3840])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-tglu:         NOTRUN -> [SKIP][134] ([i915#3555] / [i915#3840])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-10/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-dg2:          [PASS][135] -> [FAIL][136] ([i915#4767])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-4/igt@kms_fbcon_fbt@fbc-suspend.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg2-8/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#3955])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@chamelium:
    - shard-tglu-1:       NOTRUN -> [SKIP][138] ([i915#2065] / [i915#4854])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_feature_discovery@chamelium.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][139] ([i915#3637] / [i915#9934]) +3 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-10/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][140] ([i915#3637] / [i915#9934]) +2 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#9934]) +4 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-rkl:          [PASS][142] -> [INCOMPLETE][143] ([i915#6113])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-5/igt@kms_flip@flip-vs-suspend.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-3/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend@a-hdmi-a2:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][144] ([i915#6113])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-3/igt@kms_flip@flip-vs-suspend@a-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][145] ([i915#15643]) +1 other test skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
    - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#15643]) +2 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][147] ([i915#15643]) +3 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][148] ([i915#1825])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:
    - shard-tglu-1:       NOTRUN -> [SKIP][149] +36 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][150] ([i915#8708])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][151] +22 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-glk10:        NOTRUN -> [SKIP][152] +67 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-glk10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:
    - shard-tglu-1:       NOTRUN -> [SKIP][153] ([i915#15102]) +13 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-tglu-1:       NOTRUN -> [SKIP][154] ([i915#5439])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#15102]) +3 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#15102] / [i915#3023]) +13 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt:
    - shard-tglu:         NOTRUN -> [SKIP][157] +32 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#1825]) +23 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt:
    - shard-tglu:         NOTRUN -> [SKIP][159] ([i915#15102]) +8 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-10/igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-tglu:         NOTRUN -> [SKIP][160] ([i915#12713])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-10/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_hdr@static-swap:
    - shard-dg2:          [PASS][161] -> [SKIP][162] ([i915#3555] / [i915#8228])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_hdr@static-swap.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg2-7/igt@kms_hdr@static-swap.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][163] ([i915#3555] / [i915#8228]) +1 other test skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#3555] / [i915#8228]) +1 other test skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][165] ([i915#15460])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-dg2:          [PASS][166] -> [SKIP][167] ([i915#15459])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_joiner@basic-force-big-joiner.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg2-5/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_joiner@basic-max-non-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#13688])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_joiner@basic-max-non-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#15459])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][170] ([i915#15458])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][171] ([i915#15638] / [i915#15722])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html

  * igt@kms_pipe_stress@stress-xrgb8888-yftiled:
    - shard-tglu-1:       NOTRUN -> [SKIP][172] ([i915#14712])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html

  * igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier:
    - shard-tglu-1:       NOTRUN -> [SKIP][173] ([i915#15709]) +2 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier.html

  * igt@kms_plane@pixel-format-4-tiled-modifier:
    - shard-tglu:         NOTRUN -> [SKIP][174] ([i915#15709])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@kms_plane@pixel-format-4-tiled-modifier.html

  * igt@kms_plane@pixel-format-y-tiled-modifier@pipe-a-plane-7:
    - shard-tglu-1:       NOTRUN -> [SKIP][175] ([i915#15608]) +1 other test skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_plane@pixel-format-y-tiled-modifier@pipe-a-plane-7.html

  * igt@kms_plane@pixel-format-yf-tiled-modifier:
    - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#15709]) +3 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-7/igt@kms_plane@pixel-format-yf-tiled-modifier.html

  * igt@kms_plane@plane-panning-bottom-right-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][177] ([i915#13026]) +1 other test incomplete
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-glk2/igt@kms_plane@plane-panning-bottom-right-suspend.html

  * igt@kms_plane_alpha_blend@constant-alpha-max:
    - shard-glk:          NOTRUN -> [FAIL][178] ([i915#10647] / [i915#12169])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-glk1/igt@kms_plane_alpha_blend@constant-alpha-max.html

  * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][179] ([i915#10647]) +1 other test fail
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-glk1/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1.html

  * igt@kms_plane_multiple@2x-tiling-none:
    - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#13958])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_plane_multiple@2x-tiling-none.html

  * igt@kms_plane_multiple@2x-tiling-yf:
    - shard-tglu-1:       NOTRUN -> [SKIP][181] ([i915#13958])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-yf.html

  * igt@kms_plane_multiple@tiling-4:
    - shard-tglu:         NOTRUN -> [SKIP][182] ([i915#14259])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@kms_plane_multiple@tiling-4.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-tglu:         NOTRUN -> [SKIP][183] ([i915#15329] / [i915#3555])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
    - shard-tglu:         NOTRUN -> [SKIP][184] ([i915#15329]) +3 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#15329]) +7 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-7/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-tglu:         NOTRUN -> [SKIP][186] ([i915#3828])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu-1:       NOTRUN -> [FAIL][187] ([i915#15752])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#3828]) +1 other test skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#8430])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-dg2:          [PASS][190] -> [SKIP][191] ([i915#15073])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@i2c:
    - shard-dg1:          [PASS][192] -> [DMESG-WARN][193] ([i915#4423]) +1 other test dmesg-warn
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg1-12/igt@kms_pm_rpm@i2c.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg1-16/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#15073])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
    - shard-dg1:          [PASS][195] -> [SKIP][196] ([i915#15073])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg1-17/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg1-15/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_prime@d3hot:
    - shard-tglu:         NOTRUN -> [SKIP][197] ([i915#6524])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:
    - shard-tglu:         NOTRUN -> [SKIP][198] ([i915#11520]) +3 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-10/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html
    - shard-glk10:        NOTRUN -> [SKIP][199] ([i915#11520]) +1 other test skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-glk10/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#11520]) +9 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:
    - shard-snb:          NOTRUN -> [SKIP][201] ([i915#11520])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-snb6/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][202] ([i915#11520]) +6 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][203] ([i915#11520]) +9 other tests skip
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-glk1/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-tglu:         NOTRUN -> [SKIP][204] ([i915#9683])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-10/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#9683])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@fbc-pr-no-drrs:
    - shard-mtlp:         NOTRUN -> [SKIP][206] ([i915#9688])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-3/igt@kms_psr@fbc-pr-no-drrs.html

  * igt@kms_psr@fbc-psr2-cursor-plane-move:
    - shard-tglu:         NOTRUN -> [SKIP][207] ([i915#9732]) +9 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@kms_psr@fbc-psr2-cursor-plane-move.html

  * igt@kms_psr@fbc-psr2-sprite-mmap-gtt:
    - shard-tglu-1:       NOTRUN -> [SKIP][208] ([i915#9732]) +12 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_psr@fbc-psr2-sprite-mmap-gtt.html

  * igt@kms_psr@pr-sprite-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#1072] / [i915#9732]) +16 other tests skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_psr@pr-sprite-mmap-gtt.html

  * igt@kms_psr@psr2-sprite-plane-onoff:
    - shard-glk:          NOTRUN -> [SKIP][210] +268 other tests skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-glk1/igt@kms_psr@psr2-sprite-plane-onoff.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          NOTRUN -> [SKIP][211] ([i915#9685]) +1 other test skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][212] ([i915#5289]) +1 other test skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-tglu:         NOTRUN -> [SKIP][213] ([i915#5289])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-rkl:          NOTRUN -> [SKIP][214] ([i915#5289]) +1 other test skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_scaling_modes@scaling-mode-center:
    - shard-tglu:         NOTRUN -> [SKIP][215] ([i915#3555]) +4 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@kms_scaling_modes@scaling-mode-center.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglu-1:       NOTRUN -> [SKIP][216] ([i915#8623])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#9906])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@max-min:
    - shard-tglu-1:       NOTRUN -> [SKIP][218] ([i915#9906]) +1 other test skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_vrr@max-min.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-tglu:         NOTRUN -> [SKIP][219] ([i915#9906])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@kms_vrr@seamless-rr-switch-virtual.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-rkl:          NOTRUN -> [SKIP][220] ([i915#2436])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-rkl:          NOTRUN -> [SKIP][221] ([i915#2435])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@perf@per-context-mode-unprivileged.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-rkl:          NOTRUN -> [SKIP][222] ([i915#8516])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][223] ([i915#3708])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@prime_vgem@coherency-gtt.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each:
    - shard-rkl:          NOTRUN -> [SKIP][224] ([i915#9917])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@sriov_basic@enable-vfs-bind-unbind-each.html

  
#### Possible fixes ####

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [INCOMPLETE][225] ([i915#13356]) -> [PASS][226]
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - shard-rkl:          [INCOMPLETE][227] ([i915#13356]) -> [PASS][228] +2 other tests pass
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-3/igt@gem_exec_suspend@basic-s0@smem.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-rkl:          [ABORT][229] ([i915#15131]) -> [PASS][230]
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-1/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-7/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][231] ([i915#13821]) -> [PASS][232]
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-snb6/igt@i915_pm_rps@reset.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-snb6/igt@i915_pm_rps@reset.html

  * igt@kms_atomic@plane-invalid-params:
    - shard-dg1:          [DMESG-WARN][233] ([i915#4423]) -> [PASS][234] +2 other tests pass
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg1-16/igt@kms_atomic@plane-invalid-params.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg1-13/igt@kms_atomic@plane-invalid-params.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         [FAIL][235] ([i915#15733] / [i915#5138]) -> [PASS][236]
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_color@deep-color:
    - shard-rkl:          [SKIP][237] ([i915#12655] / [i915#3555]) -> [PASS][238]
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-2/igt@kms_color@deep-color.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_color@deep-color.html

  * igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-1:
    - shard-tglu:         [FAIL][239] ([i915#13566]) -> [PASS][240] +1 other test pass
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-tglu-10/igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-1.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-5/igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1:
    - shard-snb:          [FAIL][241] ([i915#14600]) -> [PASS][242] +1 other test pass
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-snb6/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-snb5/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-rkl:          [INCOMPLETE][243] ([i915#6113]) -> [PASS][244]
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:
    - shard-snb:          [SKIP][245] -> [PASS][246] +27 other tests pass
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_hdr@static-toggle:
    - shard-dg2:          [SKIP][247] ([i915#3555] / [i915#8228]) -> [PASS][248]
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-6/igt@kms_hdr@static-toggle.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg2-11/igt@kms_hdr@static-toggle.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - shard-rkl:          [INCOMPLETE][249] ([i915#12756] / [i915#13476]) -> [PASS][250]
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_pipe_crc_basic@suspend-read-crc.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a:
    - shard-rkl:          [INCOMPLETE][251] ([i915#14412]) -> [PASS][252] +1 other test pass
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [SKIP][253] ([i915#14544] / [i915#15073]) -> [PASS][254]
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          [SKIP][255] ([i915#15073]) -> [PASS][256]
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [SKIP][257] ([i915#15073]) -> [PASS][258]
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@system-suspend-modeset:
    - shard-rkl:          [ABORT][259] ([i915#15132]) -> [PASS][260]
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-1/igt@kms_pm_rpm@system-suspend-modeset.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-7/igt@kms_pm_rpm@system-suspend-modeset.html

  
#### Warnings ####

  * igt@api_intel_bb@object-reloc-keep-cache:
    - shard-rkl:          [SKIP][261] ([i915#8411]) -> [SKIP][262] ([i915#14544] / [i915#8411])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-2/igt@api_intel_bb@object-reloc-keep-cache.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@api_intel_bb@object-reloc-keep-cache.html

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-rkl:          [SKIP][263] ([i915#14544] / [i915#8411]) -> [SKIP][264] ([i915#8411])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@api_intel_bb@object-reloc-purge-cache.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-rkl:          [SKIP][265] ([i915#14544] / [i915#3555] / [i915#9323]) -> [SKIP][266] ([i915#3555] / [i915#9323])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@suspend-resume:
    - shard-rkl:          [SKIP][267] ([i915#14544] / [i915#9323]) -> [SKIP][268] ([i915#9323])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@gem_ccs@suspend-resume.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@gem_ccs@suspend-resume.html

  * igt@gem_ctx_sseu@engines:
    - shard-rkl:          [SKIP][269] ([i915#280]) -> [SKIP][270] ([i915#14544] / [i915#280]) +1 other test skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@gem_ctx_sseu@engines.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@gem_ctx_sseu@engines.html

  * igt@gem_exec_balancer@parallel:
    - shard-rkl:          [SKIP][271] ([i915#4525]) -> [SKIP][272] ([i915#14544] / [i915#4525]) +1 other test skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@gem_exec_balancer@parallel.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-rkl:          [SKIP][273] ([i915#14544] / [i915#4525]) -> [SKIP][274] ([i915#4525])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@gem_exec_balancer@parallel-contexts.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_reloc@basic-gtt-cpu-noreloc:
    - shard-rkl:          [SKIP][275] ([i915#14544] / [i915#3281]) -> [SKIP][276] ([i915#3281])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-read-noreloc:
    - shard-rkl:          [SKIP][277] ([i915#3281]) -> [SKIP][278] ([i915#14544] / [i915#3281]) +5 other tests skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-read-noreloc.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-read-noreloc.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-rkl:          [SKIP][279] ([i915#4613]) -> [SKIP][280] ([i915#14544] / [i915#4613])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@gem_lmem_swapping@heavy-verify-random.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-rkl:          [SKIP][281] ([i915#14544] / [i915#4613]) -> [SKIP][282] ([i915#4613]) +1 other test skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-random-ccs.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          [SKIP][283] ([i915#3282]) -> [SKIP][284] ([i915#14544] / [i915#3282]) +4 other tests skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pread@display:
    - shard-rkl:          [SKIP][285] ([i915#14544] / [i915#3282]) -> [SKIP][286] ([i915#3282])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@gem_pread@display.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@gem_pread@display.html

  * igt@gem_pxp@hw-rejects-pxp-buffer:
    - shard-rkl:          [SKIP][287] ([i915#13717] / [i915#14544]) -> [SKIP][288] ([i915#13717])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-buffer.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-buffer.html

  * igt@gem_userptr_blits@access-control:
    - shard-rkl:          [SKIP][289] ([i915#3297]) -> [SKIP][290] ([i915#14544] / [i915#3297])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-2/igt@gem_userptr_blits@access-control.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@gem_userptr_blits@access-control.html

  * igt@gem_userptr_blits@relocations:
    - shard-rkl:          [SKIP][291] ([i915#3281] / [i915#3297]) -> [SKIP][292] ([i915#14544] / [i915#3281] / [i915#3297])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@gem_userptr_blits@relocations.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@gem_userptr_blits@relocations.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-rkl:          [SKIP][293] -> [SKIP][294] ([i915#14544]) +10 other tests skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-2/igt@gen7_exec_parse@chained-batch.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@gen7_exec_parse@chained-batch.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-rkl:          [SKIP][295] ([i915#2527]) -> [SKIP][296] ([i915#14544] / [i915#2527]) +1 other test skip
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@gen9_exec_parse@bb-start-out.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@gen9_exec_parse@bb-start-out.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-rkl:          [SKIP][297] ([i915#14544] / [i915#2527]) -> [SKIP][298] ([i915#2527]) +1 other test skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@gen9_exec_parse@secure-batches.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-rkl:          [SKIP][299] ([i915#8399]) -> [SKIP][300] ([i915#14544] / [i915#8399]) +1 other test skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-2/igt@i915_pm_freq_api@freq-suspend.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@i915_pm_freq_api@freq-suspend.html

  * igt@intel_hwmon@hwmon-read:
    - shard-rkl:          [SKIP][301] ([i915#7707]) -> [SKIP][302] ([i915#14544] / [i915#7707])
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@intel_hwmon@hwmon-read.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@intel_hwmon@hwmon-read.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-180:
    - shard-rkl:          [SKIP][303] ([i915#5286]) -> [SKIP][304] ([i915#14544] / [i915#5286]) +4 other tests skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-rkl:          [SKIP][305] ([i915#14544] / [i915#5286]) -> [SKIP][306] ([i915#5286])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-rkl:          [SKIP][307] ([i915#3828]) -> [SKIP][308] ([i915#14544] / [i915#3828])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-rkl:          [SKIP][309] ([i915#14544] / [i915#3638]) -> [SKIP][310] ([i915#3638])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-rkl:          [SKIP][311] ([i915#14544]) -> [SKIP][312] +2 other tests skip
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][313] ([i915#12313]) -> [SKIP][314] ([i915#12313] / [i915#14544]) +1 other test skip
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][315] ([i915#6095]) -> [SKIP][316] ([i915#14544] / [i915#6095]) +9 other tests skip
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][317] ([i915#12805]) -> [SKIP][318] ([i915#12805] / [i915#14544])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][319] ([i915#12313] / [i915#14544]) -> [SKIP][320] ([i915#12313]) +1 other test skip
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs:
    - shard-rkl:          [SKIP][321] ([i915#14098] / [i915#6095]) -> [SKIP][322] ([i915#14098] / [i915#14544] / [i915#6095]) +11 other tests skip
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:
    - shard-rkl:          [SKIP][323] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][324] ([i915#14098] / [i915#6095]) +2 other tests skip
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_cdclk@mode-transition:
    - shard-rkl:          [SKIP][325] ([i915#3742]) -> [SKIP][326] ([i915#14544] / [i915#3742])
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@kms_cdclk@mode-transition.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:
    - shard-rkl:          [SKIP][327] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][328] ([i915#11151] / [i915#7828]) +2 other tests skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          [SKIP][329] ([i915#11151] / [i915#7828]) -> [SKIP][330] ([i915#11151] / [i915#14544] / [i915#7828]) +3 other tests skip
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-fast.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_content_protection@atomic-dpms-hdcp14:
    - shard-rkl:          [SKIP][331] ([i915#6944]) -> [SKIP][332] ([i915#14544] / [i915#6944])
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-2/igt@kms_content_protection@atomic-dpms-hdcp14.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_content_protection@atomic-dpms-hdcp14.html

  * igt@kms_content_protection@content-type-change:
    - shard-rkl:          [SKIP][333] ([i915#14544] / [i915#6944] / [i915#9424]) -> [SKIP][334] ([i915#6944] / [i915#9424])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_content_protection@content-type-change.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-type-0-hdcp14:
    - shard-rkl:          [SKIP][335] ([i915#15330]) -> [SKIP][336] ([i915#14544] / [i915#15330])
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@kms_content_protection@dp-mst-type-0-hdcp14.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0-hdcp14.html

  * igt@kms_content_protection@dp-mst-type-0-suspend-resume:
    - shard-rkl:          [SKIP][337] ([i915#14544] / [i915#15330]) -> [SKIP][338] ([i915#15330])
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html

  * igt@kms_content_protection@legacy-hdcp14:
    - shard-dg2:          [SKIP][339] ([i915#6944]) -> [FAIL][340] ([i915#7173]) +1 other test fail
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-6/igt@kms_content_protection@legacy-hdcp14.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg2-11/igt@kms_content_protection@legacy-hdcp14.html

  * igt@kms_content_protection@mei-interface:
    - shard-rkl:          [SKIP][341] ([i915#6944] / [i915#9424]) -> [SKIP][342] ([i915#14544] / [i915#6944] / [i915#9424])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@kms_content_protection@mei-interface.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_content_protection@mei-interface.html
    - shard-dg1:          [SKIP][343] ([i915#6944] / [i915#9424]) -> [SKIP][344] ([i915#9433])
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg1-16/igt@kms_content_protection@mei-interface.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg1-12/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][345] ([i915#6944] / [i915#7118] / [i915#7162] / [i915#9424]) -> [SKIP][346] ([i915#6944] / [i915#7118] / [i915#9424])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_content_protection@type1.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg2-5/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-rkl:          [SKIP][347] ([i915#13049]) -> [SKIP][348] ([i915#13049] / [i915#14544])
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@kms_cursor_crc@cursor-random-512x170.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-rkl:          [SKIP][349] ([i915#3555]) -> [SKIP][350] ([i915#14544] / [i915#3555]) +2 other tests skip
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-32x10.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_dp_link_training@non-uhbr-mst:
    - shard-rkl:          [SKIP][351] ([i915#13749]) -> [SKIP][352] ([i915#13749] / [i915#14544])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@kms_dp_link_training@non-uhbr-mst.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_dp_link_training@non-uhbr-mst.html

  * igt@kms_dp_linktrain_fallback@dsc-fallback:
    - shard-rkl:          [SKIP][353] ([i915#13707] / [i915#14544]) -> [SKIP][354] ([i915#13707])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_dp_linktrain_fallback@dsc-fallback.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_dp_linktrain_fallback@dsc-fallback.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-rkl:          [SKIP][355] ([i915#3840] / [i915#9053]) -> [SKIP][356] ([i915#14544] / [i915#3840] / [i915#9053])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][357] ([i915#3955]) -> [SKIP][358] ([i915#14544] / [i915#3955])
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@kms_fbcon_fbt@psr.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_fbcon_fbt@psr.html

  * igt@kms_feature_discovery@psr1:
    - shard-rkl:          [SKIP][359] ([i915#658]) -> [SKIP][360] ([i915#14544] / [i915#658])
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-2/igt@kms_feature_discovery@psr1.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_feature_discovery@psr1.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
    - shard-rkl:          [SKIP][361] ([i915#14544] / [i915#9934]) -> [SKIP][362] ([i915#9934]) +6 other tests skip
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html

  * igt@kms_flip@2x-plain-flip:
    - shard-rkl:          [SKIP][363] ([i915#9934]) -> [SKIP][364] ([i915#14544] / [i915#9934]) +2 other tests skip
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@kms_flip@2x-plain-flip.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
    - shard-rkl:          [SKIP][365] ([i915#15643]) -> [SKIP][366] ([i915#14544] / [i915#15643]) +2 other tests skip
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-mtlp:         [SKIP][367] ([i915#15672]) -> [SKIP][368]
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-1/igt@kms_force_connector_basic@force-load-detect.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-6/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-pwrite:
    - shard-rkl:          [SKIP][369] ([i915#15102]) -> [SKIP][370] ([i915#14544] / [i915#15102]) +2 other tests skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-pwrite.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][371] ([i915#15102] / [i915#3458]) -> [SKIP][372] ([i915#10433] / [i915#15102] / [i915#3458])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg1:          [SKIP][373] ([i915#4423] / [i915#8708]) -> [SKIP][374] ([i915#8708])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:
    - shard-dg1:          [SKIP][375] ([i915#15102] / [i915#3458] / [i915#4423]) -> [SKIP][376] ([i915#15102] / [i915#3458])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
    - shard-rkl:          [SKIP][377] ([i915#1825]) -> [SKIP][378] ([i915#14544] / [i915#1825]) +27 other tests skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt:
    - shard-dg1:          [SKIP][379] ([i915#4423]) -> [SKIP][380]
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-render:
    - shard-rkl:          [SKIP][381] ([i915#14544] / [i915#15102]) -> [SKIP][382] ([i915#15102]) +1 other test skip
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-render.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:
    - shard-dg2:          [SKIP][383] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][384] ([i915#15102] / [i915#3458]) +2 other tests skip
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-rkl:          [SKIP][385] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][386] ([i915#15102] / [i915#3023]) +6 other tests skip
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-rkl:          [SKIP][387] ([i915#15102] / [i915#3023]) -> [SKIP][388] ([i915#14544] / [i915#15102] / [i915#3023]) +11 other tests skip
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][389] ([i915#14544] / [i915#1825]) -> [SKIP][390] ([i915#1825]) +16 other tests skip
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-mtlp:         [SKIP][391] ([i915#12713]) -> [SKIP][392] ([i915#1187] / [i915#12713])
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-4/igt@kms_hdr@brightness-with-hdr.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-1/igt@kms_hdr@brightness-with-hdr.html
    - shard-dg2:          [SKIP][393] ([i915#12713]) -> [SKIP][394] ([i915#13331])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-7/igt@kms_hdr@brightness-with-hdr.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg2-11/igt@kms_hdr@brightness-with-hdr.html
    - shard-rkl:          [SKIP][395] ([i915#13331]) -> [SKIP][396] ([i915#12713])
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-1/igt@kms_hdr@brightness-with-hdr.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-7/igt@kms_hdr@brightness-with-hdr.html
    - shard-dg1:          [SKIP][397] ([i915#12713]) -> [SKIP][398] ([i915#1187] / [i915#12713])
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg1-17/igt@kms_hdr@brightness-with-hdr.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-rkl:          [SKIP][399] ([i915#14544] / [i915#15458]) -> [SKIP][400] ([i915#15458]) +1 other test skip
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_panel_fitting@legacy:
    - shard-rkl:          [SKIP][401] ([i915#6301]) -> [SKIP][402] ([i915#14544] / [i915#6301])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@kms_panel_fitting@legacy.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source-clamping:
    - shard-rkl:          [SKIP][403] ([i915#14544] / [i915#15709]) -> [SKIP][404] ([i915#15709]) +1 other test skip
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source-clamping.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-yf-tiled-ccs-modifier:
    - shard-rkl:          [SKIP][405] ([i915#15709]) -> [SKIP][406] ([i915#14544] / [i915#15709]) +1 other test skip
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-2/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-rkl:          [SKIP][407] ([i915#14544] / [i915#5354]) -> [SKIP][408] ([i915#5354]) +1 other test skip
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_pm_backlight@basic-brightness.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-rkl:          [SKIP][409] ([i915#5354]) -> [SKIP][410] ([i915#14544] / [i915#5354]) +1 other test skip
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@kms_pm_backlight@fade-with-dpms.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-rkl:          [SKIP][411] ([i915#9685]) -> [SKIP][412] ([i915#14544] / [i915#9685])
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-2/igt@kms_pm_dc@dc6-psr.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_rpm@fences:
    - shard-dg1:          [SKIP][413] ([i915#4077] / [i915#4423]) -> [SKIP][414] ([i915#4077])
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg1-12/igt@kms_pm_rpm@fences.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg1-16/igt@kms_pm_rpm@fences.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-rkl:          [SKIP][415] ([i915#6524]) -> [SKIP][416] ([i915#14544] / [i915#6524])
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-2/igt@kms_prime@basic-modeset-hybrid.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
    - shard-rkl:          [SKIP][417] ([i915#11520] / [i915#14544]) -> [SKIP][418] ([i915#11520]) +1 other test skip
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-rkl:          [SKIP][419] ([i915#11520]) -> [SKIP][420] ([i915#11520] / [i915#14544]) +1 other test skip
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-2/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr@fbc-psr-cursor-mmap-gtt:
    - shard-dg1:          [SKIP][421] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][422] ([i915#1072] / [i915#9732])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg1-12/igt@kms_psr@fbc-psr-cursor-mmap-gtt.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg1-16/igt@kms_psr@fbc-psr-cursor-mmap-gtt.html

  * igt@kms_psr@psr-cursor-plane-move:
    - shard-rkl:          [SKIP][423] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][424] ([i915#1072] / [i915#9732]) +6 other tests skip
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_psr@psr-cursor-plane-move.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_psr@psr-cursor-plane-move.html

  * igt@kms_psr@psr-sprite-plane-move:
    - shard-rkl:          [SKIP][425] ([i915#1072] / [i915#9732]) -> [SKIP][426] ([i915#1072] / [i915#14544] / [i915#9732]) +15 other tests skip
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-2/igt@kms_psr@psr-sprite-plane-move.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_psr@psr-sprite-plane-move.html

  * igt@kms_vrr@flipline:
    - shard-rkl:          [SKIP][427] ([i915#15243] / [i915#3555]) -> [SKIP][428] ([i915#14544] / [i915#15243] / [i915#3555])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@kms_vrr@flipline.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_vrr@flipline.html

  * igt@kms_vrr@lobf:
    - shard-rkl:          [SKIP][429] ([i915#11920]) -> [SKIP][430] ([i915#11920] / [i915#14544])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@kms_vrr@lobf.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_vrr@lobf.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-rkl:          [SKIP][431] ([i915#14544] / [i915#9906]) -> [SKIP][432] ([i915#9906])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-drrs.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-rkl:          [SKIP][433] ([i915#14544] / [i915#2433]) -> [SKIP][434] ([i915#2433])
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@perf@unprivileged-single-ctx-counters.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@perf@unprivileged-single-ctx-counters.html

  * igt@prime_vgem@basic-read:
    - shard-rkl:          [SKIP][435] ([i915#14544] / [i915#3291] / [i915#3708]) -> [SKIP][436] ([i915#3291] / [i915#3708])
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@prime_vgem@basic-read.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - shard-rkl:          [SKIP][437] ([i915#3291] / [i915#3708]) -> [SKIP][438] ([i915#14544] / [i915#3291] / [i915#3708])
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@prime_vgem@basic-write.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@prime_vgem@basic-write.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-rkl:          [SKIP][439] ([i915#9917]) -> [SKIP][440] ([i915#14544] / [i915#9917])
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-2/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
  [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
  [i915#12169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12169
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
  [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
  [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
  [i915#12756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#13026]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13196
  [i915#13331]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688
  [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
  [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
  [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
  [i915#13809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13809
  [i915#13821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
  [i915#14412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14412
  [i915#14498]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14600]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600
  [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
  [i915#14785]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14785
  [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
  [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
  [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
  [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
  [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
  [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
  [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
  [i915#15342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342
  [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
  [i915#15459]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459
  [i915#15460]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460
  [i915#15479]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15479
  [i915#15582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582
  [i915#15608]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15608
  [i915#15638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15638
  [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
  [i915#15672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15672
  [i915#15678]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15678
  [i915#15709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
  [i915#15722]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15722
  [i915#15733]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733
  [i915#15752]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15752
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#2065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065
  [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
  [i915#2435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435
  [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4767]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4767
  [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
  [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
  [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7162]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7975]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_18022 -> Patchwork_161818v2

  CI-20190529: 20190529
  CI_DRM_18022: 45a3045fc0dc46a893cb8bbe304afafd4120c904 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8765: 8765
  Patchwork_161818v2: 45a3045fc0dc46a893cb8bbe304afafd4120c904 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/index.html

--===============8861767652629692714==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: On DPCD init/caps wake the DPRx=
 (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/161818/">https://patchwork.freedesktop.org/series/161818/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_161818v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_161818v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18022_full -&gt; Patchwork_161818v=
2_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_18022_full and Patchwork_1=
61818v2_full:</p>
<h3>New IGT tests (18)</h3>
<ul>
<li>
<p>igt@kms_async_flips@test-time-stamp-atomic@pipe-a-vga-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.16] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp-atomic@pipe-b-vga-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.17] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@crtc-invalid-params@pipe-a-vga-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.20] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@legacy-setmode@pipe-a-vga-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.25] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_interruptible@universal-setplane-primary@pipe-a-vga-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [6.31] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-primary-toggle-with-vblank-wait@pipe-a-v=
ga-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.31] s</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-primary-toggle-with-vblank-wait@pipe-b-v=
ga-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.32] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@64x64-top-bottom@pipe-a-vga-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.44] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh@pipe-a-vga-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.11] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@overflow-vrefresh@pipe-b-vga-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-hdisplay@pipe-a-vga-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.12] s</li>
</ul>
</li>
<li>
<p>igt@kms_invalid_mode@zero-hdisplay@pipe-b-vga-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@atomic-implicit-crtc@pipe-a-vga-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@atomic-implicit-crtc@pipe-b-vga-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.02] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@empty-lease@pipe-a-vga-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_lease@empty-lease@pipe-b-vga-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@wait-busy@pipe-a-vga-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.50] s</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@wait-busy@pipe-b-vga-1:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.35] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_161818v2_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@device_reset@cold-reset-b=
ound.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_buddy@drm_buddy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@drm_buddy@drm_buddy.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/15678">i915#15678</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@gem_ccs@block-copy-compre=
ssed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@gem_ccs@block-multicopy-co=
mpressed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-dg2-4/igt@gem_ccs@suspend-resume@lin=
ear-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i9=
15#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-snb6/igt@gem_close_race@multigpu-bas=
ic-process.html">SKIP</a> +68 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@gem_create@create-ext-cpu-=
access-big.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-glk5/igt@gem_ctx_isolation@preservat=
ion-s3@rcs0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/13356">i915#13356</a>) +1 other test incomplete</=
li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-snb6/igt@gem_ctx_persistence@hang.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@gem_ctx_sseu@invalid-sseu.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-7/igt@gem_exec_balancer@parallel=
-keep-submit-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/4525">i915#4525</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@gem_exec_capture@capture-i=
nvisible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/6334">i915#6334</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@gem_exec_reloc@basic-gtt-w=
c-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3281">i915#3281</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-glk10/igt@gem_exec_suspend@basic-s3.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13196">i915#13196</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) +1 other test incomple=
te</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-8/igt@gem_exec_suspend@basic-s4-devices.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161=
818v2/shard-rkl-1/igt@gem_exec_suspend@basic-s4-devices.html">ABORT</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7975">i915=
#7975</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-mtlp-3/igt@gem_lmem_swapping@heavy-r=
andom.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@gem_lmem_swapping@paralle=
l-random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@gem_lmem_swapping@paralle=
l-random-verify.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-glk1/igt@gem_lmem_swapping@verify-cc=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/4613">i915#4613</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@gem_pwrite@basic-exhaustio=
n.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3282">i915#3282</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-5/igt@gem_softpin@noreloc-s3.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard=
-rkl-3/igt@gem_softpin@noreloc-s3.html">INCOMPLETE</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/13809">i915#13809</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@gem_userptr_blits@dmabuf-=
sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@gem_userptr_blits@invalid=
-mmap-offset-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@gem_userptr_blits@unsync-u=
nmap-after-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@gen9_exec_parse@batch-inv=
alid-length.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@gen9_exec_parse@bb-chaine=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@gen9_exec_parse@bb-oversiz=
e.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/2527">i915#2527</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@fault-injection@intel_connector_register:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@i915_module_load@fault-in=
jection@intel_connector_register.html">ABORT</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/15342">i915#15342</a>) +1 other t=
est abort</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@fault-injection@intel_gt_init-enodev:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@i915_module_load@fault-in=
jection@intel_gt_init-enodev.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/15479">i915#15479</a>) +4 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-mtlp:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_18022/shard-mtlp-2/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-8/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_18022/shard-mtlp-3/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/=
shard-mtlp-4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-7/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_18022/shard-mtlp-2/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-5/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_18022/shard-mtlp-7/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/=
shard-mtlp-1/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-3/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_18022/shard-mtlp-6/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-6/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_18022/shard-mtlp-1/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/=
shard-mtlp-5/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-4/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_18022/shard-mtlp-2/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-8/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_18022/shard-mtlp-7/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/=
shard-mtlp-6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-7/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_18022/shard-mtlp-8/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-1/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_18022/shard-mtlp-3/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/=
shard-mtlp-5/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-4/igt@i915_module_l=
oad@load.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_161818v2/shard-mtlp-5/igt@i915_module_load@load.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16181=
8v2/shard-mtlp-2/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-2/igt@i91=
5_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_161818v2/shard-mtlp-5/igt@i915_module_load@load.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16=
1818v2/shard-mtlp-6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-3/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_161818v2/shard-mtlp-1/igt@i915_module_load@load.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_161818v2/shard-mtlp-7/igt@i915_module_load@load.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-8/i=
gt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-8/igt@i915_module_load@load=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_161818v2/shard-mtlp-5/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-=
8/igt@i915_module_load@load.html">SKIP</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-5/igt@i915_module_load@l=
oad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_161818v2/shard-mtlp-2/igt@i915_module_load@load.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mt=
lp-1/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-6/igt@i915_module_loa=
d@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_161818v2/shard-mtlp-3/igt@i915_module_load@load.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard=
-mtlp-1/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-4/igt@i915_module_=
load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_161818v2/shard-mtlp-6/igt@i915_module_load@load.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/sh=
ard-mtlp-3/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-6/igt@i915_modu=
le_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_161818v2/shard-mtlp-1/igt@i915_module_load@load.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2=
/shard-mtlp-2/igt@i915_module_load@load.html">PASS</a>) (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14785">i915#14785</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@i915_module_load@resize-ba=
r.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/6412">i915#6412</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-10/igt@i915_pm_rc6_residency@rc=
6-idle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14498">i915#14498</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-4/igt@i915_pm_rpm@system-suspend-execbuf.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16=
1818v2/shard-rkl-4/igt@i915_pm_rpm@system-suspend-execbuf.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/133=
56">i915#13356</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-loaded:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-mtlp-3/igt@i915_pm_rps@min-max-confi=
g-loaded.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/11681">i915#11681</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@i915_query@hwconfig_table=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/6245">i915#6245</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@intel_hwmon@hwmon-write.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@kms_big_fb@4-tiled-addfb.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/5286">i915#5286</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-10/igt@kms_big_fb@4-tiled-max-h=
w-stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other =
test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_161818v2/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bp=
p-rotate-0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/15733">i915#15733</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw=
-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +4 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_big_fb@linear-max-hw-=
stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-ro=
tate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3638">i915#3638</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_ccs@ccs-on-another-bo=
-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +54 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-dg2-11/igt@kms_ccs@crc-primary-basic=
-yf-tiled-ccs@pipe-a-dp-3.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +134=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-dg1-14/igt@kms_ccs@crc-primary-basic=
-yf-tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +215 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-3:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-dg2-3/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +55 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-dg2-mc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i91=
5#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-dg2-4/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i9=
15#10434</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:</=
p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-10/igt@kms_ccs@crc-primary-susp=
end-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +34 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +57 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-glk6/igt@kms_ccs@crc-primary-suspend=
-yf-tiled-ccs@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/15582">i915#15582</a>) +1 other=
 test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_ccs@crc-sprite-planes=
-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915=
#6095</a>) +38 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_chamelium_edid@hdmi-e=
did-change-during-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-frame-dump:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-mtlp-3/igt@kms_chamelium_frames@hdmi=
-frame-dump.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_chamelium_hpd@hdmi-hpd=
-fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-10/igt@kms_chamelium_hpd@vga-hp=
d-with-enabled-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +5 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_content_protection@ato=
mic-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@kms_content_protection@dp-=
mst-lic-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/15330">i915#15330</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-10/igt@kms_content_protection@d=
p-mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/15330">i915#15330</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1-suspend-resume:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_content_protection@dp-=
mst-type-1-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-7/igt@kms_content_protection@lic=
-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@suspend-resume:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@kms_content_protection@su=
spend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@suspend-resume@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-dg2-11/igt@kms_content_protection@su=
spend-resume@pipe-a-dp-3.html">FAIL</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/7173">i915#7173</a>) +1 other test fail</l=
i>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent-hdcp14:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_content_protection@ue=
vent-hdcp14.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/6944">i915#6944</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_cursor_crc@cursor-offs=
creen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_cursor_crc@cursor-ons=
creen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x32:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_cursor_crc@cursor-ran=
dom-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_cursor_crc@cursor-rapi=
d-movement-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-3/igt@kms_cursor_crc@cursor-slid=
ing-128x42@pipe-a-hdmi-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@kms_cursor_crc@cursor-sli=
ding-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-varying-size.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +3 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-sst:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_dp_link_training@non-uhbr-sst.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16=
1818v2/shard-dg2-7/igt@kms_dp_link_training@non-uhbr-sst.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749">i91=
5#13749</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@kms_dp_link_training@non-u=
hbr-sst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/13749">i915#13749</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_dp_linktrain_fallback@=
dp-fallback.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/13707">i915#13707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_dsc@dsc-basic.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3840">i915#3840</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_dsc@dsc-fractional-bpp=
-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-10/igt@kms_dsc@dsc-with-bpc-for=
mats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-4/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/sh=
ard-dg2-8/igt@kms_fbcon_fbt@fbc-suspend.html">FAIL</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/4767">i915#4767</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_fbcon_fbt@psr-suspend.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_feature_discovery@cha=
melium.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/2065">i915#2065</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-10/igt@kms_flip@2x-flip-vs-dpms=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9934">i915#9934</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_flip@2x-flip-vs-suspe=
nd-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@kms_flip@2x-plain-flip-int=
erruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/9934">i915#9934</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-5/igt@kms_flip@flip-vs-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/sha=
rd-rkl-3/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-3/igt@kms_flip@flip-vs-suspend@a=
-hdmi-a2.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-10/igt@kms_flip_scaled_crc@flip=
-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</=
a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_flip_scaled_crc@flip-6=
4bpp-4tile-to-16bpp-4tile-downscaling.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +2 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)=
 +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-mtlp-3/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> +36 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-dg2-5/igt@kms_frontbuffer_tracking@f=
bc-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-glk10/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> +67 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbcpsr-rgb101010-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +13 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbcpsr-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_frontbuffer_tracking@p=
sr-1p-offscreen-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +3 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#302=
3</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-shrfb-pgflip-blt.html">SKIP</a> +32 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +23 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-10/igt@kms_frontbuffer_tracking=
@psr-rgb565-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-10/igt@kms_hdr@brightness-with-=
hdr.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_hdr@static-swap.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-d=
g2-7/igt@kms_hdr@static-swap.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_hdr@static-toggle-dpm=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_hdr@static-toggle-susp=
end.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_joiner@basic-big-join=
er.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/15460">i915#15460</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_joiner@basic-force-big-joiner.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16=
1818v2/shard-dg2-5/igt@kms_joiner@basic-force-big-joiner.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459">i91=
5#15459</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-max-non-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_joiner@basic-max-non-j=
oiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13688">i915#13688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_joiner@invalid-modeset=
-force-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/15459">i915#15459</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@kms_joiner@invalid-modese=
t-ultra-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/15458">i915#15458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_joiner@switch-modeset=
-ultra-joiner-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/15638">i915#15638</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15722">i915#15722</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_stress@stress-xrgb8888-yftiled:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_pipe_stress@stress-xr=
gb8888-yftiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14712">i915#14712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_plane@pixel-format-4-=
tiled-lnl-ccs-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +2 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-modifier:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@kms_plane@pixel-format-4-=
tiled-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-modifier@pipe-a-plane-7:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_plane@pixel-format-y-=
tiled-modifier@pipe-a-plane-7.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/15608">i915#15608</a>) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-yf-tiled-modifier:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-7/igt@kms_plane@pixel-format-yf-=
tiled-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/15709">i915#15709</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-glk2/igt@kms_plane@plane-panning-bot=
tom-right-suspend.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/13026">i915#13026</a>) +1 other test incomp=
lete</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-glk1/igt@kms_plane_alpha_blend@const=
ant-alpha-max.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/10647">i915#10647</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/12169">i915#12169</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-glk1/igt@kms_plane_alpha_blend@const=
ant-alpha-max@pipe-c-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/10647">i915#10647</a>) +1 other test =
fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-none:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_plane_multiple@2x-tili=
ng-none.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-yf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_plane_multiple@2x-til=
ing-yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-4:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@kms_plane_multiple@tiling=
-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-rotation.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#35=
55</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
b:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-rotation@pipe-b.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>)=
 +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-7/igt@kms_plane_scaling@plane-up=
scale-20x20-with-rotation@pipe-a.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +7 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@kms_pm_dc@dc5-retention-f=
lops.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_pm_dc@dc6-dpms.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/15752">i915#15752</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_pm_lpsp@kms-lpsp.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3828">i915#3828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@kms_pm_lpsp@screens-disabl=
ed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16181=
8v2/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#150=
73</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg1-12/igt@kms_pm_rpm@i2c.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg1-1=
6/igt@kms_pm_rpm@i2c.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) +1 other test dmesg=
-warn</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lps=
p-stress-no-wait.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg1-17/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_161818v2/shard-dg1-15/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@kms_prime@d3hot.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6=
524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-10/igt@kms_psr2_sf@fbc-pr-overl=
ay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other =
tests skip</li>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-glk10/igt@kms_psr2_sf@fbc-pr-overlay=
-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other te=
st skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_psr2_sf@fbc-psr2-overl=
ay-plane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +9 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-snb6/igt@kms_psr2_sf@pr-overlay-prim=
ary-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-=
plane-move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +6 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-glk1/igt@kms_psr2_sf@psr2-overlay-pr=
imary-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +9 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-10/igt@kms_psr2_su@frontbuffer-=
xrgb8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_psr2_su@page_flip-nv12=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-no-drrs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-mtlp-3/igt@kms_psr@fbc-pr-no-drrs.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/9688">i915#9688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-cursor-plane-move:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@kms_psr@fbc-psr2-cursor-p=
lane-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_psr@fbc-psr2-sprite-m=
map-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/9732">i915#9732</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-sprite-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_psr@pr-sprite-mmap-gtt=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9732">i915#9732</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-plane-onoff:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-glk1/igt@kms_psr@psr2-sprite-plane-o=
noff.html">SKIP</a> +268 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_psr_stress_test@flip-p=
rimary-invalidate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>) +1 other test skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-center:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@kms_scaling_modes@scaling=
-mode-center.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3555">i915#3555</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_tiled_display@basic-t=
est-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@kms_vrr@flip-basic-fastset=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-1/igt@kms_vrr@max-min.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
906">i915#9906</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-tglu-4/igt@kms_vrr@seamless-rr-switc=
h-virtual.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@perf@gen8-unprivileged-sin=
gle-ctx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@perf@per-context-mode-unpr=
ivileged.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/2435">i915#2435</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@perf_pmu@rc6@other-idle-gt=
0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@prime_vgem@coherency-gtt.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@sriov_basic@enable-vfs-bin=
d-unbind-each.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-comp=
fmt0-smem-lmem0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg2-4/igt@gem_=
ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-3/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
13356">i915#13356</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_161818v2/shard-rkl-5/igt@gem_exec_suspend@basic-s0@smem.htm=
l">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-1/igt@gem_pxp@verify-pxp-key-change-after-suspend-r=
esume.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/15131">i915#15131</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-7/igt@gem_pxp@verify-pxp-=
key-change-after-suspend-resume.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-snb6/igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821">i915#13=
821</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_161818v2/shard-snb6/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-invalid-params:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg1-16/igt@kms_atomic@plane-invalid-params.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/4423">i915#4423</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_161818v2/shard-dg1-13/igt@kms_atomic@plane-invalid-params.h=
tml">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-180-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/15733">i915#15733</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-mtlp-6/igt=
@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-2/igt@kms_color@deep-color.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#126=
55</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_color@deep-color.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-tglu-10/igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-=
a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/13566">i915#13566</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-tglu-5/igt@kms_cursor_crc=
@cursor-onscreen-128x42@pipe-a-hdmi-a-1.html">PASS</a> +1 other test pass</=
li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-snb6/igt@kms_flip@flip-vs-absolute-wf_vblank-interrupti=
ble@a-vga1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14600">i915#14600</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-snb5/igt@kms_flip@flip-vs=
-absolute-wf_vblank-interruptible@a-vga1.html">PASS</a> +1 other test pass<=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_flip@flip-vs-suspend-interruptible.html">=
INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/6113">i915#6113</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_flip@flip-vs-suspend-int=
erruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-i=
ndfb-onoff.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_161818v2/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-=
scndscrn-spr-indfb-onoff.html">PASS</a> +27 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-6/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8=
228">i915#8228</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_161818v2/shard-dg2-11/igt@kms_hdr@static-toggle.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_pipe_crc_basic@suspend-read-crc.html">INC=
OMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/12756">i915#12756</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13476">i915#13476</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_pipe_crc_=
basic@suspend-read-crc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_plane@plane-panning-bottom-right-suspend@=
pipe-a.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14412">i915#14412</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_plane@pla=
ne-panning-bottom-right-suspend@pipe-a.html">PASS</a> +1 other test pass</l=
i>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#1=
4544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/15073">i915#15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073"=
>i915#15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_161818v2/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15=
073">i915#15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_161818v2/shard-dg2-8/igt@kms_pm_rpm@modeset-non-lpsp-stress.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-1/igt@kms_pm_rpm@system-suspend-modeset.html">ABORT=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15=
132">i915#15132</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_161818v2/shard-rkl-7/igt@kms_pm_rpm@system-suspend-modeset.ht=
ml">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-2/igt@api_intel_bb@object-reloc-keep-cache.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
8411">i915#8411</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_161818v2/shard-rkl-6/igt@api_intel_bb@object-reloc-keep-cache=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@api_intel_bb@object-reloc-purge-cache.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/8411">i915#8411</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@api_intel_bb@object=
-reloc-purge-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9323">i915#9323</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@gem_ccs@blo=
ck-multicopy-inplace.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@gem_ccs@suspend-resume.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14=
544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/9323">i915#9323</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_161818v2/shard-rkl-8/igt@gem_ccs@suspend-resume.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/932=
3">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161=
818v2/shard-rkl-6/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i91=
5#280</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915=
#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_161818v2/shard-rkl-6/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915=
#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/4525">i915#4525</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@gem_exec_balancer@parallel-contexts.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@gem_exec_balancer@par=
allel-contexts.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-noreloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3281">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@gem_exec_reloc@basic=
-gtt-cpu-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-noreloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-read-noreloc.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3281">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_161818v2/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-read-norel=
oc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@gem_lmem_swapping@heavy-verify-random.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/4613">i915#4613</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_161818v2/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-rand=
om.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-random-ccs.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@gem_lmem_swappi=
ng@heavy-verify-random-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-u=
ncached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3282">i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@gem_partial_pwrite_p=
read@writes-after-reads-uncached.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a=
>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@display:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@gem_pread@display.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/328=
2">i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_161818v2/shard-rkl-5/igt@gem_pread@display.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#32=
82</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-buffer.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717">=
i915#13717</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-bu=
ffer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13717">i915#13717</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@access-control:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-2/igt@gem_userptr_blits@access-control.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297=
">i915#3297</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_161818v2/shard-rkl-6/igt@gem_userptr_blits@access-control.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@gem_userptr_blits@relocations.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i=
915#3281</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3297">i915#3297</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@gem_userptr_blits@relocations=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3281">i915#3281</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-2/igt@gen7_exec_parse@chained-batch.html">SKIP</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v=
2/shard-rkl-6/igt@gen7_exec_parse@chained-batch.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</=
a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@gen9_exec_parse@bb-start-out.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i9=
15#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_161818v2/shard-rkl-6/igt@gen9_exec_parse@bb-start-out.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@gen9_exec_parse@secure-batches.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/2527">i915#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@gen9_exec_parse@secure-bat=
ches.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-2/igt@i915_pm_freq_api@freq-suspend.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i=
915#8399</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_161818v2/shard-rkl-6/igt@i915_pm_freq_api@freq-suspend.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/8399">i915#8399</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#770=
7</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
161818v2/shard-rkl-6/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/770=
7">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@kms_big_fb@4-tiled-16bpp-rotate-180.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5=
286">i915#5286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_161818v2/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-180.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/5286">i915#5286</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate=
-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_big_f=
b@4-tiled-max-hw-stride-32bpp-rotate-0.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-=
180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3828">i915#3828</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_big_fb@linear-=
max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#382=
8</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3638">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_big_fb@y-tiled-8bp=
p-rotate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotat=
e-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_big_fb@yf-tiled-=
max-hw-stride-32bpp-rotate-180.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/12313">i915#12313</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-t=
iled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/12313">i915#12313</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:=
</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-=
rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_c=
cs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/6095">i915#6095</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/12805">i915#12805</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_ccs@crc-primary-suspend=
-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/12805">i915#12805</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-c=
cs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/12313">i915#12313</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@kms_ccs=
@crc-sprite-planes-basic-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +1 =
other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-m=
c-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_cc=
s@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/6095">i915#6095</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-r=
c-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/sha=
rd-rkl-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/6095">i915#6095</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@kms_cdclk@mode-transition.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#=
3742</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_161818v2/shard-rkl-6/igt@kms_cdclk@mode-transition.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#1=
4544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_chamelium_edid@dp-edid-stress-resolution-=
non-4k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard=
-rkl-8/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1115=
1">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151"=
>i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-=
fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms-hdcp14:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-2/igt@kms_content_protection@atomic-dpms-hdcp14.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/6944">i915#6944</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_content_protection@atomic-d=
pms-hdcp14.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_content_protection@content-type-change.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@=
kms_content_protection@content-type-change.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915=
#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0-hdcp14:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@kms_content_protection@dp-mst-type-0-hdcp14.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/15330">i915#15330</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_content_protection@dp-m=
st-type-0-hdcp14.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0-suspend-=
resume.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/15330">i915#15330</a>) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms=
_content_protection@dp-mst-type-0-suspend-resume.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy-hdcp14:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-6/igt@kms_content_protection@legacy-hdcp14.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
6944">i915#6944</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_161818v2/shard-dg2-11/igt@kms_content_protection@legacy-hdcp1=
4.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/7173">i915#7173</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@kms_content_protection@mei-interface.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9424">i915#9424</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_content_protection=
@mei-interface.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</=
li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg1-16/igt@kms_content_protection@mei-interface.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9424">i915#9424</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_161818v2/shard-dg1-12/igt@kms_content_protecti=
on@mei-interface.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9433">i915#9433</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_content_protection@type1.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i=
915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/7162">i915#7162</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg2-5/igt@k=
ms_content_protection@type1.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#=
9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@kms_cursor_crc@cursor-random-512x170.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
13049">i915#13049</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x1=
70.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/13049">i915#13049</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@kms_cursor_crc@cursor-sliding-32x10.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3=
555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_161818v2/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-32x10.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-mst:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@kms_dp_link_training@non-uhbr-mst.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/137=
49">i915#13749</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_161818v2/shard-rkl-6/igt@kms_dp_link_training@non-uhbr-mst.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/13749">i915#13749</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dsc-fallback:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_dp_linktrain_fallback@dsc-fallback.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/13707">i915#13707</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_dp_linktrain=
_fallback@dsc-fallback.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/13707">i915#13707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@kms_dsc@dsc-with-output-formats-with-bpc.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3840">i915#3840</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9053">i915#9053</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_dsc@dsc-with-o=
utput-formats-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053">i915#905=
3</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#3955</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16181=
8v2/shard-rkl-6/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#39=
55</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-2/igt@kms_feature_discovery@psr1.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#=
658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_161818v2/shard-rkl-6/igt@kms_feature_discovery@psr1.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#1=
4544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9934">i915#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_flip@2x-flip-vs-m=
odeset-vs-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9934">i915#9934</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@kms_flip@2x-plain-flip.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#993=
4</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
161818v2/shard-rkl-6/igt@kms_flip@2x-plain-flip.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/993=
4">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:</=
p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bp=
p-yftile-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_f=
lip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15643">i915#15643</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-mtlp-1/igt@kms_force_connector_basic@force-load-detect.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/15672">i915#15672</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-mtlp-6/igt@kms_force_connector_basic=
@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-pwrite:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-=
pri-shrfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_=
frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-pwrite.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15102">i915#15102</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-p=
ri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard=
-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-=
cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/10433">i915#10433</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-=
pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-d=
g1-12/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-w=
c.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-=
spr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1618=
18v2/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb=
-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-c=
ur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_f=
rontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-cpu.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/1825">i915#1825</a>) +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-=
pri-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg1-13/igt@kms_fron=
tbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri=
-indfb-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-r=
kl-8/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-render.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/15102">i915#15102</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-=
shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/10433">i915#10433</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818=
v2/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-=
blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3458">i915#3458</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-=
indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818=
v2/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-=
blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3023">i915#3023</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-=
indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-=
6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +11 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-=
shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rk=
l-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/1825">i915#1825</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-mtlp-4/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i=
915#12713</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_161818v2/shard-mtlp-1/igt@kms_hdr@brightness-with-hdr.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187"=
>i915#1187</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/12713">i915#12713</a>)</li>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-7/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i9=
15#12713</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_161818v2/shard-dg2-11/igt@kms_hdr@brightness-with-hdr.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331"=
>i915#13331</a>)</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-1/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13331">i9=
15#13331</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_161818v2/shard-rkl-7/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">=
i915#12713</a>)</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg1-17/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i=
915#12713</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_161818v2/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187"=
>i915#1187</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-ultra-joiner=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/15458">i915#15458</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-4/igt@kms_joine=
r@invalid-modeset-force-ultra-joiner.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/15458">i915#15458</a>) +1 othe=
r test skip</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6=
301</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_161818v2/shard-rkl-6/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source-clampin=
g:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-=
modifier-source-clamping.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/s=
hard-rkl-8/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source=
-clamping.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15709">i915#15709</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-yf-tiled-ccs-modifier:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-2/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/15709">i915#15709</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_plane@pixel-format-yf-=
tiled-ccs-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +1 other =
test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_pm_backlight@basic-brightness.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/5354">i915#5354</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_pm_backlight@basic-=
brightness.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@kms_pm_backlight@fade-with-dpms.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354"=
>i915#5354</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_161818v2/shard-rkl-6/igt@kms_pm_backlight@fade-with-dpms.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-2/igt@kms_pm_dc@dc6-psr.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16181=
8v2/shard-rkl-6/igt@kms_pm_dc@dc6-psr.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#96=
85</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@fences:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg1-12/igt@kms_pm_rpm@fences.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423=
">i915#4423</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_161818v2/shard-dg1-16/igt@kms_pm_rpm@fences.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#40=
77</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-2/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">=
i915#6524</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_161818v2/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-conti=
nuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/11520">i915#11520</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@k=
ms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11=
520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-2/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-e=
xceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_psr2_sf=
@pr-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-mmap-gtt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg1-12/igt@kms_psr@fbc-psr-cursor-mmap-gtt.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072=
">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/4423">i915#4423</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-dg1-16/igt@kms_psr@fbc=
-psr-cursor-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-plane-move:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_psr@psr-cursor-plane-move.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i=
915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_psr@psr-c=
ursor-plane-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +6 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-move:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-2/igt@kms_psr@psr-sprite-plane-move.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i=
915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@kms_psr@psr-sprite-plane-move=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +15 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@kms_vrr@flipline.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243">i915#15243</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555=
">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_161818v2/shard-rkl-6/igt@kms_vrr@flipline.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/15243">i915#15243</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@lobf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@kms_vrr@lobf.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920">i915#11920</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161818v2=
/shard-rkl-6/igt@kms_vrr@lobf.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/11920">i915#11920</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9906">i915#9906</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@kms_vrr@seamless-rr-switc=
h-drrs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@perf@unprivileged-single-ctx-counters.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/2433">i915#2433</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-5/igt@perf@unprivileged-s=
ingle-ctx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/2433">i915#2433</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@prime_vgem@basic-read.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3708">i915#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-8/igt@prime_vgem@basic-read=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@prime_vgem@basic-write.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#329=
1</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
3708">i915#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_161818v2/shard-rkl-6/igt@prime_vgem@basic-write.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-2/igt@sriov_basic@enable-vfs-bind-unbind-each-numvf=
s-all.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9917">i915#9917</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_161818v2/shard-rkl-6/igt@sriov_basic@enable-vfs=
-bind-unbind-each-numvfs-all.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</=
li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18022 -&gt; Patchwork_161818v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18022: 45a3045fc0dc46a893cb8bbe304afafd4120c904 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_8765: 8765<br />
  Patchwork_161818v2: 45a3045fc0dc46a893cb8bbe304afafd4120c904 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============8861767652629692714==--
