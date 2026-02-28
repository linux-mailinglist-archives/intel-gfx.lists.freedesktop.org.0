Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qCVpBfUXo2mJ9gQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Feb 2026 17:29:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F851C4534
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Feb 2026 17:29:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64C9510E2CC;
	Sat, 28 Feb 2026 16:29:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1529710E102;
 Sat, 28 Feb 2026 16:29:36 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0814878330322290765=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_i915=3A_Fix_NULL_pointer?=
 =?utf-8?q?_dereference_in_intel=5Fdmc=5Fupdate=5Fdc6=5Fallowed=5Fcount=28?=
 =?utf-8?q?=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tao Liu" <ltao@redhat.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Sat, 28 Feb 2026 16:29:36 -0000
Message-ID: <177229617601.299615.9835192851371293286@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260228130946.50919-2-ltao@redhat.com>
In-Reply-To: <20260228130946.50919-2-ltao@redhat.com>
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
	NEURAL_HAM(-0.00)[-0.994];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 87F851C4534
X-Rspamd-Action: no action

--===============0814878330322290765==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: i915: Fix NULL pointer dereference in intel_dmc_update_dc6_allowed_count()
URL   : https://patchwork.freedesktop.org/series/162370/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_18066_full -> Patchwork_162370v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_162370v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_162370v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_162370v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@dumb_buffer@create-clear:
    - shard-dg1:          [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg1-12/igt@dumb_buffer@create-clear.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-14/igt@dumb_buffer@create-clear.html

  * igt@gem_exec_nop@basic-parallel:
    - shard-dg2:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-8/igt@gem_exec_nop@basic-parallel.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-4/igt@gem_exec_nop@basic-parallel.html

  
New tests
---------

  New tests have been introduced between CI_DRM_18066_full and Patchwork_162370v1_full:

### New IGT tests (20) ###

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-a-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-b-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-c-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-d-dp-3:
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

  * igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-a-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-b-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-c-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-d-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-a-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-b-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-d-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-a-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-b-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-c-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-d-dp-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_162370v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@cold-reset-bound:
    - shard-tglu-1:       NOTRUN -> [SKIP][5] ([i915#11078])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@device_reset@cold-reset-bound.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-rkl:          NOTRUN -> [SKIP][6] ([i915#9323])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@suspend-resume:
    - shard-tglu-1:       NOTRUN -> [SKIP][7] ([i915#9323])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [PASS][8] -> [INCOMPLETE][9] ([i915#12392] / [i915#13356])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-5/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-6/igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-tglu:         NOTRUN -> [SKIP][10] ([i915#280]) +1 other test skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_exec_balancer@invalid-bonds:
    - shard-dg1:          NOTRUN -> [SKIP][11] ([i915#4036])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@gem_exec_balancer@invalid-bonds.html

  * igt@gem_exec_balancer@parallel:
    - shard-tglu-1:       NOTRUN -> [SKIP][12] ([i915#4525]) +1 other test skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
    - shard-rkl:          NOTRUN -> [SKIP][13] ([i915#4525])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html

  * igt@gem_exec_fence@submit:
    - shard-dg1:          NOTRUN -> [SKIP][14] ([i915#4812])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@gem_exec_fence@submit.html

  * igt@gem_exec_reloc@basic-write-cpu-active:
    - shard-dg1:          NOTRUN -> [SKIP][15] ([i915#3281]) +1 other test skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-13/igt@gem_exec_reloc@basic-write-cpu-active.html

  * igt@gem_exec_suspend@basic-s0@lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][16] ([i915#13356])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@gem_exec_suspend@basic-s0@lmem0.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
    - shard-dg1:          NOTRUN -> [SKIP][17] ([i915#4860]) +1 other test skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html

  * igt@gem_lmem_swapping@massive:
    - shard-tglu-1:       NOTRUN -> [SKIP][18] ([i915#4613])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@gem_lmem_swapping@massive.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-tglu:         NOTRUN -> [SKIP][19] ([i915#4613]) +2 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@random:
    - shard-glk:          NOTRUN -> [SKIP][20] ([i915#4613]) +4 other tests skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-glk8/igt@gem_lmem_swapping@random.html

  * igt@gem_mmap@pf-nonblock:
    - shard-dg1:          NOTRUN -> [SKIP][21] ([i915#4083])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@gem_mmap@pf-nonblock.html

  * igt@gem_mmap_gtt@basic-small-copy-xy:
    - shard-dg2:          NOTRUN -> [SKIP][22] ([i915#4077])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-7/igt@gem_mmap_gtt@basic-small-copy-xy.html

  * igt@gem_mmap_gtt@flink-race:
    - shard-dg1:          NOTRUN -> [SKIP][23] ([i915#4077]) +4 other tests skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@gem_mmap_gtt@flink-race.html

  * igt@gem_pread@exhaustion:
    - shard-glk:          NOTRUN -> [WARN][24] ([i915#2658])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-glk4/igt@gem_pread@exhaustion.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-dg1:          NOTRUN -> [SKIP][25] ([i915#4270]) +2 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-13/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@hw-rejects-pxp-buffer:
    - shard-tglu-1:       NOTRUN -> [SKIP][26] ([i915#13398])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@gem_pxp@hw-rejects-pxp-buffer.html

  * igt@gem_pxp@hw-rejects-pxp-context:
    - shard-tglu:         NOTRUN -> [SKIP][27] ([i915#13398])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@gem_pxp@hw-rejects-pxp-context.html

  * igt@gem_readwrite@read-write:
    - shard-dg1:          NOTRUN -> [SKIP][28] ([i915#3282])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@gem_readwrite@read-write.html

  * igt@gem_tiled_pread_pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][29] ([i915#4079])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@gem_tiled_pread_pwrite.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][30] ([i915#3297])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][31] ([i915#3297])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-rkl:          [PASS][32] -> [INCOMPLETE][33] ([i915#13356]) +2 other tests incomplete
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-7/igt@gem_workarounds@suspend-resume-fd.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen3_render_tiledx_blits:
    - shard-glk10:        NOTRUN -> [SKIP][34] +70 other tests skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-glk10/igt@gen3_render_tiledx_blits.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-tglu-1:       NOTRUN -> [SKIP][35] ([i915#2527] / [i915#2856])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-dg1:          NOTRUN -> [SKIP][36] ([i915#2527])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@unaligned-jump:
    - shard-tglu:         NOTRUN -> [SKIP][37] ([i915#2527] / [i915#2856])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@gen9_exec_parse@unaligned-jump.html

  * igt@i915_drm_fdinfo@busy-hang@vcs0:
    - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#14073]) +6 other tests skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@i915_drm_fdinfo@busy-hang@vcs0.html

  * igt@i915_drm_fdinfo@most-busy-idle-check-all@rcs0:
    - shard-dg1:          NOTRUN -> [SKIP][39] ([i915#14073]) +5 other tests skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@i915_drm_fdinfo@most-busy-idle-check-all@rcs0.html

  * igt@i915_drm_fdinfo@virtual-busy-idle:
    - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#14118])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-7/igt@i915_drm_fdinfo@virtual-busy-idle.html

  * igt@i915_module_load@fault-injection@__uc_init:
    - shard-dg2:          NOTRUN -> [ABORT][41] ([i915#15481])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-11/igt@i915_module_load@fault-injection@__uc_init.html

  * igt@i915_module_load@fault-injection@intel_connector_register:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][42] ([i915#15342])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-11/igt@i915_module_load@fault-injection@intel_connector_register.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-tglu-1:       NOTRUN -> [SKIP][43] ([i915#8399])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-tglu-1:       NOTRUN -> [WARN][44] ([i915#13790] / [i915#2681]) +1 other test warn
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rps@thresholds-park:
    - shard-dg1:          NOTRUN -> [SKIP][45] ([i915#11681])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@i915_pm_rps@thresholds-park.html

  * igt@i915_power@sanity:
    - shard-mtlp:         [PASS][46] -> [SKIP][47] ([i915#7984])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-mtlp-8/igt@i915_power@sanity.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-mtlp-6/igt@i915_power@sanity.html

  * igt@i915_selftest@live:
    - shard-mtlp:         [PASS][48] -> [DMESG-FAIL][49] ([i915#12061] / [i915#15560])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-mtlp-5/igt@i915_selftest@live.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-mtlp-7/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [PASS][50] -> [DMESG-FAIL][51] ([i915#12061])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-mtlp-5/igt@i915_selftest@live@workarounds.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-mtlp-7/igt@i915_selftest@live@workarounds.html

  * igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
    - shard-dg1:          NOTRUN -> [SKIP][52] ([i915#4212])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-13/igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg1:          NOTRUN -> [SKIP][53] ([i915#1769] / [i915#3555])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][54] ([i915#4538] / [i915#5286])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-tglu-1:       NOTRUN -> [SKIP][55] ([i915#5286]) +1 other test skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][56] ([i915#5286]) +1 other test skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-tglu:         NOTRUN -> [SKIP][57] ([i915#3828])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-dg1:          NOTRUN -> [SKIP][58] ([i915#3638])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-dg1:          [PASS][59] -> [ABORT][60] ([i915#15759])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg1-14/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-19/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][61] +2 other tests skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-dg1:          NOTRUN -> [SKIP][62] ([i915#4538])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][63] ([i915#6095]) +184 other tests skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][64] ([i915#14098] / [i915#6095]) +22 other tests skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-5/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
    - shard-glk:          NOTRUN -> [SKIP][65] +334 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-glk8/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#6095]) +41 other tests skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-4/igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-dp-3 (NEW):
    - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#6095]) +39 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-11/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-dp-3.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][68] ([i915#12313])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#10307] / [i915#6095]) +121 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][70] ([i915#6095]) +34 other tests skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][71] ([i915#6095]) +34 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#10307] / [i915#10434] / [i915#6095]) +5 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#14544] / [i915#6095]) +1 other test skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][74] ([i915#14098] / [i915#14544] / [i915#6095])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_chamelium_edid@dp-mode-timings:
    - shard-tglu-1:       NOTRUN -> [SKIP][75] ([i915#11151] / [i915#7828]) +3 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_chamelium_edid@dp-mode-timings.html

  * igt@kms_chamelium_frames@dp-crc-single:
    - shard-dg1:          NOTRUN -> [SKIP][76] ([i915#11151] / [i915#7828]) +2 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_chamelium_frames@dp-crc-single.html

  * igt@kms_chamelium_frames@hdmi-frame-dump:
    - shard-tglu:         NOTRUN -> [SKIP][77] ([i915#11151] / [i915#7828]) +3 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_chamelium_frames@hdmi-frame-dump.html

  * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
    - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#11151] / [i915#7828])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html

  * igt@kms_content_protection@atomic:
    - shard-dg1:          NOTRUN -> [SKIP][79] ([i915#6944] / [i915#7116] / [i915#9424])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-13/igt@kms_content_protection@atomic.html
    - shard-tglu:         NOTRUN -> [SKIP][80] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-type-0-suspend-resume:
    - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#15330])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html

  * igt@kms_content_protection@lic-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][82] ([i915#6944] / [i915#9424])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_content_protection@lic-type-0.html

  * igt@kms_content_protection@lic-type-0-hdcp14:
    - shard-tglu-1:       NOTRUN -> [SKIP][83] ([i915#6944])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_content_protection@lic-type-0-hdcp14.html

  * igt@kms_content_protection@suspend-resume@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][84] ([i915#7173])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-11/igt@kms_content_protection@suspend-resume@pipe-a-dp-3.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85:
    - shard-tglu:         NOTRUN -> [FAIL][85] ([i915#13566]) +1 other test fail
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_cursor_crc@cursor-onscreen-256x85.html
    - shard-rkl:          [PASS][86] -> [FAIL][87] ([i915#13566])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-256x85.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-256x85.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][88] ([i915#13566])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2.html

  * igt@kms_cursor_crc@cursor-onscreen-512x512:
    - shard-tglu:         NOTRUN -> [SKIP][89] ([i915#13049])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_cursor_crc@cursor-onscreen-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#3555])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-max-size:
    - shard-dg1:          NOTRUN -> [SKIP][91] ([i915#3555]) +1 other test skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_cursor_crc@cursor-sliding-max-size.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][92] ([i915#12358] / [i915#14152]) +1 other test incomplete
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-13/igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-3.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-tglu:         NOTRUN -> [SKIP][93] ([i915#4103])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-tglu:         NOTRUN -> [SKIP][94] ([i915#9067])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_dp_aux_dev:
    - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#1257])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@kms_dp_aux_dev.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-tglu-1:       NOTRUN -> [SKIP][96] ([i915#13707])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-dg1:          NOTRUN -> [SKIP][97] ([i915#3555] / [i915#3840])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-tglu-1:       NOTRUN -> [SKIP][98] ([i915#3555] / [i915#3840])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][99] ([i915#9878])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-glk6/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#3955])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@display-4x:
    - shard-tglu:         NOTRUN -> [SKIP][101] ([i915#1839])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_feature_discovery@display-4x.html

  * igt@kms_feature_discovery@psr1:
    - shard-tglu:         NOTRUN -> [SKIP][102] ([i915#658])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_feature_discovery@psr1.html
    - shard-dg1:          NOTRUN -> [SKIP][103] ([i915#658])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-13/igt@kms_feature_discovery@psr1.html

  * igt@kms_flip@2x-absolute-wf_vblank-interruptible:
    - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#9934]) +1 other test skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_flip@2x-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][105] ([i915#12745] / [i915#4839])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-glk10/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][106] ([i915#4839])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-glk10/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-tglu:         NOTRUN -> [SKIP][107] ([i915#3637] / [i915#9934]) +3 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][108] ([i915#3637] / [i915#9934]) +4 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-tglu:         [PASS][109] -> [FAIL][110] ([i915#14600]) +1 other test fail
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-tglu-6/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-8/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][111] ([i915#15643])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
    - shard-dg1:          NOTRUN -> [SKIP][112] ([i915#15643])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#1825]) +5 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:
    - shard-snb:          [PASS][114] -> [SKIP][115] +14 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-tglu-1:       NOTRUN -> [SKIP][116] ([i915#5439])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][117] ([i915#8708]) +3 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][118] +10 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-tglu-1:       NOTRUN -> [SKIP][119] +30 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:
    - shard-tglu-1:       NOTRUN -> [SKIP][120] ([i915#15102]) +9 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
    - shard-tglu:         NOTRUN -> [SKIP][121] +25 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt:
    - shard-dg1:          NOTRUN -> [SKIP][122] ([i915#15102] / [i915#3458]) +5 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
    - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#15102] / [i915#3023]) +2 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
    - shard-tglu:         NOTRUN -> [SKIP][124] ([i915#15102]) +11 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html

  * igt@kms_hdmi_inject@inject-4k:
    - shard-mtlp:         [PASS][125] -> [SKIP][126] ([i915#15725]) +1 other test skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-mtlp-8/igt@kms_hdmi_inject@inject-4k.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-mtlp-1/igt@kms_hdmi_inject@inject-4k.html

  * igt@kms_hdr@invalid-hdr:
    - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#3555] / [i915#8228])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@static-toggle:
    - shard-rkl:          [PASS][128] -> [SKIP][129] ([i915#3555] / [i915#8228])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-1/igt@kms_hdr@static-toggle.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-4/igt@kms_hdr@static-toggle.html
    - shard-tglu-1:       NOTRUN -> [SKIP][130] ([i915#3555] / [i915#8228])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_hdr@static-toggle.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][131] ([i915#15458])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-dg1:          NOTRUN -> [SKIP][132] ([i915#15458])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][133] ([i915#12756] / [i915#13476])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][134] ([i915#13476])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2.html

  * igt@kms_pipe_stress@stress-xrgb8888-untiled:
    - shard-dg1:          [PASS][135] -> [DMESG-WARN][136] ([i915#4423])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg1-18/igt@kms_pipe_stress@stress-xrgb8888-untiled.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-16/igt@kms_pipe_stress@stress-xrgb8888-untiled.html

  * igt@kms_pipe_stress@stress-xrgb8888-yftiled:
    - shard-tglu:         NOTRUN -> [SKIP][137] ([i915#14712])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html

  * igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier:
    - shard-tglu-1:       NOTRUN -> [SKIP][138] ([i915#15709]) +1 other test skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier.html

  * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping:
    - shard-dg1:          NOTRUN -> [SKIP][139] ([i915#15709]) +1 other test skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-13/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping.html
    - shard-tglu:         NOTRUN -> [SKIP][140] ([i915#15709])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-linear-modifier@pipe-b-plane-3:
    - shard-dg1:          NOTRUN -> [ABORT][141] ([i915#15759])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-14/igt@kms_plane@pixel-format-linear-modifier@pipe-b-plane-3.html

  * igt@kms_plane@pixel-format-x-tiled-modifier@pipe-b-plane-5:
    - shard-dg2:          NOTRUN -> [SKIP][142] ([i915#15608]) +1 other test skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_plane@pixel-format-x-tiled-modifier@pipe-b-plane-5.html

  * igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier@pipe-a-plane-7:
    - shard-tglu:         NOTRUN -> [SKIP][143] ([i915#15608]) +1 other test skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier@pipe-a-plane-7.html

  * igt@kms_plane@plane-panning-bottom-right-suspend:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][144] ([i915#13026]) +1 other test incomplete
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-glk11/igt@kms_plane@plane-panning-bottom-right-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][145] ([i915#14412])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb:
    - shard-glk:          NOTRUN -> [FAIL][146] ([i915#10647] / [i915#12177])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-glk8/igt@kms_plane_alpha_blend@alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][147] ([i915#10647]) +1 other test fail
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-glk8/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1.html

  * igt@kms_plane_cursor@viewport@pipe-b-hdmi-a-3-size-64:
    - shard-dg2:          NOTRUN -> [ABORT][148] ([i915#15759])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-7/igt@kms_plane_cursor@viewport@pipe-b-hdmi-a-3-size-64.html

  * igt@kms_plane_multiple@2x-tiling-4:
    - shard-dg1:          NOTRUN -> [SKIP][149] ([i915#13958])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-13/igt@kms_plane_multiple@2x-tiling-4.html
    - shard-tglu:         NOTRUN -> [SKIP][150] ([i915#13958])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_plane_multiple@2x-tiling-4.html

  * igt@kms_plane_multiple@2x-tiling-x:
    - shard-tglu-1:       NOTRUN -> [SKIP][151] ([i915#13958])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-x.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-rkl:          [PASS][152] -> [SKIP][153] ([i915#6953])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][154] ([i915#15329]) +4 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
    - shard-dg1:          NOTRUN -> [SKIP][155] ([i915#15329]) +4 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html

  * igt@kms_pm_backlight@bad-brightness:
    - shard-tglu:         NOTRUN -> [SKIP][156] ([i915#9812])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_pm_backlight@bad-brightness.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-dg1:          NOTRUN -> [SKIP][157] ([i915#5354])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_backlight@fade:
    - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#5354])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_pm_backlight@fade.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#9685])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-13/igt@kms_pm_dc@dc3co-vpb-simulation.html
    - shard-tglu:         NOTRUN -> [SKIP][160] ([i915#9685])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-tglu-1:       NOTRUN -> [SKIP][161] ([i915#15073])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-dg1:          [PASS][162] -> [SKIP][163] ([i915#15073]) +2 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg1-14/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-19/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-rkl:          [PASS][164] -> [SKIP][165] ([i915#15073]) +1 other test skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-tglu:         NOTRUN -> [SKIP][166] ([i915#15073])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@pc8-residency:
    - shard-dg2:          NOTRUN -> [SKIP][167]
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-7/igt@kms_pm_rpm@pc8-residency.html

  * igt@kms_pm_rpm@system-suspend-modeset:
    - shard-glk:          NOTRUN -> [INCOMPLETE][168] ([i915#10553])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-glk8/igt@kms_pm_rpm@system-suspend-modeset.html

  * igt@kms_prime@d3hot:
    - shard-tglu-1:       NOTRUN -> [SKIP][169] ([i915#6524])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#11520]) +1 other test skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:
    - shard-tglu-1:       NOTRUN -> [SKIP][171] ([i915#11520]) +2 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
    - shard-glk11:        NOTRUN -> [SKIP][172] ([i915#11520]) +1 other test skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-glk11/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][173] ([i915#11520]) +9 other tests skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-glk8/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-sf:
    - shard-glk10:        NOTRUN -> [SKIP][174] ([i915#11520])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-glk10/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-tglu:         NOTRUN -> [SKIP][175] ([i915#11520]) +5 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:
    - shard-dg1:          NOTRUN -> [SKIP][176] ([i915#11520]) +5 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html

  * igt@kms_psr@fbc-psr-cursor-plane-onoff:
    - shard-tglu:         NOTRUN -> [SKIP][177] ([i915#9732]) +8 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_psr@fbc-psr-cursor-plane-onoff.html

  * igt@kms_psr@fbc-psr2-cursor-blt:
    - shard-tglu-1:       NOTRUN -> [SKIP][178] ([i915#9732]) +9 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_psr@fbc-psr2-cursor-blt.html

  * igt@kms_psr@pr-sprite-plane-onoff:
    - shard-dg1:          NOTRUN -> [SKIP][179] ([i915#1072] / [i915#9732]) +6 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_psr@pr-sprite-plane-onoff.html

  * igt@kms_psr@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][180] ([i915#1072] / [i915#9732]) +3 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@kms_psr@psr-suspend.html

  * igt@kms_rotation_crc@exhaust-fences:
    - shard-dg1:          NOTRUN -> [SKIP][181] ([i915#4884])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_rotation_crc@exhaust-fences.html

  * igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:
    - shard-glk:          NOTRUN -> [INCOMPLETE][182] ([i915#15500])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-glk1/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html

  * igt@kms_rotation_crc@primary-rotation-180:
    - shard-dg2:          [PASS][183] -> [ABORT][184] ([i915#15759])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-5/igt@kms_rotation_crc@primary-rotation-180.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-7/igt@kms_rotation_crc@primary-rotation-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg1:          NOTRUN -> [SKIP][185] ([i915#5289]) +1 other test skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-13/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
    - shard-tglu:         NOTRUN -> [SKIP][186] ([i915#5289])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-tglu-1:       NOTRUN -> [SKIP][187] ([i915#5289]) +1 other test skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-tglu:         NOTRUN -> [SKIP][188] ([i915#3555])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_setmode@invalid-clone-single-crtc:
    - shard-tglu-1:       NOTRUN -> [SKIP][189] ([i915#3555]) +2 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_setmode@invalid-clone-single-crtc.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-dg1:          NOTRUN -> [SKIP][190] ([i915#8623])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-13/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
    - shard-tglu:         NOTRUN -> [SKIP][191] ([i915#8623])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vblank@ts-continuation-dpms-suspend@pipe-c-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [ABORT][192] ([i915#15132])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-c-hdmi-a-2.html

  * igt@perf_pmu@busy-double-start@vcs1:
    - shard-dg2:          [PASS][193] -> [FAIL][194] ([i915#4349])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-6/igt@perf_pmu@busy-double-start@vcs1.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-3/igt@perf_pmu@busy-double-start@vcs1.html

  * igt@perf_pmu@module-unload:
    - shard-glk11:        NOTRUN -> [ABORT][195] ([i915#15778])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-glk11/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@most-busy-check-all@rcs0:
    - shard-mtlp:         [PASS][196] -> [FAIL][197] ([i915#15520]) +1 other test fail
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-mtlp-3/igt@perf_pmu@most-busy-check-all@rcs0.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-mtlp-6/igt@perf_pmu@most-busy-check-all@rcs0.html

  * igt@prime_vgem@fence-read-hang:
    - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#3708])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@prime_vgem@fence-read-hang.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-dg1:          NOTRUN -> [SKIP][199] ([i915#9917])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@sriov_basic@enable-vfs-autoprobe-on.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each:
    - shard-glk11:        NOTRUN -> [SKIP][200] +91 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-glk11/igt@sriov_basic@enable-vfs-bind-unbind-each.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-tglu:         NOTRUN -> [FAIL][201] ([i915#12910])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  
#### Possible fixes ####

  * igt@core_getversion@all-cards:
    - shard-dg2:          [FAIL][202] ([i915#15689]) -> [PASS][203]
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@core_getversion@all-cards.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@core_getversion@all-cards.html

  * igt@fbdev@unaligned-write:
    - shard-dg2:          [SKIP][204] ([i915#2582]) -> [PASS][205]
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@fbdev@unaligned-write.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@fbdev@unaligned-write.html

  * igt@gem_exec_create@madvise:
    - shard-dg1:          [ABORT][206] ([i915#15759]) -> [PASS][207] +3 other tests pass
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg1-16/igt@gem_exec_create@madvise.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-13/igt@gem_exec_create@madvise.html

  * igt@gem_gpgpu_fill@offset-16x16:
    - shard-dg2:          [SKIP][208] ([i915#15689] / [i915#2575]) -> [PASS][209] +89 other tests pass
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@gem_gpgpu_fill@offset-16x16.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gem_gpgpu_fill@offset-16x16.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0:
    - shard-dg2:          [ABORT][210] ([i915#15759]) -> [PASS][211] +1 other test pass
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-4/igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-7/igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-dg2:          [FAIL][212] ([i915#15734]) -> [PASS][213]
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-1/igt@gem_lmem_swapping@smem-oom.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-6/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [CRASH][214] ([i915#5493]) -> [PASS][215]
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@i915_drm_fdinfo@memory-info-purgeable:
    - shard-dg2:          [SKIP][216] -> [PASS][217] +1 other test pass
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@i915_drm_fdinfo@memory-info-purgeable.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@i915_drm_fdinfo@memory-info-purgeable.html

  * igt@i915_module_load@load:
    - shard-dg2:          ([FAIL][218], [PASS][219], [PASS][220], [PASS][221], [FAIL][222], [PASS][223], [PASS][224], [PASS][225], [PASS][226], [PASS][227], [FAIL][228], [PASS][229], [PASS][230], [PASS][231], [PASS][232], [PASS][233], [FAIL][234], [PASS][235], [PASS][236], [PASS][237], [PASS][238], [FAIL][239], [FAIL][240], [PASS][241], [PASS][242]) ([i915#15741]) -> ([PASS][243], [PASS][244], [PASS][245], [PASS][246], [PASS][247], [PASS][248], [PASS][249], [PASS][250], [PASS][251], [PASS][252], [PASS][253], [PASS][254], [PASS][255], [PASS][256], [PASS][257], [PASS][258], [PASS][259], [PASS][260], [PASS][261], [PASS][262], [PASS][263], [PASS][264], [PASS][265], [PASS][266])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@i915_module_load@load.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-4/igt@i915_module_load@load.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-8/igt@i915_module_load@load.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-6/igt@i915_module_load@load.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@i915_module_load@load.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-7/igt@i915_module_load@load.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-1/igt@i915_module_load@load.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-7/igt@i915_module_load@load.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-6/igt@i915_module_load@load.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-1/igt@i915_module_load@load.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@i915_module_load@load.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-4/igt@i915_module_load@load.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-5/igt@i915_module_load@load.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-8/igt@i915_module_load@load.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-5/igt@i915_module_load@load.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-1/igt@i915_module_load@load.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@i915_module_load@load.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-6/igt@i915_module_load@load.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-3/igt@i915_module_load@load.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-8/igt@i915_module_load@load.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-3/igt@i915_module_load@load.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@i915_module_load@load.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@i915_module_load@load.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-4/igt@i915_module_load@load.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-7/igt@i915_module_load@load.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-4/igt@i915_module_load@load.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-4/igt@i915_module_load@load.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-11/igt@i915_module_load@load.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@i915_module_load@load.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@i915_module_load@load.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@i915_module_load@load.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-4/igt@i915_module_load@load.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-6/igt@i915_module_load@load.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-6/igt@i915_module_load@load.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-7/igt@i915_module_load@load.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-11/igt@i915_module_load@load.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-7/igt@i915_module_load@load.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-4/igt@i915_module_load@load.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-7/igt@i915_module_load@load.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-8/igt@i915_module_load@load.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-8/igt@i915_module_load@load.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-3/igt@i915_module_load@load.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-8/igt@i915_module_load@load.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@i915_module_load@load.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-8/igt@i915_module_load@load.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-3/igt@i915_module_load@load.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-3/igt@i915_module_load@load.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@i915_module_load@load.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@i915_module_load@load.html

  * igt@i915_pm_rps@engine-order:
    - shard-glk:          [FAIL][267] ([i915#14896]) -> [PASS][268]
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-glk5/igt@i915_pm_rps@engine-order.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-glk2/igt@i915_pm_rps@engine-order.html

  * igt@i915_suspend@sysfs-reader:
    - shard-glk:          [INCOMPLETE][269] ([i915#4817]) -> [PASS][270] +1 other test pass
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-glk8/igt@i915_suspend@sysfs-reader.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-glk1/igt@i915_suspend@sysfs-reader.html

  * igt@kms_async_flips@async-flip-with-page-flip-events-linear:
    - shard-dg2:          [SKIP][271] ([i915#15689]) -> [PASS][272] +131 other tests pass
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_async_flips@async-flip-with-page-flip-events-linear.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_async_flips@async-flip-with-page-flip-events-linear.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         [FAIL][273] ([i915#15733] / [i915#5138]) -> [PASS][274]
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-mtlp-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_cursor_crc@cursor-onscreen-128x42:
    - shard-rkl:          [FAIL][275] ([i915#13566]) -> [PASS][276] +1 other test pass
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-128x42.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-128x42.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-snb:          [TIMEOUT][277] ([i915#14033] / [i915#14350]) -> [PASS][278]
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [TIMEOUT][279] ([i915#14033]) -> [PASS][280]
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - shard-mtlp:         [SKIP][281] ([i915#15672]) -> [PASS][282]
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-mtlp-1/igt@kms_force_connector_basic@prune-stale-modes.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-mtlp-4/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:
    - shard-snb:          [SKIP][283] -> [PASS][284] +10 other tests pass
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a:
    - shard-rkl:          [INCOMPLETE][285] ([i915#14412]) -> [PASS][286]
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
    - shard-dg2:          [SKIP][287] ([i915#15689] / [i915#9423]) -> [PASS][288] +4 other tests pass
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-11/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-dg1:          [SKIP][289] ([i915#15073]) -> [PASS][290]
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg1-19/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-14/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg2:          [SKIP][291] ([i915#15073]) -> [PASS][292] +2 other tests pass
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-6/igt@kms_pm_rpm@modeset-lpsp.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg1:          [DMESG-WARN][293] ([i915#4423]) -> [PASS][294] +1 other test pass
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg1-18/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-12/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][295] ([i915#15073]) -> [PASS][296]
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@system-suspend-idle:
    - shard-rkl:          [INCOMPLETE][297] ([i915#14419]) -> [PASS][298]
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-3/igt@kms_pm_rpm@system-suspend-idle.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@kms_pm_rpm@system-suspend-idle.html

  * igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create:
    - shard-glk:          [ABORT][299] ([i915#13179]) -> [PASS][300]
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-glk9/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-glk9/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create.html

  * igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-2:
    - shard-rkl:          [INCOMPLETE][301] ([i915#12276]) -> [PASS][302]
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-2.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-2.html

  * igt@kms_vrr@negative-basic:
    - shard-mtlp:         [FAIL][303] ([i915#15420]) -> [PASS][304] +1 other test pass
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-mtlp-5/igt@kms_vrr@negative-basic.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-mtlp-7/igt@kms_vrr@negative-basic.html

  * igt@perf@gen12-group-concurrent-oa-buffer-read:
    - shard-mtlp:         [FAIL][305] ([i915#10538]) -> [PASS][306]
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-mtlp-6/igt@perf@gen12-group-concurrent-oa-buffer-read.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-mtlp-2/igt@perf@gen12-group-concurrent-oa-buffer-read.html

  * igt@perf_pmu@busy-accuracy-98@rcs0:
    - shard-tglu:         [FAIL][307] ([i915#4349]) -> [PASS][308] +1 other test pass
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-tglu-3/igt@perf_pmu@busy-accuracy-98@rcs0.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-tglu-10/igt@perf_pmu@busy-accuracy-98@rcs0.html

  * igt@perf_pmu@busy-double-start@vcs0:
    - shard-mtlp:         [FAIL][309] ([i915#4349]) -> [PASS][310]
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-mtlp-3/igt@perf_pmu@busy-double-start@vcs0.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-mtlp-6/igt@perf_pmu@busy-double-start@vcs0.html

  * igt@perf_pmu@busy-double-start@vcs1:
    - shard-dg1:          [FAIL][311] ([i915#4349]) -> [PASS][312] +1 other test pass
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg1-17/igt@perf_pmu@busy-double-start@vcs1.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg1-12/igt@perf_pmu@busy-double-start@vcs1.html

  
#### Warnings ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-dg2:          [SKIP][313] ([i915#15689] / [i915#2575]) -> [SKIP][314] ([i915#8411])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@api_intel_bb@blit-reloc-keep-cache.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@api_intel_bb@blit-reloc-keep-cache.html
    - shard-rkl:          [SKIP][315] ([i915#8411]) -> [SKIP][316] ([i915#14544] / [i915#8411]) +1 other test skip
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-1/igt@api_intel_bb@blit-reloc-keep-cache.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@api_intel_bb@crc32:
    - shard-rkl:          [SKIP][317] ([i915#14544] / [i915#6230]) -> [SKIP][318] ([i915#6230])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@api_intel_bb@crc32.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@api_intel_bb@crc32.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-dg2:          [SKIP][319] ([i915#15689] / [i915#2575]) -> [SKIP][320] ([i915#7697])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@gem_close_race@multigpu-basic-process.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_exec_balancer@bonded-sync:
    - shard-dg2:          [SKIP][321] ([i915#15689] / [i915#2575]) -> [SKIP][322] ([i915#4771]) +1 other test skip
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@gem_exec_balancer@bonded-sync.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gem_exec_balancer@bonded-sync.html

  * igt@gem_exec_balancer@noheartbeat:
    - shard-dg2:          [SKIP][323] ([i915#15689] / [i915#2575]) -> [SKIP][324] ([i915#8555]) +1 other test skip
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@gem_exec_balancer@noheartbeat.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gem_exec_balancer@noheartbeat.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-rkl:          [SKIP][325] ([i915#14544] / [i915#4525]) -> [SKIP][326] ([i915#4525]) +1 other test skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_flush@basic-uc-rw-default:
    - shard-dg2:          [SKIP][327] ([i915#15689] / [i915#2575]) -> [SKIP][328] ([i915#3539] / [i915#4852]) +1 other test skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@gem_exec_flush@basic-uc-rw-default.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gem_exec_flush@basic-uc-rw-default.html

  * igt@gem_exec_params@rsvd2-dirt:
    - shard-dg2:          [SKIP][329] ([i915#15689] / [i915#2575]) -> [SKIP][330] ([i915#5107])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@gem_exec_params@rsvd2-dirt.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gem_exec_params@rsvd2-dirt.html

  * igt@gem_exec_reloc@basic-cpu-read-active:
    - shard-rkl:          [SKIP][331] ([i915#3281]) -> [SKIP][332] ([i915#14544] / [i915#3281]) +5 other tests skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-2/igt@gem_exec_reloc@basic-cpu-read-active.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-read-active.html

  * igt@gem_exec_reloc@basic-gtt-read:
    - shard-dg2:          [SKIP][333] ([i915#15689] / [i915#2575]) -> [SKIP][334] ([i915#3281]) +12 other tests skip
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@gem_exec_reloc@basic-gtt-read.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gem_exec_reloc@basic-gtt-read.html
    - shard-rkl:          [SKIP][335] ([i915#14544] / [i915#3281]) -> [SKIP][336] ([i915#3281]) +3 other tests skip
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-read.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-read.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          [SKIP][337] ([i915#15689] / [i915#2575]) -> [INCOMPLETE][338] ([i915#13356])
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@gem_exec_suspend@basic-s0.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@gem_exec_suspend@basic-s0.html
    - shard-rkl:          [ABORT][339] ([i915#15131]) -> [INCOMPLETE][340] ([i915#13356]) +1 other test incomplete
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-1/igt@gem_exec_suspend@basic-s0.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-dg2:          [SKIP][341] ([i915#15689] / [i915#2575]) -> [SKIP][342] ([i915#4860]) +1 other test skip
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@gem_fence_thrash@bo-copy.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-rkl:          [SKIP][343] ([i915#14544] / [i915#4613]) -> [SKIP][344] ([i915#4613])
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-multi.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-rkl:          [SKIP][345] ([i915#4613]) -> [SKIP][346] ([i915#14544] / [i915#4613]) +2 other tests skip
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-7/igt@gem_lmem_swapping@parallel-multi.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_media_vme:
    - shard-dg2:          [SKIP][347] ([i915#15689] / [i915#2575]) -> [SKIP][348] ([i915#284])
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@gem_media_vme.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gem_media_vme.html

  * igt@gem_mmap_wc@copy:
    - shard-dg2:          [SKIP][349] ([i915#15689] / [i915#2575]) -> [SKIP][350] ([i915#4083]) +6 other tests skip
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@gem_mmap_wc@copy.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gem_mmap_wc@copy.html

  * igt@gem_partial_pwrite_pread@write-snoop:
    - shard-rkl:          [SKIP][351] ([i915#14544] / [i915#3282]) -> [SKIP][352] ([i915#3282])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@gem_partial_pwrite_pread@write-snoop.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@gem_partial_pwrite_pread@write-snoop.html

  * igt@gem_partial_pwrite_pread@write-uncached:
    - shard-rkl:          [SKIP][353] ([i915#3282]) -> [SKIP][354] ([i915#14544] / [i915#3282]) +1 other test skip
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-1/igt@gem_partial_pwrite_pread@write-uncached.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@gem_partial_pwrite_pread@write-uncached.html

  * igt@gem_pxp@display-protected-crc:
    - shard-dg2:          [SKIP][355] ([i915#15689] / [i915#2575]) -> [SKIP][356] ([i915#4270]) +2 other tests skip
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@gem_pxp@display-protected-crc.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gem_pxp@display-protected-crc.html

  * igt@gem_readwrite@write-bad-handle:
    - shard-dg2:          [SKIP][357] ([i915#15689] / [i915#2575]) -> [SKIP][358] ([i915#3282]) +5 other tests skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@gem_readwrite@write-bad-handle.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-11/igt@gem_readwrite@write-bad-handle.html

  * igt@gem_render_copy@y-tiled-to-vebox-y-tiled:
    - shard-dg2:          [SKIP][359] ([i915#15689] / [i915#2575] / [i915#5190]) -> [SKIP][360] ([i915#5190] / [i915#8428]) +6 other tests skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-dg2:          [SKIP][361] ([i915#15689] / [i915#2575]) -> [SKIP][362] ([i915#4079]) +2 other tests skip
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_softpin@evict-snoop:
    - shard-rkl:          [SKIP][363] ([i915#14544]) -> [SKIP][364] +7 other tests skip
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@gem_softpin@evict-snoop.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@gem_softpin@evict-snoop.html
    - shard-dg2:          [SKIP][365] ([i915#15689] / [i915#2575]) -> [SKIP][366] ([i915#4885])
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@gem_softpin@evict-snoop.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gem_softpin@evict-snoop.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg2:          [SKIP][367] ([i915#15689] / [i915#2575]) -> [SKIP][368] ([i915#3297] / [i915#4880]) +1 other test skip
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-dg2:          [SKIP][369] ([i915#15689] / [i915#2575]) -> [SKIP][370] ([i915#3297])
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@gem_userptr_blits@readonly-pwrite-unsync.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gem_userptr_blits@readonly-pwrite-unsync.html
    - shard-rkl:          [SKIP][371] ([i915#14544] / [i915#3297]) -> [SKIP][372] ([i915#3297])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@gem_userptr_blits@readonly-pwrite-unsync.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-dg2:          [SKIP][373] ([i915#15689] / [i915#2575]) -> [SKIP][374] ([i915#2856]) +4 other tests skip
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@gen9_exec_parse@batch-without-end.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gen9_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@bb-secure:
    - shard-rkl:          [SKIP][375] ([i915#2527]) -> [SKIP][376] ([i915#14544] / [i915#2527]) +1 other test skip
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-7/igt@gen9_exec_parse@bb-secure.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@gen9_exec_parse@bb-secure.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-rkl:          [SKIP][377] ([i915#14544] / [i915#2527]) -> [SKIP][378] ([i915#2527]) +2 other tests skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@gen9_exec_parse@valid-registers.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_drm_fdinfo@busy-hang:
    - shard-dg2:          [SKIP][379] -> [SKIP][380] ([i915#14073])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@i915_drm_fdinfo@busy-hang.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@i915_drm_fdinfo@busy-hang.html

  * igt@i915_module_load@fault-injection:
    - shard-dg2:          [SKIP][381] ([i915#15689] / [i915#2575]) -> [ABORT][382] ([i915#15342] / [i915#15481])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@i915_module_load@fault-injection.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-11/igt@i915_module_load@fault-injection.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-dg2:          [SKIP][383] ([i915#15689] / [i915#2575]) -> [SKIP][384] ([i915#4077]) +6 other tests skip
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@i915_suspend@fence-restore-untiled.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-dg2:          [SKIP][385] ([i915#15689]) -> [SKIP][386] ([i915#4212])
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-11/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-rkl:          [SKIP][387] ([i915#14544] / [i915#5286]) -> [SKIP][388] ([i915#5286]) +1 other test skip
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
    - shard-rkl:          [SKIP][389] ([i915#5286]) -> [SKIP][390] ([i915#14544] / [i915#5286])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-7/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-rkl:          [SKIP][391] ([i915#3638]) -> [SKIP][392] ([i915#14544] / [i915#3638])
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-1/igt@kms_big_fb@linear-8bpp-rotate-270.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-rkl:          [SKIP][393] ([i915#3828]) -> [SKIP][394] ([i915#14544] / [i915#3828])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-1/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-dg2:          [SKIP][395] ([i915#15689] / [i915#5190]) -> [SKIP][396] ([i915#4538] / [i915#5190]) +6 other tests skip
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-addfb-size-overflow:
    - shard-dg2:          [SKIP][397] ([i915#15689] / [i915#5190]) -> [SKIP][398] ([i915#5190]) +1 other test skip
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-11/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc:
    - shard-dg2:          [SKIP][399] ([i915#15689]) -> [SKIP][400] ([i915#10307] / [i915#6095]) +8 other tests skip
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-11/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][401] ([i915#6095]) -> [SKIP][402] ([i915#14544] / [i915#6095]) +10 other tests skip
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
    - shard-dg2:          [SKIP][403] ([i915#15689]) -> [SKIP][404] ([i915#12313]) +3 other tests skip
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
    - shard-rkl:          [SKIP][405] ([i915#12313] / [i915#14544]) -> [SKIP][406] ([i915#12313])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs:
    - shard-dg2:          [SKIP][407] ([i915#15689]) -> [SKIP][408] ([i915#10307] / [i915#10434] / [i915#6095])
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc:
    - shard-dg2:          [SKIP][409] ([i915#15689]) -> [SKIP][410] ([i915#6095]) +3 other tests skip
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs:
    - shard-rkl:          [SKIP][411] ([i915#14098] / [i915#6095]) -> [SKIP][412] ([i915#14098] / [i915#14544] / [i915#6095]) +12 other tests skip
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-2/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          [SKIP][413] ([i915#14544] / [i915#6095]) -> [SKIP][414] ([i915#6095]) +10 other tests skip
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-2.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          [SKIP][415] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][416] ([i915#14098] / [i915#6095]) +11 other tests skip
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_chamelium_color@ctm-max:
    - shard-dg2:          [SKIP][417] ([i915#15689]) -> [SKIP][418] +2 other tests skip
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_chamelium_color@ctm-max.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_chamelium_color@ctm-max.html

  * igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
    - shard-dg2:          [SKIP][419] ([i915#15689]) -> [SKIP][420] ([i915#11151] / [i915#7828]) +7 other tests skip
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_chamelium_frames@hdmi-cmp-planar-formats.html

  * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
    - shard-rkl:          [SKIP][421] ([i915#11151] / [i915#7828]) -> [SKIP][422] ([i915#11151] / [i915#14544] / [i915#7828])
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-7/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-rkl:          [SKIP][423] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][424] ([i915#11151] / [i915#7828]) +2 other tests skip
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_color@deep-color:
    - shard-dg2:          [SKIP][425] ([i915#15689]) -> [SKIP][426] ([i915#12655] / [i915#3555])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_color@deep-color.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-rkl:          [SKIP][427] ([i915#6944] / [i915#7118] / [i915#9424]) -> [SKIP][428] ([i915#14544] / [i915#6944] / [i915#7118] / [i915#9424])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-7/igt@kms_content_protection@atomic-dpms.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@atomic-hdcp14:
    - shard-dg2:          [SKIP][429] ([i915#15689]) -> [SKIP][430] ([i915#6944])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_content_protection@atomic-hdcp14.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_content_protection@atomic-hdcp14.html

  * igt@kms_content_protection@dp-mst-lic-type-0-hdcp14:
    - shard-rkl:          [SKIP][431] ([i915#15330]) -> [SKIP][432] ([i915#14544] / [i915#15330])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-1/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html
    - shard-dg2:          [SKIP][433] ([i915#15689]) -> [SKIP][434] ([i915#15330])
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html

  * igt@kms_content_protection@lic-type-1:
    - shard-dg2:          [SKIP][435] ([i915#15689]) -> [SKIP][436] ([i915#6944] / [i915#9424])
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_content_protection@lic-type-1.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_content_protection@lic-type-1.html
    - shard-rkl:          [SKIP][437] ([i915#14544] / [i915#6944] / [i915#9424]) -> [SKIP][438] ([i915#6944] / [i915#9424])
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_content_protection@lic-type-1.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@suspend-resume:
    - shard-dg2:          [SKIP][439] ([i915#15689]) -> [FAIL][440] ([i915#7173])
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_content_protection@suspend-resume.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-11/igt@kms_content_protection@suspend-resume.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-dg2:          [SKIP][441] ([i915#15689]) -> [SKIP][442] ([i915#3555]) +4 other tests skip
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
    - shard-rkl:          [SKIP][443] ([i915#3555]) -> [SKIP][444] ([i915#14544] / [i915#3555]) +1 other test skip
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-dg2:          [SKIP][445] ([i915#15689]) -> [SKIP][446] ([i915#13049]) +1 other test skip
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-rkl:          [SKIP][447] ([i915#13049] / [i915#14544]) -> [SKIP][448] ([i915#13049]) +1 other test skip
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x170.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-rkl:          [SKIP][449] -> [SKIP][450] ([i915#14544]) +8 other tests skip
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-1/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - shard-dg2:          [SKIP][451] ([i915#15689]) -> [SKIP][452] ([i915#13046] / [i915#5354]) +3 other tests skip
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-rkl:          [SKIP][453] ([i915#9723]) -> [SKIP][454] ([i915#14544] / [i915#9723])
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-7/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-rkl:          [SKIP][455] ([i915#14544] / [i915#3555] / [i915#3804]) -> [SKIP][456] ([i915#3555] / [i915#3804])
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          [SKIP][457] ([i915#14544] / [i915#3804]) -> [SKIP][458] ([i915#3804])
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          [SKIP][459] ([i915#15689]) -> [SKIP][460] ([i915#8812])
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_draw_crc@draw-method-mmap-wc.html
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          [SKIP][461] ([i915#14544] / [i915#3555] / [i915#3840]) -> [SKIP][462] ([i915#3555] / [i915#3840])
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_dsc@dsc-basic.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg2:          [SKIP][463] ([i915#15689]) -> [SKIP][464] ([i915#3840] / [i915#9688])
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_dsc@dsc-fractional-bpp.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@kms_dsc@dsc-fractional-bpp.html
    - shard-rkl:          [SKIP][465] ([i915#3840]) -> [SKIP][466] ([i915#14544] / [i915#3840])
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-1/igt@kms_dsc@dsc-fractional-bpp.html
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-dg2:          [SKIP][467] ([i915#15689]) -> [SKIP][468] ([i915#9337])
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_feature_discovery@dp-mst.html
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_feature_discovery@dp-mst.html
    - shard-rkl:          [SKIP][469] ([i915#14544] / [i915#9337]) -> [SKIP][470] ([i915#9337])
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_feature_discovery@dp-mst.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_feature_discovery@psr2:
    - shard-dg2:          [SKIP][471] ([i915#15689]) -> [SKIP][472] ([i915#658])
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_feature_discovery@psr2.html
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
    - shard-rkl:          [SKIP][473] ([i915#9934]) -> [SKIP][474] ([i915#14544] / [i915#9934])
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-dg2:          [SKIP][475] ([i915#15689]) -> [SKIP][476] ([i915#9934]) +7 other tests skip
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_flip@2x-flip-vs-panning.html
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@2x-plain-flip:
    - shard-rkl:          [SKIP][477] ([i915#14544] / [i915#9934]) -> [SKIP][478] ([i915#9934]) +6 other tests skip
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_flip@2x-plain-flip.html
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@flip-vs-fences-interruptible:
    - shard-dg2:          [SKIP][479] ([i915#15689]) -> [SKIP][480] ([i915#8381])
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_flip@flip-vs-fences-interruptible.html
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_flip@flip-vs-fences-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-glk:          [INCOMPLETE][481] ([i915#12745] / [i915#4839] / [i915#6113]) -> [INCOMPLETE][482] ([i915#12745] / [i915#4839])
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-glk1/igt@kms_flip@flip-vs-suspend.html
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-glk4/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend@a-hdmi-a1:
    - shard-glk:          [INCOMPLETE][483] ([i915#12745] / [i915#6113]) -> [INCOMPLETE][484] ([i915#12745])
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-glk1/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-glk4/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-dg2:          [SKIP][485] ([i915#15689] / [i915#5190]) -> [SKIP][486] ([i915#15643] / [i915#5190]) +1 other test skip
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-rkl:          [SKIP][487] ([i915#14544] / [i915#15643]) -> [SKIP][488] ([i915#15643]) +2 other tests skip
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-dg2:          [SKIP][489] ([i915#15689]) -> [SKIP][490] ([i915#15643]) +3 other tests skip
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
    - shard-rkl:          [SKIP][491] ([i915#15643]) -> [SKIP][492] ([i915#14544] / [i915#15643]) +1 other test skip
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-dg2:          [SKIP][493] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][494] ([i915#15102] / [i915#3458]) +1 other test skip
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][495] ([i915#1825]) -> [SKIP][496] ([i915#14544] / [i915#1825]) +12 other tests skip
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][497] ([i915#15689]) -> [SKIP][498] ([i915#5354]) +26 other tests skip
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
    - shard-rkl:          [SKIP][499] ([i915#14544] / [i915#1825]) -> [SKIP][500] ([i915#1825]) +14 other tests skip
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-dg2:          [SKIP][501] ([i915#15689]) -> [SKIP][502] ([i915#10055])
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-dg2:          [SKIP][503] ([i915#15689]) -> [SKIP][504] ([i915#9766])
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt:
    - shard-dg2:          [SKIP][505] ([i915#15689]) -> [SKIP][506] ([i915#15102])
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt.html
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][507] ([i915#14544] / [i915#15102]) -> [SKIP][508] ([i915#15102]) +2 other tests skip
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][509] ([i915#15689]) -> [SKIP][510] ([i915#15104]) +1 other test skip
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-wc.html
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][511] ([i915#15102] / [i915#3458]) -> [SKIP][512] ([i915#10433] / [i915#15102] / [i915#3458]) +5 other tests skip
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][513] ([i915#15689]) -> [SKIP][514] ([i915#15102] / [i915#3458]) +10 other tests skip
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [514]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-rkl:          [SKIP][515] ([i915#15102] / [i915#3023]) -> [SKIP][516] ([i915#14544] / [i915#15102] / [i915#3023]) +6 other tests skip
   [515]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
   [516]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          [SKIP][517] ([i915#15689]) -> [SKIP][518] ([i915#8708]) +14 other tests skip
   [517]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [518]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
    - shard-rkl:          [SKIP][519] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][520] ([i915#15102] / [i915#3023]) +5 other tests skip
   [519]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html
   [520]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-rkl:          [INCOMPLETE][521] ([i915#15436]) -> [SKIP][522] ([i915#3555] / [i915#8228])
   [521]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_hdr@bpc-switch-suspend.html
   [522]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-mtlp:         [SKIP][523] ([i915#1187] / [i915#12713]) -> [SKIP][524] ([i915#12713])
   [523]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-mtlp-1/igt@kms_hdr@brightness-with-hdr.html
   [524]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-mtlp-4/igt@kms_hdr@brightness-with-hdr.html
    - shard-rkl:          [SKIP][525] ([i915#1187] / [i915#12713]) -> [SKIP][526] ([i915#12713])
   [525]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-3/igt@kms_hdr@brightness-with-hdr.html
   [526]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-5/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-dg2:          [SKIP][527] ([i915#15689]) -> [SKIP][528] ([i915#15460])
   [527]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_joiner@basic-big-joiner.html
   [528]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-rkl:          [SKIP][529] ([i915#14544] / [i915#15459]) -> [SKIP][530] ([i915#15459])
   [529]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_joiner@basic-force-big-joiner.html
   [530]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-dg2:          [SKIP][531] ([i915#15689]) -> [SKIP][532] ([i915#4816])
   [531]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [532]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-dg2:          [SKIP][533] ([i915#15689]) -> [SKIP][534] ([i915#6301]) +1 other test skip
   [533]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_panel_fitting@atomic-fastset.html
   [534]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@kms_panel_fitting@atomic-fastset.html
    - shard-rkl:          [SKIP][535] ([i915#6301]) -> [SKIP][536] ([i915#14544] / [i915#6301])
   [535]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-1/igt@kms_panel_fitting@atomic-fastset.html
   [536]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_panel_fitting@legacy:
    - shard-rkl:          [SKIP][537] ([i915#14544] / [i915#6301]) -> [SKIP][538] ([i915#6301])
   [537]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_panel_fitting@legacy.html
   [538]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_panel_fitting@legacy.html

  * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
    - shard-dg2:          [SKIP][539] ([i915#15689] / [i915#2575]) -> [SKIP][540] +2 other tests skip
   [539]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html
   [540]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-11/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html

  * igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source-clamping:
    - shard-rkl:          [SKIP][541] ([i915#14544] / [i915#15709]) -> [SKIP][542] ([i915#15709]) +2 other tests skip
   [541]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source-clamping.html
   [542]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping:
    - shard-rkl:          [SKIP][543] ([i915#15709]) -> [SKIP][544] ([i915#14544] / [i915#15709])
   [543]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-1/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping.html
   [544]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier-source-clamping:
    - shard-dg2:          [SKIP][545] ([i915#15689]) -> [SKIP][546] ([i915#15709]) +2 other tests skip
   [545]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier-source-clamping.html
   [546]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier-source-clamping.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          [SKIP][547] ([i915#15689] / [i915#9423]) -> [SKIP][548] ([i915#6953] / [i915#9423])
   [547]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size.html
   [548]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
    - shard-rkl:          [SKIP][549] ([i915#14544] / [i915#15329]) -> [SKIP][550] ([i915#15329]) +3 other tests skip
   [549]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html
   [550]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-dg2:          [SKIP][551] ([i915#15689]) -> [SKIP][552] ([i915#12343])
   [551]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_pm_backlight@brightness-with-dpms.html
   [552]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-dg2:          [SKIP][553] ([i915#15689]) -> [SKIP][554] ([i915#3828]) +1 other test skip
   [553]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_pm_dc@dc5-retention-flops.html
   [554]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_pm_dc@dc5-retention-flops.html
    - shard-rkl:          [SKIP][555] ([i915#14544] / [i915#3828]) -> [SKIP][556] ([i915#3828])
   [555]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_pm_dc@dc5-retention-flops.html
   [556]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg2:          [SKIP][557] ([i915#15689]) -> [SKIP][558] ([i915#9340])
   [557]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_pm_lpsp@kms-lpsp.html
   [558]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-11/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-rkl:          [SKIP][559] ([i915#14544] / [i915#8430]) -> [SKIP][560] ([i915#8430])
   [559]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_pm_lpsp@screens-disabled.html
   [560]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@cursor:
    - shard-dg2:          [SKIP][561] ([i915#15689]) -> [SKIP][562] ([i915#4077])
   [561]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_pm_rpm@cursor.html
   [562]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@kms_pm_rpm@cursor.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          [SKIP][563] ([i915#15073]) -> [SKIP][564] ([i915#14544] / [i915#15073])
   [563]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [564]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][565] ([i915#14544] / [i915#15073]) -> [SKIP][566] ([i915#15073])
   [565]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [566]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@package-g7:
    - shard-dg2:          [SKIP][567] -> [SKIP][568] ([i915#15403])
   [567]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_pm_rpm@package-g7.html
   [568]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@kms_pm_rpm@package-g7.html
    - shard-rkl:          [SKIP][569] ([i915#15403]) -> [SKIP][570] ([i915#14544] / [i915#15403])
   [569]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-1/igt@kms_pm_rpm@package-g7.html
   [570]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_pm_rpm@package-g7.html

  * igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:
    - shard-rkl:          [SKIP][571] ([i915#11520]) -> [SKIP][572] ([i915#11520] / [i915#14544]) +3 other tests skip
   [571]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-7/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html
   [572]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:
    - shard-rkl:          [SKIP][573] ([i915#11520] / [i915#14544]) -> [SKIP][574] ([i915#11520]) +2 other tests skip
   [573]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html
   [574]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
    - shard-dg2:          [SKIP][575] ([i915#15689]) -> [SKIP][576] ([i915#11520]) +10 other tests skip
   [575]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
   [576]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr@fbc-pr-suspend:
    - shard-dg2:          [SKIP][577] ([i915#15689]) -> [SKIP][578] ([i915#1072] / [i915#9732]) +17 other tests skip
   [577]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_psr@fbc-pr-suspend.html
   [578]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_psr@fbc-pr-suspend.html

  * igt@kms_psr@fbc-psr-primary-page-flip:
    - shard-rkl:          [SKIP][579] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][580] ([i915#1072] / [i915#9732]) +7 other tests skip
   [579]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_psr@fbc-psr-primary-page-flip.html
   [580]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@kms_psr@fbc-psr-primary-page-flip.html

  * igt@kms_psr@psr-sprite-plane-move:
    - shard-rkl:          [SKIP][581] ([i915#1072] / [i915#9732]) -> [SKIP][582] ([i915#1072] / [i915#14544] / [i915#9732]) +8 other tests skip
   [581]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-7/igt@kms_psr@psr-sprite-plane-move.html
   [582]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_psr@psr-sprite-plane-move.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-dg2:          [SKIP][583] ([i915#15689]) -> [ABORT][584] ([i915#15759])
   [583]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
   [584]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-dg2:          [SKIP][585] ([i915#15689]) -> [SKIP][586] ([i915#12755])
   [585]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_rotation_crc@primary-rotation-90.html
   [586]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@kms_scaling_modes@scaling-mode-center:
    - shard-rkl:          [SKIP][587] ([i915#14544] / [i915#3555]) -> [SKIP][588] ([i915#3555]) +2 other tests skip
   [587]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_scaling_modes@scaling-mode-center.html
   [588]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@kms_scaling_modes@scaling-mode-center.html

  * igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:
    - shard-glk:          [DMESG-FAIL][589] -> [ABORT][590] ([i915#13179])
   [589]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-glk9/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free.html
   [590]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-glk9/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free.html

  * igt@kms_vblank@ts-continuation-dpms-suspend:
    - shard-rkl:          [INCOMPLETE][591] ([i915#12276]) -> [ABORT][592] ([i915#15132])
   [591]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_vblank@ts-continuation-dpms-suspend.html
   [592]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@kms_vblank@ts-continuation-dpms-suspend.html

  * igt@kms_vrr@flip-basic:
    - shard-dg2:          [SKIP][593] ([i915#15689]) -> [SKIP][594] ([i915#15243] / [i915#3555]) +1 other test skip
   [593]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_vrr@flip-basic.html
   [594]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_vrr@flip-basic.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-dg2:          [SKIP][595] ([i915#15689]) -> [SKIP][596] ([i915#9906]) +1 other test skip
   [595]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@kms_vrr@seamless-rr-switch-drrs.html
   [596]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_vrr@seamless-rr-switch-drrs.html
    - shard-rkl:          [SKIP][597] ([i915#14544] / [i915#9906]) -> [SKIP][598] ([i915#9906])
   [597]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-drrs.html
   [598]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-rkl:          [SKIP][599] ([i915#9906]) -> [SKIP][600] ([i915#14544] / [i915#9906])
   [599]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-1/igt@kms_vrr@seamless-rr-switch-virtual.html
   [600]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-virtual.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-rkl:          [SKIP][601] ([i915#14544] / [i915#2433]) -> [SKIP][602] ([i915#2433])
   [601]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@perf@unprivileged-single-ctx-counters.html
   [602]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@perf@unprivileged-single-ctx-counters.html

  * igt@sriov_basic@bind-unbind-vf:
    - shard-dg2:          [SKIP][603] ([i915#15689]) -> [SKIP][604] ([i915#9917])
   [603]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@sriov_basic@bind-unbind-vf.html
   [604]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@sriov_basic@bind-unbind-vf.html
    - shard-rkl:          [SKIP][605] ([i915#14544] / [i915#9917]) -> [SKIP][606] ([i915#9917])
   [605]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-rkl-6/igt@sriov_basic@bind-unbind-vf.html
   [606]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@sriov_basic@bind-unbind-vf.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-dg2:          [SKIP][607] ([i915#15689] / [i915#2575] / [i915#4818]) -> [SKIP][608] ([i915#4818])
   [607]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@tools_test@sysfs_l3_parity.html
   [608]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@tools_test@sysfs_l3_parity.html

  
  [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10538
  [i915#10553]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553
  [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12177]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12177
  [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
  [i915#12358]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358
  [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
  [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
  [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
  [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
  [i915#12756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756
  [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
  [i915#13026]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13398]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398
  [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
  [i915#13790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
  [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
  [i915#14152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152
  [i915#14350]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14350
  [i915#14412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14412
  [i915#14419]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14600]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600
  [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
  [i915#14896]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14896
  [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
  [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
  [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
  [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
  [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
  [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
  [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
  [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
  [i915#15342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342
  [i915#15403]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15403
  [i915#15420]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15420
  [i915#15436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15436
  [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
  [i915#15459]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459
  [i915#15460]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460
  [i915#15481]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15481
  [i915#15500]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15500
  [i915#15520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15520
  [i915#15560]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15560
  [i915#15608]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15608
  [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
  [i915#15672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15672
  [i915#15689]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689
  [i915#15709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
  [i915#15725]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15725
  [i915#15733]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733
  [i915#15734]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15734
  [i915#15741]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15741
  [i915#15759]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759
  [i915#15778]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15778
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
  [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
  [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
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
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4818]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4818
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
  [i915#4884]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4884
  [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
  [i915#5107]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5107
  [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
  [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
  [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
  [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9878]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_18066 -> Patchwork_162370v1

  CI-20190529: 20190529
  CI_DRM_18066: 1ad945dbcb06504e1d9796cac1588c31b4ee62e9 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8775: 8775
  Patchwork_162370v1: 1ad945dbcb06504e1d9796cac1588c31b4ee62e9 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/index.html

--===============0814878330322290765==
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
<tr><td><b>Series:</b></td><td>i915: Fix NULL pointer dereference in intel_=
dmc_update_dc6_allowed_count()</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/162370/">https://patchwork.freedesktop.org/series/162370/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_162370v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_162370v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18066_full -&gt; Patchwork_162370v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_162370v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_162370v1_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
162370v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@dumb_buffer@create-clear:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg1-12/igt@dumb_buffer@create-clear.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/sh=
ard-dg1-14/igt@dumb_buffer@create-clear.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_nop@basic-parallel:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-8/igt@gem_exec_nop@basic-parallel.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/=
shard-dg2-4/igt@gem_exec_nop@basic-parallel.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_18066_full and Patchwork_1=
62370v1_full:</p>
<h3>New IGT tests (20)</h3>
<ul>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-a-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-b-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-c-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-d-dp-3:</p>
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
<p>igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-a-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-b-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-c-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-d-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-a-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-b-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-d-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-a-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-b-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-c-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-d-dp-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_162370v1_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@device_reset@cold-reset-b=
ound.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@gem_ccs@block-multicopy-co=
mpressed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@gem_ccs@suspend-resume.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@tile4-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-5/igt@gem_ccs@suspend-resume@tile4-compressed-compf=
mt0-smem-lmem0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_162370v1/shard-dg2-6/igt@gem_ccs@suspend-resume@tile=
4-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#=
13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@gem_ctx_sseu@invalid-args=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/280">i915#280</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@invalid-bonds:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@gem_exec_balancer@invalid=
-bonds.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4036">i915#4036</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@gem_exec_balancer@paralle=
l.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/4525">i915#4525</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@gem_exec_balancer@parallel=
-dmabuf-import-out-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@gem_exec_fence@submit.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu-active:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-13/igt@gem_exec_reloc@basic-writ=
e-cpu-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@gem_exec_suspend@basic-s0@=
lmem0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@gem_fenced_exec_thrash@no=
-spare-fences-busy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/4860">i915#4860</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@gem_lmem_swapping@massive=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@gem_lmem_swapping@paralle=
l-random-verify.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-glk8/igt@gem_lmem_swapping@random.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/4613">i915#4613</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@pf-nonblock:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@gem_mmap@pf-nonblock.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-copy-xy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg2-7/igt@gem_mmap_gtt@basic-small-c=
opy-xy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@flink-race:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@gem_mmap_gtt@flink-race.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4077">i915#4077</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-glk4/igt@gem_pread@exhaustion.html">=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-13/igt@gem_pxp@dmabuf-shared-pro=
tected-dst-is-context-refcounted.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +2 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@gem_pxp@hw-rejects-pxp-bu=
ffer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13398">i915#13398</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-context:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@gem_pxp@hw-rejects-pxp-co=
ntext.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13398">i915#13398</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@read-write:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@gem_readwrite@read-write.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@gem_tiled_pread_pwrite.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@gem_userptr_blits@create-d=
estroy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@gem_userptr_blits@invalid=
-mmap-offset-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-7/igt@gem_workarounds@suspend-resume-fd.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162=
370v1/shard-rkl-6/igt@gem_workarounds@suspend-resume-fd.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356=
">i915#13356</a>) +2 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledx_blits:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-glk10/igt@gen3_render_tiledx_blits.h=
tml">SKIP</a> +70 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@gen9_exec_parse@allowed-a=
ll.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@gen9_exec_parse@bb-oversi=
ze.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-jump:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@gen9_exec_parse@unaligned=
-jump.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@busy-hang@vcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@i915_drm_fdinfo@busy-hang@=
vcs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14073">i915#14073</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@most-busy-idle-check-all@rcs0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@i915_drm_fdinfo@most-busy=
-idle-check-all@rcs0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14073">i915#14073</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@virtual-busy-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg2-7/igt@i915_drm_fdinfo@virtual-bu=
sy-idle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/14118">i915#14118</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@fault-injection@__uc_init:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg2-11/igt@i915_module_load@fault-in=
jection@__uc_init.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/15481">i915#15481</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@fault-injection@intel_connector_register:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg2-11/igt@i915_module_load@fault-in=
jection@intel_connector_register.html">DMESG-WARN</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/15342">i915#15342</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@i915_pm_freq_api@freq-sus=
pend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@i915_pm_rc6_residency@rc6=
-fence.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/13790">i915#13790</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/2681">i915#2681</a>) +1 other test warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@i915_pm_rps@thresholds-pa=
rk.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-mtlp-8/igt@i915_power@sanity.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-mtl=
p-6/igt@i915_power@sanity.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/7984">i915#7984</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-mtlp-5/igt@i915_selftest@live.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-mt=
lp-7/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15560">i915#155=
60</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-mtlp-5/igt@i915_selftest@live@workarounds.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16237=
0v1/shard-mtlp-7/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i9=
15#12061</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-13/igt@kms_addfb_basic@addfb25-x=
-tiled-mismatch-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_atomic_transition@pla=
ne-all-modeset-transition-internal-panels.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#=
3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_big_fb@4-tiled-8bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 oth=
er test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other t=
est skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_big_fb@linear-max-hw-=
stride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_big_fb@x-tiled-64bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg1-14/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
162370v1/shard-dg1-19/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">ABORT</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1575=
9">i915#15759</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@kms_big_fb@yf-tiled-8bpp-r=
otate-90.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-h=
w-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_ccs@bad-aux-stride-4-=
tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +184 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-rkl-5/igt@kms_ccs@bad-rotation-90-y-=
tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095=
</a>) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-glk8/igt@kms_ccs@ccs-on-another-bo-4=
-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> +334 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-rkl-4/igt@kms_ccs@crc-primary-basic-=
y-tiled-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +41 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-dp-3 (NEW=
):</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg2-11/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-dg2-rc-ccs@pipe-c-dp-3.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +39 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i91=
5#6095</a>) +121 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_ccs@crc-sprite-planes=
-basic-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +34 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-=
1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_ccs@crc-sprite-planes=
-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +=
34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-=
1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">=
i915#10434</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/6095">i915#6095</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer=
-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095=
</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer=
-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-mode-timings:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_chamelium_edid@dp-mod=
e-timings.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-single:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_chamelium_frames@dp-c=
rc-single.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-frame-dump:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_chamelium_frames@hdmi=
-frame-dump.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@kms_chamelium_hpd@dp-hpd-e=
nable-disable-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-13/igt@kms_content_protection@at=
omic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_content_protection@at=
omic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0-suspend-resume:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_content_protection@dp=
-mst-type-0-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_content_protection@li=
c-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0-hdcp14:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_content_protection@li=
c-type-0-hdcp14.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@suspend-resume@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg2-11/igt@kms_content_protection@su=
spend-resume@pipe-a-dp-3.html">FAIL</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_cursor_crc@cursor-ons=
creen-256x85.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-256x85.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_162370v1/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-256x85.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/135=
66">i915#13566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-rkl-4/igt@kms_cursor_crc@cursor-onsc=
reen-256x85@pipe-a-hdmi-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x512:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_cursor_crc@cursor-ons=
creen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@kms_cursor_crc@cursor-slid=
ing-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-max-size:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_cursor_crc@cursor-sli=
ding-max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-13/igt@kms_cursor_crc@cursor-sus=
pend@pipe-d-hdmi-a-3.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/12358">i915#12358</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152">i915#14152</a>) +=
1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_cursor_legacy@modeset=
-atomic-cursor-hotspot.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@kms_dp_aux_dev.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/125=
7">i915#1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_dp_linktrain_fallback=
@dp-fallback.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13707">i915#13707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_dsc@dsc-with-bpc.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_dsc@dsc-with-formats.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-glk6/igt@kms_fbcon_fbt@fbc-suspend.h=
tml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9878">i915#9878</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_feature_discovery@dis=
play-4x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_feature_discovery@psr=
1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/658">i915#658</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-13/igt@kms_feature_discovery@psr=
1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_flip@2x-absolute-wf_v=
blank-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-glk10/igt@kms_flip@2x-flip-vs-suspen=
d-interruptible.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-glk10/igt@kms_flip@2x-flip-vs-suspen=
d-interruptible@ab-hdmi-a1-hdmi-a2.html">INCOMPLETE</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_flip@2x-modeset-vs-vb=
lank-race.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +3 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_flip@2x-plain-flip-in=
terruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +4 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-tglu-6/igt@kms_flip@plain-flip-fb-recreate-interruptibl=
e.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_162370v1/shard-tglu-8/igt@kms_flip@plain-flip-fb-recreate-interru=
ptible.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14600">i915#14600</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-downscaling.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +5 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-i=
ndfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_162370v1/shard-snb1/igt@kms_frontbuffer_tracking=
@fbc-2p-scndscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> +14 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbc-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +3 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> +10 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> +30 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-render:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbcpsr-rgb101010-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +9 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> +25 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_frontbuffer_tracking@=
psr-rgb565-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +5 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@kms_frontbuffer_tracking@p=
sr-rgb565-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +2 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_frontbuffer_tracking@=
psr-shrfb-scaledprimary.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +11 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-4k:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-mtlp-8/igt@kms_hdmi_inject@inject-4k.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/s=
hard-mtlp-1/igt@kms_hdmi_inject@inject-4k.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/15725">i915#15725</a>) +1=
 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@kms_hdr@invalid-hdr.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-1/igt@kms_hdr@static-toggle.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-=
rkl-4/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)<=
/li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_hdr@static-toggle.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_joiner@basic-ultra-jo=
iner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/15458">i915#15458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_joiner@invalid-modese=
t-force-ultra-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/15458">i915#15458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_pipe_crc_basic@suspend=
-read-crc.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/12756">i915#12756</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/13476">i915#13476</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_pipe_crc_basic@suspend=
-read-crc@pipe-a-hdmi-a-2.html">INCOMPLETE</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/13476">i915#13476</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_stress@stress-xrgb8888-untiled:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg1-18/igt@kms_pipe_stress@stress-xrgb8888-untiled.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_162370v1/shard-dg1-16/igt@kms_pipe_stress@stress-xrgb8888-untiled.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_stress@stress-xrgb8888-yftiled:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_pipe_stress@stress-xr=
gb8888-yftiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14712">i915#14712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_plane@pixel-format-4-=
tiled-mtl-mc-ccs-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-13/igt@kms_plane@pixel-format-4-=
tiled-mtl-rc-ccs-modifier-source-clamping.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +1=
 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_plane@pixel-format-4-=
tiled-mtl-rc-ccs-modifier-source-clamping.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-linear-modifier@pipe-b-plane-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-14/igt@kms_plane@pixel-format-li=
near-modifier@pipe-b-plane-3.html">ABORT</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/15759">i915#15759</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-x-tiled-modifier@pipe-b-plane-5:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_plane@pixel-format-x-t=
iled-modifier@pipe-b-plane-5.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/15608">i915#15608</a>) +1 other test s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier@pipe-a-plane-7:=
</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_plane@pixel-format-y-=
tiled-gen12-rc-ccs-modifier@pipe-a-plane-7.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15608">i915#15608</a>) +=
1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-glk11/igt@kms_plane@plane-panning-bo=
ttom-right-suspend.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/13026">i915#13026</a>) +1 other test incom=
plete</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_plane@plane-panning-bo=
ttom-right-suspend@pipe-b.html">INCOMPLETE</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/14412">i915#14412</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-glk8/igt@kms_plane_alpha_blend@alpha=
-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/10647">i915#10647</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/12177">i915#12177</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-glk8/igt@kms_plane_alpha_blend@alpha=
-transparent-fb@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/10647">i915#10647</a>) +1 other tes=
t fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@viewport@pipe-b-hdmi-a-3-size-64:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg2-7/igt@kms_plane_cursor@viewport@=
pipe-b-hdmi-a-3-size-64.html">ABORT</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/15759">i915#15759</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-13/igt@kms_plane_multiple@2x-til=
ing-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13958">i915#13958</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_plane_multiple@2x-til=
ing-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-x:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_plane_multiple@2x-til=
ing-x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
162370v1/shard-rkl-3/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953"=
>i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c:</=
p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-5-with-rotation@pipe-c.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +4 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:<=
/p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-75-with-rotation@pipe-a.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +4=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_pm_backlight@bad-brig=
htness.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_pm_backlight@basic-br=
ightness.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_pm_backlight@fade.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-13/igt@kms_pm_dc@dc3co-vpb-simul=
ation.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9685">i915#9685</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_pm_dc@dc3co-vpb-simul=
ation.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_pm_rpm@dpms-non-lpsp.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg1-14/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16237=
0v1/shard-dg1-19/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#150=
73</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-3/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/=
shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) =
+1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_pm_rpm@modeset-non-lp=
sp-stress-no-wait.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@pc8-residency:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg2-7/igt@kms_pm_rpm@pc8-residency.h=
tml">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-glk8/igt@kms_pm_rpm@system-suspend-m=
odeset.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/10553">i915#10553</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_prime@d3hot.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6=
524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@kms_psr2_sf@fbc-pr-overlay=
-plane-move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-overla=
y-plane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-glk11/igt@kms_psr2_sf@fbc-pr-overlay=
-primary-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-glk8/igt@kms_psr2_sf@pr-cursor-plane=
-move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/11520">i915#11520</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-glk10/igt@kms_psr2_sf@pr-overlay-pla=
ne-move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_psr2_sf@psr2-overlay-=
plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +5 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_psr2_sf@psr2-overlay-=
plane-move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +5 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-plane-onoff:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_psr@fbc-psr-cursor-pl=
ane-onoff.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9732">i915#9732</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-cursor-blt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_psr@fbc-psr2-cursor-b=
lt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-sprite-plane-onoff:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_psr@pr-sprite-plane-o=
noff.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9732">i915#9732</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@kms_psr@psr-suspend.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@exhaust-fences:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@kms_rotation_crc@exhaust-=
fences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4884">i915#4884</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-glk1/igt@kms_rotation_crc@multiplane=
-rotation-cropping-bottom.html">INCOMPLETE</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/15500">i915#15500</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-180:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-5/igt@kms_rotation_crc@primary-rotation-180.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_162370v1/shard-dg2-7/igt@kms_rotation_crc@primary-rotation-180.html">ABORT=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15=
759">i915#15759</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-13/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_setmode@clone-exclusi=
ve-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-1/igt@kms_setmode@invalid-clone=
-single-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-13/igt@kms_tiled_display@basic-t=
est-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@kms_tiled_display@basic-t=
est-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@kms_vblank@ts-continuation=
-dpms-suspend@pipe-c-hdmi-a-2.html">ABORT</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/15132">i915#15132</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vcs1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-6/igt@perf_pmu@busy-double-start@vcs1.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16237=
0v1/shard-dg2-3/igt@perf_pmu@busy-double-start@vcs1.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915#4349=
</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-glk11/igt@perf_pmu@module-unload.htm=
l">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/15778">i915#15778</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-check-all@rcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-mtlp-3/igt@perf_pmu@most-busy-check-all@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16=
2370v1/shard-mtlp-6/igt@perf_pmu@most-busy-check-all@rcs0.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15520">i9=
15#15520</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-read-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-rkl-2/igt@prime_vgem@fence-read-hang=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg1-18/igt@sriov_basic@enable-vfs-au=
toprobe-on.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-glk11/igt@sriov_basic@enable-vfs-bin=
d-unbind-each.html">SKIP</a> +91 other tests skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-tglu-4/igt@sriov_basic@enable-vfs-bi=
nd-unbind-each-numvfs-all.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/12910">i915#12910</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@core_getversion@all-cards:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@core_getversion@all-cards.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i91=
5#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_162370v1/shard-dg2-1/igt@core_getversion@all-cards.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@fbdev@unaligned-write:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@fbdev@unaligned-write.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582">i915#258=
2</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
162370v1/shard-dg2-1/igt@fbdev@unaligned-write.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@madvise:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg1-16/igt@gem_exec_create@madvise.html">ABORT</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759">i915=
#15759</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_162370v1/shard-dg1-13/igt@gem_exec_create@madvise.html">PASS</a> +3 ot=
her tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_gpgpu_fill@offset-16x16:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@gem_gpgpu_fill@offset-16x16.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i=
915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/2575">i915#2575</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gem_gpgpu_fill@offset-16x16.=
html">PASS</a> +89 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-4/igt@gem_lmem_swapping@parallel-random-verify-ccs@=
lmem0.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/15759">i915#15759</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-7/igt@gem_lmem_swapping@p=
arallel-random-verify-ccs@lmem0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-1/igt@gem_lmem_swapping@smem-oom.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15734">i91=
5#15734</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_162370v1/shard-dg2-6/igt@gem_lmem_swapping@smem-oom.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html">CRASH<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/549=
3">i915#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_162370v1/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@memory-info-purgeable:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@i915_drm_fdinfo@memory-info-purgeable.html">=
SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_162370v1/shard-dg2-1/igt@i915_drm_fdinfo@memory-info-purgeable.html">PASS=
</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_18066/shard-dg2-11/igt@i915_module_load@load.html">FAIL</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-4/igt=
@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_18066/shard-dg2-8/igt@i915_module_load@load.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/sh=
ard-dg2-6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@i915_module_load=
@load.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_18066/shard-dg2-7/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-1/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_18066/shard-dg2-7/igt@i915_module_load@load.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shar=
d-dg2-6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-1/igt@i915_module_load@lo=
ad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_18066/shard-dg2-11/igt@i915_module_load@load.html">FAIL</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-4/igt@i915_=
module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_18066/shard-dg2-5/igt@i915_module_load@load.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg=
2-8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-5/igt@i915_module_load@load.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
8066/shard-dg2-1/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@i915_modu=
le_load@load.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_18066/shard-dg2-6/igt@i915_module_load@load.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-3/=
igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_18066/shard-dg2-8/igt@i915_module_load@load.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066=
/shard-dg2-3/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-11/igt@i915_module_l=
oad@load.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_18066/shard-dg2-11/igt@i915_module_load@load.html">FAIL</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18066/shard-dg2-4/igt=
@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_18066/shard-dg2-7/igt@i915_module_load@load.html">PA=
SS</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/15741">i915#15741</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_162370v1/shard-dg2-4/igt@i915_module_load@load.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v=
1/shard-dg2-4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-11/igt@i915_m=
odule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@i915_module_load@load.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370=
v1/shard-dg2-1/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@i915_m=
odule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_162370v1/shard-dg2-4/igt@i915_module_load@load.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370=
v1/shard-dg2-6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-6/igt@i915_m=
odule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_162370v1/shard-dg2-7/igt@i915_module_load@load.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370=
v1/shard-dg2-11/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-7/igt@i915_=
module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_162370v1/shard-dg2-4/igt@i915_module_load@load.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16237=
0v1/shard-dg2-7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-8/igt@i915_=
module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_162370v1/shard-dg2-8/igt@i915_module_load@load.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16237=
0v1/shard-dg2-3/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-8/igt@i915_=
module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@i915_module_load@load.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16237=
0v1/shard-dg2-8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-3/igt@i915_=
module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_162370v1/shard-dg2-3/igt@i915_module_load@load.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16237=
0v1/shard-dg2-1/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@i915_=
module_load@load.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@engine-order:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-glk5/igt@i915_pm_rps@engine-order.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14896">i915#1=
4896</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_162370v1/shard-glk2/igt@i915_pm_rps@engine-order.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-glk8/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">=
i915#4817</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_162370v1/shard-glk1/igt@i915_suspend@sysfs-reader.html">PASS</a> +1=
 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-linear:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_async_flips@async-flip-with-page-flip-ev=
ents-linear.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/15689">i915#15689</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_async_flip=
s@async-flip-with-page-flip-events-linear.html">PASS</a> +131 other tests p=
ass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-180-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/15733">i915#15733</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-mtlp-7/igt=
@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-128x42.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/13566">i915#13566</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_162370v1/shard-rkl-1/igt@kms_cursor_crc@cursor-onscreen-12=
8x42.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html=
">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14033">i915#14033</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14350">i915#14350</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-snb7/igt@kms_flip@2x-=
flip-vs-suspend-interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-v=
ga1-hdmi-a1.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14033">i915#14033</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-snb7/igt@kms_flip@2x-=
flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-mtlp-1/igt@kms_force_connector_basic@prune-stale-modes.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/15672">i915#15672</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-mtlp-4/igt@kms_force_connector_basic=
@prune-stale-modes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-snb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-i=
ndfb-draw-render.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_162370v1/shard-snb4/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-cur-indfb-draw-render.html">PASS</a> +10 other tests pass</l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-4/igt@kms_plane@plane-panning-bottom-right-suspend@=
pipe-a.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14412">i915#14412</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_plane@pla=
ne-panning-bottom-right-suspend@pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_plane_scaling@plane-upscale-factor-0-25-=
with-modifiers.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/15689">i915#15689</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1=
1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers.html">PASS=
</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg1-19/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1507=
3">i915#15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_162370v1/shard-dg1-14/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-6/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#1=
5073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_162370v1/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> +2 other=
 tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg1-18/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/4423">i915#4423</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_162370v1/shard-dg1-12/igt@kms_pm_rpm@modeset-non-lpsp-st=
ress.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/15073">i915#15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_162370v1/shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-=
stress-no-wait.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-idle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-3/igt@kms_pm_rpm@system-suspend-idle.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14419">i915#14419</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_162370v1/shard-rkl-2/igt@kms_pm_rpm@system-suspend-idle.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_create:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-glk9/igt@kms_selftest@drm_framebuffer@drm_test_framebuf=
fer_create.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/13179">i915#13179</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-glk9/igt@kms_selftest@dr=
m_framebuffer@drm_test_framebuffer_create.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-=
a-hdmi-a-2.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/12276">i915#12276</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@kms_vblan=
k@ts-continuation-dpms-suspend@pipe-a-hdmi-a-2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-mtlp-5/igt@kms_vrr@negative-basic.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15420">i915#1=
5420</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_162370v1/shard-mtlp-7/igt@kms_vrr@negative-basic.html">PASS</a> +1 other=
 test pass</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-group-concurrent-oa-buffer-read:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-mtlp-6/igt@perf@gen12-group-concurrent-oa-buffer-read.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/10538">i915#10538</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_162370v1/shard-mtlp-2/igt@perf@gen12-group-concurren=
t-oa-buffer-read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-98@rcs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-tglu-3/igt@perf_pmu@busy-accuracy-98@rcs0.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349"=
>i915#4349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_162370v1/shard-tglu-10/igt@perf_pmu@busy-accuracy-98@rcs0.html">PA=
SS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-mtlp-3/igt@perf_pmu@busy-double-start@vcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349=
">i915#4349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_162370v1/shard-mtlp-6/igt@perf_pmu@busy-double-start@vcs0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vcs1:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg1-17/igt@perf_pmu@busy-double-start@vcs1.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349=
">i915#4349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_162370v1/shard-dg1-12/igt@perf_pmu@busy-double-start@vcs1.html">P=
ASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@api_intel_bb@blit-reloc-keep-cache.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
5689">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/2575">i915#2575</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@api_intel_bb@blit-rel=
oc-keep-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/8411">i915#8411</a>)</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-1/igt@api_intel_bb@blit-reloc-keep-cache.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/84=
11">i915#8411</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_162370v1/shard-rkl-6/igt@api_intel_bb@blit-reloc-keep-cache.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/8411">i915#8411</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@api_intel_bb@crc32.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/62=
30">i915#6230</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_162370v1/shard-rkl-1/igt@api_intel_bb@crc32.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230">i915#=
6230</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@gem_close_race@multigpu-basic-process.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/15689">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/2575">i915#2575</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gem_close_race@mul=
tigpu-basic-process.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-sync:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@gem_exec_balancer@bonded-sync.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689"=
>i915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/2575">i915#2575</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gem_exec_balancer@bonded-s=
ync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/4771">i915#4771</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@noheartbeat:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@gem_exec_balancer@noheartbeat.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689"=
>i915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/2575">i915#2575</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gem_exec_balancer@noheartb=
eat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8555">i915#8555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4525">i915#4525</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@gem_exec_bal=
ancer@parallel-keep-submit-fence.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) +1 other test=
 skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-uc-rw-default:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@gem_exec_flush@basic-uc-rw-default.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
5689">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/2575">i915#2575</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gem_exec_flush@basic-=
uc-rw-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@rsvd2-dirt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@gem_exec_params@rsvd2-dirt.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i9=
15#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/2575">i915#2575</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gem_exec_params@rsvd2-dirt.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/5107">i915#5107</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-read-active:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-2/igt@gem_exec_reloc@basic-cpu-read-active.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
3281">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_162370v1/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-read-active=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@gem_exec_reloc@basic-gtt-read.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689"=
>i915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/2575">i915#2575</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gem_exec_reloc@basic-gtt-r=
ead.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3281">i915#3281</a>) +12 other tests skip</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-read.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3281">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-re=
ad.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@gem_exec_suspend@basic-s0.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i91=
5#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/2575">i915#2575</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@gem_exec_suspend@basic-s0.html=
">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/13356">i915#13356</a>)</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-1/igt@gem_exec_suspend@basic-s0.html">ABORT</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131">i91=
5#15131</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_162370v1/shard-rkl-6/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1335=
6">i915#13356</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@gem_fence_thrash@bo-copy.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i915=
#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/2575">i915#2575</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gem_fence_thrash@bo-copy.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/4860">i915#4860</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-multi.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/4613">i915#4613</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@gem_lmem_swapping@he=
avy-verify-multi.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-7/igt@gem_lmem_swapping@parallel-multi.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613=
">i915#4613</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_162370v1/shard-rkl-6/igt@gem_lmem_swapping@parallel-multi.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@gem_media_vme.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i915#15689</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">=
i915#2575</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_162370v1/shard-dg2-1/igt@gem_media_vme.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284">i915#284</a>)</=
li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@copy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@gem_mmap_wc@copy.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i915#15689</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/257=
5">i915#2575</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_162370v1/shard-dg2-1/igt@gem_mmap_wc@copy.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#408=
3</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-snoop:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@gem_partial_pwrite_pread@write-snoop.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3282">i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@gem_partial_pwrite_p=
read@write-snoop.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-uncached:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-1/igt@gem_partial_pwrite_pread@write-uncached.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3282">i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_162370v1/shard-rkl-6/igt@gem_partial_pwrite_pread@write-un=
cached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@gem_pxp@display-protected-crc.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689"=
>i915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/2575">i915#2575</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gem_pxp@display-protected-=
crc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/4270">i915#4270</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@write-bad-handle:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@gem_readwrite@write-bad-handle.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689=
">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/2575">i915#2575</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_162370v1/shard-dg2-11/igt@gem_readwrite@write-bad-=
handle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3282">i915#3282</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@gem_render_copy@y-tiled-to-vebox-y-tiled.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/15689">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/2575">i915#2575</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@g=
em_render_copy@y-tiled-to-vebox-y-tiled.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#84=
28</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/15689">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/2575">i915#2575</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gem_set_tiling_vs=
_blt@tiled-to-untiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/4079">i915#4079</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@gem_softpin@evict-snoop.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#1=
4544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_162370v1/shard-rkl-3/igt@gem_softpin@evict-snoop.html">SKIP</a> +7 other=
 tests skip</li>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@gem_softpin@evict-snoop.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i915#=
15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/2575">i915#2575</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gem_softpin@evict-snoop.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
4885">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-overl=
ap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/15689">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/2575">i915#2575</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@gem_userp=
tr_blits@map-fixed-invalidate-overlap.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880">i915#4880=
</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@gem_userptr_blits@readonly-pwrite-unsync.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/15689">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/2575">i915#2575</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gem_userptr_bli=
ts@readonly-pwrite-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@gem_userptr_blits@readonly-pwrite-unsync.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@gem_userptr_blit=
s@readonly-pwrite-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@gen9_exec_parse@batch-without-end.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15=
689">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/2575">i915#2575</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@gen9_exec_parse@batch-=
without-end.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/2856">i915#2856</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-secure:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-7/igt@gen9_exec_parse@bb-secure.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#=
2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_162370v1/shard-rkl-6/igt@gen9_exec_parse@bb-secure.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#1=
4544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@gen9_exec_parse@valid-registers.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/2527">i915#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@gen9_exec_parse@valid-reg=
isters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/2527">i915#2527</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@busy-hang:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@i915_drm_fdinfo@busy-hang.html">SKIP</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/s=
hard-dg2-5/igt@i915_drm_fdinfo@busy-hang.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073">i915#14073</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@fault-injection:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@i915_module_load@fault-injection.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/156=
89">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/2575">i915#2575</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_162370v1/shard-dg2-11/igt@i915_module_load@fault=
-injection.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/15342">i915#15342</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/15481">i915#15481</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@i915_suspend@fence-restore-untiled.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
5689">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/2575">i915#2575</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@i915_suspend@fence-re=
store-untiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/4077">i915#4077</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_addfb_basic@framebuffer-vs-set-tiling.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/15689">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_162370v1/shard-dg2-11/igt@kms_addfb_basic@framebuffer=
-vs-set-tiling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/5286">i915#5286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_big_fb@4-tiled-64bp=
p-rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-7/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286=
">i915#5286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_162370v1/shard-rkl-6/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-1/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/363=
8">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_162370v1/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-1/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-=
180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3828">i915#3828</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_big_fb@linear-=
max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#382=
8</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
15689">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/5190">i915#5190</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_big_fb@yf-tiled-=
32bpp-rotate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +6 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_big_fb@yf-tiled-addfb-size-overflow.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/15689">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-11/igt@kms_big_fb@yf-t=
iled-addfb-size-overflow.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/15689">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_162370v1/shard-dg2-11/igt@kms_ccs@bad-aux-stride-4=
-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +8 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pi=
pe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_ccs@bad-ro=
tation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">=
i915#6095</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/15689">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_ccs@crc-primary-basic-4-=
tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12313">i915#12313</a>) +3 other tests skip</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/12313">i915#12313</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_ccs@crc-p=
rimary-basic-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl=
-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/15689">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@kms_ccs@crc-primar=
y-rotation-180-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#104=
34</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-c=
cs-cc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/15689">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_ccs@crc-primary-=
suspend-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-2/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_ccs@mis=
sing-ccs-buffer-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6095">i915#6095</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pi=
pe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/ig=
t@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-2.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">=
i915#6095</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pi=
pe-c-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v=
1/shard-rkl-1/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-=
2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/6095">i915#6095</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-max:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_chamelium_color@ctm-max.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i=
915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_162370v1/shard-dg2-1/igt@kms_chamelium_color@ctm-max.html">SKIP</a>=
 +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-cmp-planar-formats:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_chamelium_frames@hdmi-cmp-planar-formats=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/15689">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_chamelium_frames@hdmi=
-cmp-planar-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +7 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-7/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_chameliu=
m_hpd@hdmi-hpd-with-enabled-mode.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/78=
28">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@k=
ms_chamelium_hpd@vga-hpd-for-each-pipe.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7=
828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_color@deep-color.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i915#156=
89</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_162370v1/shard-dg2-1/igt@kms_color@deep-color.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555=
">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-7/igt@kms_content_protection@atomic-dpms.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/69=
44">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_conten=
t_protection@atomic-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7=
118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-hdcp14:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_content_protection@atomic-hdcp14.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/15689">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_content_protection@atomic-hdc=
p14.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0-hdcp14:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-1/igt@kms_content_protection@dp-mst-lic-type-0-hdcp=
14.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/15330">i915#15330</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_content_protection@=
dp-mst-lic-type-0-hdcp14.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_content_protection@dp-mst-lic-type-0-hdc=
p14.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15689">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@kms_content_protection=
@dp-mst-lic-type-0-hdcp14.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_content_protection@lic-type-1.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15=
689">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_162370v1/shard-dg2-1/igt@kms_content_protection@lic-type-1.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/9424">i915#9424</a>)</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_content_protection@lic-type-1.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_conte=
nt_protection@lic-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_content_protection@suspend-resume.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/15689">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_162370v1/shard-dg2-11/igt@kms_content_protection@suspend-=
resume.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_cursor_crc@cursor-rapid-movement-32x32.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/15689">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@kms_cursor_crc@cursor-rapid=
-movement-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/3555">i915#3555</a>) +4 other tests skip</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-32x32.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-mo=
vement-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_cursor_crc@cursor-rapid-movement-512x170=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/15689">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_cursor_crc@cursor-rap=
id-movement-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x170.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/13049">i915#13049</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_cursor_crc@cu=
rsor-sliding-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-1/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.ht=
ml">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_162370v1/shard-rkl-6/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-s=
ize.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15689">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_cursor_legacy@curs=
orb-vs-flipa-varying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +3 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-7/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i=
915#9723</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_162370v1/shard-rkl-6/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3804">i915#3804</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_dither=
@fb-8bpc-vs-panel-6bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-=
a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3804">i915#3804</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_dith=
er@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/156=
89">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_162370v1/shard-dg2-1/igt@kms_draw_crc@draw-method-mmap-wc.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/8812">i915#8812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/355=
5">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3840">i915#3840</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@kms_dsc@dsc-basic.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i9=
15#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_162370v1/shard-dg2-5/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i9=
15#3840</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/9688">i915#9688</a>)</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-1/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915=
#3840</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_162370v1/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915=
#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_feature_discovery@dp-mst.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">=
i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_162370v1/shard-dg2-1/igt@kms_feature_discovery@dp-mst.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337=
">i915#9337</a>)</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_feature_discovery@dp-mst.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i=
915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/9337">i915#9337</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_feature_discovery@dp-mst=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9337">i915#9337</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_feature_discovery@psr2.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i9=
15#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_162370v1/shard-dg2-1/igt@kms_feature_discovery@psr2.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i91=
5#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/9934">i915#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_flip@2x-flip-vs-absolute-wf_vb=
lank.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_flip@2x-flip-vs-panning.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i=
915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_162370v1/shard-dg2-1/igt@kms_flip@2x-flip-vs-panning.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">=
i915#9934</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_flip@2x-plain-flip.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14=
544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/9934">i915#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_flip@2x-plain-flip.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/993=
4">i915#9934</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_flip@flip-vs-fences-interruptible.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/15689">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_flip@flip-vs-fences-interrup=
tible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-glk1/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">=
i915#12745</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4839">i915#4839</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/6113">i915#6113</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-glk4/igt@kms_flip@flip-=
vs-suspend.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-glk1/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html">INCOM=
PLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/12745">i915#12745</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/6113">i915#6113</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-glk4/igt@kms_flip@flip-vs-s=
uspend@a-hdmi-a1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/12745">i915#12745</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bp=
p-ytileccs-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/15689">i915#15689</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard=
-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscali=
ng.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/15643">i915#15643</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp=
-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1=
/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rccc=
s-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/15643">i915#15643</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bp=
p-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/15689">i915#15689</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-5/igt@=
kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/15643">i915#15643</a>) +3 other tests skip</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp=
-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@k=
ms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15643">i915#15643</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-s=
pr-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#345=
8</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
162370v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-in=
dfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-c=
ur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_f=
rontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/1825">i915#1825</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-=
cur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/15689">i915#15689</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_frontbu=
ffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>=
) +26 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-s=
pr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-=
1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/1825">i915#1825</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/15689">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcp=
sr-tiling-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/10055">i915#10055</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/15689">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_frontbuffer_tracking@pipe-fb=
c-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9766">i915#9766</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pr=
i-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/15689">i915#15689</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-11/igt@kms_fron=
tbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15=
102</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt:</=
p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri=
-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard=
-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gt=
t.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15102">i915#15102</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pr=
i-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/15689">i915#15689</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_f=
rontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-wc.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104">=
i915#15104</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-=
indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg=
2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/10433">i915#10433</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +5 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur=
-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/15689">i915#15689</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_frontbuffe=
r_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i91=
5#3458</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indf=
b-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt=
@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i=
915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/3023">i915#3023</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri=
-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/15689">i915#15689</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_f=
rontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i=
915#8708</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-r=
ender.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-=
rkl-3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102"=
>i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3023">i915#3023</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_hdr@bpc-switch-suspend.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1543=
6">i915#15436</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_162370v1/shard-rkl-3/igt@kms_hdr@bpc-switch-suspend.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/355=
5">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-mtlp-1/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187">i9=
15#1187</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/12713">i915#12713</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_162370v1/shard-mtlp-4/igt@kms_hdr@brightness-with-hdr=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/12713">i915#12713</a>)</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-3/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187">i91=
5#1187</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/12713">i915#12713</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_162370v1/shard-rkl-5/igt@kms_hdr@brightness-with-hdr.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_joiner@basic-big-joiner.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i=
915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_162370v1/shard-dg2-1/igt@kms_joiner@basic-big-joiner.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460"=
>i915#15460</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_joiner@basic-force-big-joiner.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/15459">i915#15459</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@kms_joiner@basic-forc=
e-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/15459">i915#15459</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_multipipe_modeset@basic-max-pipe-crc-che=
ck.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/15689">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_multipipe_modeset@b=
asic-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/4816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_panel_fitting@atomic-fastset.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/156=
89">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_162370v1/shard-dg2-5/igt@kms_panel_fitting@atomic-fastset.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/6301">i915#6301</a>) +1 other test skip</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-1/igt@kms_panel_fitting@atomic-fastset.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301=
">i915#6301</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_162370v1/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#=
14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/6301">i915#6301</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_panel_fitting@legacy.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lan=
es.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/15689">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/2575">i915#2575</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-11/igt@kms_pipe=
_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html">SKIP</a> +2 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source-clampin=
g:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-=
modifier-source-clamping.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/s=
hard-rkl-1/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source=
-clamping.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15709">i915#15709</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-1/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-mod=
ifier-source-clamping.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_=
plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier-source-clamping=
:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-=
modifier-source-clamping.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/15689">i915#15689</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@k=
ms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier-source-clamping.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/15709">i915#15709</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/15689">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9423">i915#9423</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_plane_scaling@i=
ntel-max-src-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/6953">i915#6953</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-ro=
tation@pipe-a.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3=
/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/153=
29">i915#15329</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_pm_backlight@brightness-with-dpms.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/15689">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_pm_backlight@brightness-with=
-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/12343">i915#12343</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_pm_dc@dc5-retention-flops.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689"=
>i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_162370v1/shard-dg2-1/igt@kms_pm_dc@dc5-retention-flops.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/38=
28">i915#3828</a>) +1 other test skip</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_pm_dc@dc5-retention-flops.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3828">i915#3828</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_pm_dc@dc5-retention-flo=
ps.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i915#156=
89</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_162370v1/shard-dg2-11/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i=
915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/8430">i915#8430</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@kms_pm_lpsp@screens-disabled=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@cursor:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_pm_rpm@cursor.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i915#15689<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16=
2370v1/shard-dg2-5/igt@kms_pm_rpm@cursor.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073"=
>i915#15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_162370v1/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_pm_rpm@modes=
et-lpsp-stress-no-wait.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@package-g7:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_pm_rpm@package-g7.html">SKIP</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard=
-dg2-5/igt@kms_pm_rpm@package-g7.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/15403">i915#15403</a>)</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-1/igt@kms_pm_rpm@package-g7.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15403">i915#154=
03</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_162370v1/shard-rkl-6/igt@kms_pm_rpm@package-g7.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/154=
03">i915#15403</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-7/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/11520">i915#11520</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-plane-move=
-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/11520">i915#11520</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +3 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-con=
tinuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/11520">i915#11520</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt=
@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i91=
5#11520</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg=
-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/15689">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_psr2_sf@psr2-ove=
rlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +10 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_psr@fbc-pr-suspend.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i915#1=
5689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_162370v1/shard-dg2-1/igt@kms_psr@fbc-pr-suspend.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
732">i915#9732</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-page-flip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_psr@fbc-psr-primary-page-flip.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/107=
2">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@kms_psr@f=
bc-psr-primary-page-flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +7 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-move:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-7/igt@kms_psr@psr-sprite-plane-move.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i=
915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_162370v1/shard-rkl-6/igt@kms_psr@psr-sprite-plane-move=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +8 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/15689">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_rotation_crc@primary-=
4-tiled-reflect-x-0.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/15759">i915#15759</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-90:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_rotation_crc@primary-rotation-90.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/15689">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_162370v1/shard-dg2-1/igt@kms_rotation_crc@primary-rotation=
-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/12755">i915#12755</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-center:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_scaling_modes@scaling-mode-center.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@kms_scaling_modes@s=
caling-mode-center.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-glk9/igt@kms_selftest@drm_framebuffer@drm_test_framebuf=
fer_free.html">DMESG-FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_162370v1/shard-glk9/igt@kms_selftest@drm_framebuffer=
@drm_test_framebuffer_free.html">ABORT</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/13179">i915#13179</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_vblank@ts-continuation-dpms-suspend.html"=
>INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/12276">i915#12276</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_162370v1/shard-rkl-1/igt@kms_vblank@ts-continuatio=
n-dpms-suspend.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/15132">i915#15132</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_vrr@flip-basic.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i915#156=
89</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_162370v1/shard-dg2-1/igt@kms_vrr@flip-basic.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243">i915#15243</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">=
i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1568=
9">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_162370v1/shard-dg2-1/igt@kms_vrr@seamless-rr-switch-drrs.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/9906">i915#9906</a>) +1 other test skip</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9906">i915#9906</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@kms_vrr@seamless-rr-switc=
h-drrs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-1/igt@kms_vrr@seamless-rr-switch-virtual.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/99=
06">i915#9906</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_162370v1/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-virtual.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@perf@unprivileged-single-ctx-counters.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/2433">i915#2433</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@perf@unprivileged-s=
ingle-ctx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/2433">i915#2433</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@sriov_basic@bind-unbind-vf.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i9=
15#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_162370v1/shard-dg2-1/igt@sriov_basic@bind-unbind-vf.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i9=
15#9917</a>)</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-rkl-6/igt@sriov_basic@bind-unbind-vf.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/9917">i915#9917</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_162370v1/shard-rkl-3/igt@sriov_basic@bind-unbind-vf.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18066/shard-dg2-11/igt@tools_test@sysfs_l3_parity.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i9=
15#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/2575">i915#2575</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4818">i915#4818</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_162370v1/shard-dg2-1/igt@tools_test@sysf=
s_l3_parity.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/4818">i915#4818</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18066 -&gt; Patchwork_162370v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18066: 1ad945dbcb06504e1d9796cac1588c31b4ee62e9 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_8775: 8775<br />
  Patchwork_162370v1: 1ad945dbcb06504e1d9796cac1588c31b4ee62e9 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============0814878330322290765==--
