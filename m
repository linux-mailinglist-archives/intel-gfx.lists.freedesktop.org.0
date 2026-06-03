Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LqDJFmtWIGq81QAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 18:29:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 426E9639BB5
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 18:29:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=none
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C05CA1120B0;
	Wed,  3 Jun 2026 16:29:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6beec6c84f66 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BE241120B0;
 Wed,  3 Jun 2026 16:29:27 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3961051006472968960=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EFull=3A_success_for_match_GEN6=5F/PCODE=5FDA?=
 =?utf-8?q?TA_naming_with_spec?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Micha=C5=82_Grzelak?= <michal.grzelak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 03 Jun 2026 16:29:27 -0000
Message-ID: <178050416742.40081.4135753061857280411@6beec6c84f66>
X-Patchwork-Hint: ignore
References: <20260602223640.1375933-1-michal.grzelak@intel.com>
In-Reply-To: <20260602223640.1375933-1-michal.grzelak@intel.com>
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
X-Rspamd-Action: add header
X-Spamd-Result: default: False [8.89 / 15.00];
	URL_MULTIPLE_AT_SIGNS(9.00)[3];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[emeril.freedesktop.org];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	HAS_REPLYTO(0.00)[intel-gfx@lists.freedesktop.org];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 426E9639BB5
X-Spam: Yes

--===============3961051006472968960==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: match GEN6_/PCODE_DATA naming with spec
URL   : https://patchwork.freedesktop.org/series/167783/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_18611_full -> Patchwork_167783v1_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_167783v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@cold-reset-bound:
    - shard-dg2:          NOTRUN -> [SKIP][1] ([i915#11078])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@device_reset@cold-reset-bound.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-rkl:          NOTRUN -> [SKIP][2] ([i915#11078]) +1 other test skip
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@dumb_buffer@create-clear:
    - shard-glk11:        NOTRUN -> [FAIL][3] ([i915#16307])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-glk11/igt@dumb_buffer@create-clear.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-rkl:          NOTRUN -> [SKIP][4] ([i915#3555] / [i915#9323])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-mtlp:         NOTRUN -> [SKIP][5] ([i915#13008])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][6] ([i915#13356] / [i915#16348])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-tglu:         NOTRUN -> [SKIP][7] ([i915#6335])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@gem_create@create-ext-cpu-access-big.html
    - shard-dg2:          [PASS][8] -> [FAIL][9] ([i915#15454])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-1/igt@gem_create@create-ext-cpu-access-big.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-7/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-rkl:          NOTRUN -> [SKIP][10] ([i915#280])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-tglu-1:       NOTRUN -> [SKIP][11] ([i915#4525])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_flush@basic-wb-ro-default:
    - shard-dg2:          NOTRUN -> [SKIP][12] ([i915#3539] / [i915#4852])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@gem_exec_flush@basic-wb-ro-default.html

  * igt@gem_exec_gttfill@all-engines:
    - shard-mtlp:         NOTRUN -> [SKIP][13] ([i915#16090])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-6/igt@gem_exec_gttfill@all-engines.html

  * igt@gem_exec_reloc@basic-cpu-noreloc:
    - shard-dg2:          NOTRUN -> [SKIP][14] ([i915#3281]) +5 other tests skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@gem_exec_reloc@basic-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-softpin:
    - shard-mtlp:         NOTRUN -> [SKIP][15] ([i915#3281])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@gem_exec_reloc@basic-softpin.html

  * igt@gem_exec_reloc@basic-write-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][16] ([i915#3281]) +1 other test skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@gem_exec_reloc@basic-write-cpu.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][17] ([i915#4860]) +1 other test skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-rkl:          NOTRUN -> [SKIP][18] ([i915#4613]) +1 other test skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-glk:          NOTRUN -> [SKIP][19] ([i915#4613])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-glk3/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-tglu:         NOTRUN -> [SKIP][20] ([i915#4613])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-tglu-1:       NOTRUN -> [SKIP][21] ([i915#4613]) +1 other test skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_media_vme:
    - shard-tglu:         NOTRUN -> [SKIP][22] ([i915#284])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@gem_media_vme.html

  * igt@gem_mmap_gtt@bad-object:
    - shard-mtlp:         NOTRUN -> [SKIP][23] ([i915#4077]) +2 other tests skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@gem_mmap_gtt@bad-object.html

  * igt@gem_mmap_gtt@zero-extend:
    - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#4077]) +7 other tests skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@gem_mmap_gtt@zero-extend.html

  * igt@gem_mmap_offset@clear-via-pagefault:
    - shard-mtlp:         NOTRUN -> [INCOMPLETE][25] ([i915#16202]) +1 other test incomplete
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-6/igt@gem_mmap_offset@clear-via-pagefault.html

  * igt@gem_mmap_wc@write-gtt-read-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][26] ([i915#4083]) +1 other test skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@gem_mmap_wc@write-gtt-read-wc.html

  * igt@gem_mmap_wc@write-read:
    - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#4083])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@gem_mmap_wc@write-read.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#3282]) +1 other test skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-10/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_partial_pwrite_pread@write:
    - shard-rkl:          NOTRUN -> [SKIP][29] ([i915#3282])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@gem_partial_pwrite_pread@write.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-mtlp:         NOTRUN -> [SKIP][30] ([i915#3282]) +1 other test skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-6/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_pread@exhaustion:
    - shard-glk11:        NOTRUN -> [WARN][31] ([i915#2658])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-glk11/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-glk:          NOTRUN -> [WARN][32] ([i915#14702] / [i915#2658])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-glk5/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#4270])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#5190] / [i915#8428]) +2 other tests skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs.html

  * igt@gem_tiled_pread_pwrite:
    - shard-mtlp:         NOTRUN -> [SKIP][35] ([i915#4079])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-6/igt@gem_tiled_pread_pwrite.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][36] ([i915#3297]) +1 other test skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#3297] / [i915#4880])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][38] ([i915#3297]) +1 other test skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#3297])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-rkl:          [PASS][40] -> [INCOMPLETE][41] ([i915#13356])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-4/igt@gem_workarounds@suspend-resume-fd.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen7_exec_parse@basic-allowed:
    - shard-mtlp:         NOTRUN -> [SKIP][42] +4 other tests skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@gen7_exec_parse@basic-allowed.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#2856])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-rkl:          NOTRUN -> [SKIP][44] ([i915#2527])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-tglu:         NOTRUN -> [SKIP][45] ([i915#2527] / [i915#2856])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@gen9_exec_parse@bb-chained.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-tglu-1:       NOTRUN -> [SKIP][46] ([i915#2527] / [i915#2856])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-mtlp:         NOTRUN -> [SKIP][47] ([i915#2856])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_drm_fdinfo@virtual-busy-hang:
    - shard-mtlp:         NOTRUN -> [SKIP][48] ([i915#14118])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@i915_drm_fdinfo@virtual-busy-hang.html

  * igt@i915_module_load@fault-injection@intel_connector_register:
    - shard-glk:          NOTRUN -> [ABORT][49] ([i915#15342]) +1 other test abort
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-glk8/igt@i915_module_load@fault-injection@intel_connector_register.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-glk:          [PASS][50] -> [INCOMPLETE][51] ([i915#13356])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-glk9/igt@i915_pm_rpm@system-suspend.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-glk9/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          NOTRUN -> [SKIP][52] ([i915#5723])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-4/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-rkl:          [PASS][53] -> [INCOMPLETE][54] ([i915#4817])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-2/igt@i915_suspend@fence-restore-untiled.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-3/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_addfb_basic@clobberred-modifier:
    - shard-mtlp:         NOTRUN -> [SKIP][55] ([i915#4212])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_addfb_basic@clobberred-modifier.html

  * igt@kms_atomic@atomic-plane-damage:
    - shard-glk10:        NOTRUN -> [SKIP][56] +75 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-glk10/igt@kms_atomic@atomic-plane-damage.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#1769] / [i915#3555])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
    - shard-tglu-1:       NOTRUN -> [SKIP][58] ([i915#5286])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [PASS][59] -> [FAIL][60] ([i915#15733] / [i915#5138])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][61] ([i915#5286]) +1 other test skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_big_fb@4-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-tglu:         NOTRUN -> [SKIP][62] ([i915#5286])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@linear-16bpp-rotate-0:
    - shard-glk11:        NOTRUN -> [FAIL][63] ([i915#16308])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-glk11/igt@kms_big_fb@linear-16bpp-rotate-0.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][64] ([i915#3638]) +2 other tests skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0:
    - shard-mtlp:         NOTRUN -> [FAIL][65] ([i915#16308])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglu-1:       NOTRUN -> [SKIP][66] ([i915#3828])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][67] ([i915#4538] / [i915#5190]) +3 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][68] ([i915#6095]) +183 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg1-18/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][69] ([i915#6095]) +14 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][70] ([i915#6095]) +72 other tests skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#12313])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][72] ([i915#6095]) +19 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-c-hdmi-a-1:
    - shard-glk11:        NOTRUN -> [SKIP][73] +95 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-glk11/igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#6095]) +19 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-b-edp-1.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][75] ([i915#12805])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-6/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc:
    - shard-dg2:          NOTRUN -> [ABORT][76] ([i915#15132]) +1 other test abort
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-10/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#14544] / [i915#6095]) +6 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#6095]) +9 other tests skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][79] ([i915#14098] / [i915#14544] / [i915#6095]) +3 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#10307] / [i915#6095]) +62 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][81] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#14098] / [i915#6095]) +42 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-4/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#12313])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#3742])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_chamelium_audio@dp-audio:
    - shard-tglu:         NOTRUN -> [SKIP][85] ([i915#11151] / [i915#7828]) +2 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_chamelium_audio@dp-audio.html

  * igt@kms_chamelium_color@gamma:
    - shard-dg2:          NOTRUN -> [SKIP][86] +5 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@kms_chamelium_color@gamma.html

  * igt@kms_chamelium_edid@dp-mode-timings:
    - shard-dg2:          NOTRUN -> [SKIP][87] ([i915#11151] / [i915#7828]) +1 other test skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_chamelium_edid@dp-mode-timings.html

  * igt@kms_chamelium_edid@vga-edid-read:
    - shard-mtlp:         NOTRUN -> [SKIP][88] ([i915#11151] / [i915#7828])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_chamelium_edid@vga-edid-read.html

  * igt@kms_chamelium_hpd@dp-hpd-storm:
    - shard-tglu-1:       NOTRUN -> [SKIP][89] ([i915#11151] / [i915#7828]) +2 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-storm.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#11151] / [i915#7828]) +3 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#15865])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-lic-type-0-hdcp14:
    - shard-tglu:         NOTRUN -> [SKIP][92] ([i915#15330])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-mtlp:         NOTRUN -> [SKIP][93] ([i915#15330] / [i915#3299])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@mei-interface:
    - shard-tglu-1:       NOTRUN -> [SKIP][94] ([i915#15865])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@uevent-hdcp14:
    - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#15865])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_content_protection@uevent-hdcp14.html

  * igt@kms_cursor_crc@cursor-random-32x10:
    - shard-mtlp:         NOTRUN -> [SKIP][96] ([i915#3555] / [i915#8814])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-random-32x10.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#13049]) +1 other test skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-mtlp:         NOTRUN -> [SKIP][98] ([i915#13049])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-256x85:
    - shard-rkl:          NOTRUN -> [FAIL][99] ([i915#13566]) +1 other test fail
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-256x85.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-tglu:         NOTRUN -> [SKIP][100] ([i915#3555]) +1 other test skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-mtlp:         NOTRUN -> [SKIP][101] ([i915#9809])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#13046] / [i915#5354]) +1 other test skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#4103]) +1 other test skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
    - shard-rkl:          NOTRUN -> [SKIP][104] ([i915#4103])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-4/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#3555]) +2 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_dp_link_training@non-uhbr-mst:
    - shard-rkl:          NOTRUN -> [SKIP][106] ([i915#13749])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@kms_dp_link_training@non-uhbr-mst.html

  * igt@kms_dp_link_training@uhbr-mst:
    - shard-tglu:         NOTRUN -> [SKIP][107] ([i915#13748])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_dp_link_training@uhbr-mst.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-mtlp:         NOTRUN -> [SKIP][108] ([i915#13707])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_dsc@dsc-basic:
    - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#3555] / [i915#3840])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-tglu:         NOTRUN -> [SKIP][110] ([i915#3555] / [i915#3840])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#3955])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.html
    - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#3469])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@display-2x:
    - shard-rkl:          NOTRUN -> [SKIP][113] ([i915#16081])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_feature_discovery@display-2x.html

  * igt@kms_feature_discovery@display-3x:
    - shard-mtlp:         NOTRUN -> [SKIP][114] ([i915#16081])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#9337])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-tglu:         NOTRUN -> [SKIP][116] ([i915#3637] / [i915#9934]) +1 other test skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [PASS][117] -> [FAIL][118] ([i915#13027]) +1 other test fail
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
    - shard-mtlp:         NOTRUN -> [SKIP][119] ([i915#3637] / [i915#9934])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#9934]) +5 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#9934]) +4 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#15643]) +2 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#15643] / [i915#5190])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][124] ([i915#15643]) +1 other test skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][125] ([i915#15643]) +1 other test skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
    - shard-mtlp:         NOTRUN -> [SKIP][126] ([i915#15643])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][127] ([i915#15990] / [i915#8708]) +7 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][128] ([i915#15989]) +3 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-move:
    - shard-glk:          NOTRUN -> [SKIP][129] +274 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-glk3/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-onoff:
    - shard-rkl:          [PASS][130] -> [SKIP][131] ([i915#15989]) +18 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-1/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-onoff.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#15990]) +9 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbchdr-indfb-scaledprimary:
    - shard-tglu-1:       NOTRUN -> [SKIP][133] ([i915#15989]) +4 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbchdr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbchdr-tiling-4:
    - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#5439])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbchdr-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([i915#15104] / [i915#15990])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
    - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#15102] / [i915#3023]) +10 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#1825]) +5 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:
    - shard-tglu-1:       NOTRUN -> [SKIP][138] +24 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][139] ([i915#15990] / [i915#8708]) +1 other test skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][140] ([i915#15991] / [i915#1825]) +4 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:
    - shard-tglu:         NOTRUN -> [SKIP][141] +30 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
    - shard-tglu-1:       NOTRUN -> [SKIP][142] ([i915#15102]) +11 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][143] ([i915#15990]) +2 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-rgb101010-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][144] ([i915#15102]) +13 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsrhdr-rgb101010-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-tiling-4:
    - shard-tglu:         NOTRUN -> [SKIP][145] ([i915#5439])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_frontbuffer_tracking@fbcpsrhdr-tiling-4.html

  * igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-draw-blt:
    - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#15989]) +5 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@hdr-1p-primscrn-shrfb-plflip-blt:
    - shard-tglu:         NOTRUN -> [SKIP][147] ([i915#15989]) +4 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#15991] / [i915#5354]) +6 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-render:
    - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#15102]) +9 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-indfb-pgflip-blt:
    - shard-tglu:         NOTRUN -> [SKIP][150] ([i915#15102]) +6 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-mtlp:         NOTRUN -> [SKIP][151] ([i915#15989]) +7 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-indfb-plflip-blt:
    - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#15991]) +11 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-cur-indfb-move:
    - shard-rkl:          NOTRUN -> [SKIP][153] +41 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-indfb-plflip-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][154] ([i915#15991]) +7 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-indfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch:
    - shard-tglu-1:       NOTRUN -> [SKIP][155] ([i915#16012] / [i915#3555] / [i915#8228])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][156] ([i915#16012] / [i915#3555] / [i915#8228])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-1-xrgb2101010:
    - shard-tglu:         NOTRUN -> [SKIP][157] ([i915#16012]) +1 other test skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-1-xrgb2101010.html

  * igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1-xrgb2101010:
    - shard-tglu-1:       NOTRUN -> [SKIP][158] ([i915#16012]) +1 other test skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1-xrgb2101010.html

  * igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-1-xrgb16161616f:
    - shard-dg1:          NOTRUN -> [SKIP][159] ([i915#16011]) +9 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg1-14/igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-1-xrgb16161616f.html

  * igt@kms_hdr@static-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][160] ([i915#16011] / [i915#3555] / [i915#8228]) +1 other test skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_hdr@static-toggle.html
    - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#16011] / [i915#3555] / [i915#8228]) +1 other test skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-4/igt@kms_hdr@static-toggle.html

  * igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-1-xrgb2101010:
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#16011]) +7 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-4/igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-1-xrgb2101010.html

  * igt@kms_hdr@static-toggle@pipe-a-hdmi-a-2-xrgb2101010:
    - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#16011]) +5 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-4/igt@kms_hdr@static-toggle@pipe-a-hdmi-a-2-xrgb2101010.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][164] ([i915#15460])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][165] ([i915#15459])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#15460])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#15638] / [i915#15722])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
    - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#15638] / [i915#15722])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-4/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html

  * igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier:
    - shard-tglu:         NOTRUN -> [SKIP][169] ([i915#15709])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier.html

  * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping:
    - shard-tglu-1:       NOTRUN -> [SKIP][170] ([i915#15709]) +1 other test skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-y-tiled-ccs-modifier-source-clamping:
    - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#15709])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_plane@pixel-format-y-tiled-ccs-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier-source-clamping:
    - shard-mtlp:         NOTRUN -> [SKIP][172] ([i915#15709])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-y-tiled-modifier-source-clamping:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#15709]) +1 other test skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_plane@pixel-format-y-tiled-modifier-source-clamping.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:
    - shard-mtlp:         NOTRUN -> [SKIP][174] ([i915#15329] / [i915#3555] / [i915#6953])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-c:
    - shard-mtlp:         NOTRUN -> [SKIP][175] ([i915#15329]) +3 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-c.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#9340])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_pm_lpsp@kms-lpsp.html
    - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#9340])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2:          [PASS][178] -> [SKIP][179] ([i915#15073]) +3 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-dg1:          [PASS][180] -> [SKIP][181] ([i915#15073])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg1-12/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg1-15/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@system-suspend-modeset:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][182] ([i915#10553])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-glk11/igt@kms_pm_rpm@system-suspend-modeset.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#6524])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_properties@get_properties-sanity-atomic:
    - shard-dg1:          [PASS][184] -> [DMESG-WARN][185] ([i915#4423])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg1-12/igt@kms_properties@get_properties-sanity-atomic.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg1-13/igt@kms_properties@get_properties-sanity-atomic.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][186] ([i915#11520]) +3 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area:
    - shard-tglu-1:       NOTRUN -> [SKIP][187] ([i915#11520]) +1 other test skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:
    - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#11520])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][189] ([i915#11520]) +7 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-glk8/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:
    - shard-mtlp:         NOTRUN -> [SKIP][190] ([i915#12316]) +2 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][191] ([i915#9808])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area@pipe-a-edp-1.html

  * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:
    - shard-tglu:         NOTRUN -> [SKIP][192] ([i915#11520]) +1 other test skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
    - shard-glk10:        NOTRUN -> [SKIP][193] ([i915#11520]) +1 other test skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-glk10/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:
    - shard-glk11:        NOTRUN -> [SKIP][194] ([i915#11520]) +3 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-glk11/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr@fbc-pr-sprite-plane-onoff:
    - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#1072] / [i915#9732]) +9 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_psr@fbc-pr-sprite-plane-onoff.html

  * igt@kms_psr@fbc-psr-cursor-plane-move:
    - shard-tglu-1:       NOTRUN -> [SKIP][196] ([i915#9732]) +5 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_psr@fbc-psr-cursor-plane-move.html

  * igt@kms_psr@fbc-psr-cursor-plane-onoff:
    - shard-tglu:         NOTRUN -> [SKIP][197] ([i915#9732]) +4 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_psr@fbc-psr-cursor-plane-onoff.html

  * igt@kms_psr@fbc-psr2-cursor-plane-move:
    - shard-mtlp:         NOTRUN -> [SKIP][198] ([i915#9688]) +3 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_psr@fbc-psr2-cursor-plane-move.html

  * igt@kms_psr@pr-cursor-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#1072] / [i915#9732]) +7 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-10/igt@kms_psr@pr-cursor-mmap-cpu.html

  * igt@kms_psr@psr-primary-mmap-gtt@edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][200] ([i915#4077] / [i915#9688]) +1 other test skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-6/igt@kms_psr@psr-primary-mmap-gtt@edp-1.html

  * igt@kms_rotation_crc@bad-pixel-format:
    - shard-dg2:          NOTRUN -> [SKIP][201] ([i915#12755] / [i915#15867])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_rotation_crc@bad-pixel-format.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
    - shard-tglu:         NOTRUN -> [SKIP][202] ([i915#5289])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:
    - shard-dg2:          NOTRUN -> [SKIP][203] ([i915#5190])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-10/igt@kms_rotation_crc@primary-y-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-rkl:          NOTRUN -> [SKIP][204] ([i915#5289])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-mtlp:         NOTRUN -> [SKIP][205] ([i915#12755] / [i915#15867])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-mtlp:         NOTRUN -> [ABORT][206] ([i915#13179]) +1 other test abort
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_selftest@drm_framebuffer.html
    - shard-glk:          NOTRUN -> [ABORT][207] ([i915#13179]) +1 other test abort
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-glk5/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_setmode@basic:
    - shard-tglu:         [PASS][208] -> [FAIL][209] ([i915#15106]) +1 other test fail
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-tglu-7/igt@kms_setmode@basic.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-6/igt@kms_setmode@basic.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#3555]) +1 other test skip
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_setmode@basic@pipe-b-hdmi-a-2:
    - shard-rkl:          [PASS][211] -> [FAIL][212] ([i915#15106]) +2 other tests fail
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-1/igt@kms_setmode@basic@pipe-b-hdmi-a-2.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_setmode@basic@pipe-b-hdmi-a-2.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][213] ([i915#8623])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vblank@ts-continuation-dpms-suspend:
    - shard-rkl:          [PASS][214] -> [INCOMPLETE][215] ([i915#12276])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-5/igt@kms_vblank@ts-continuation-dpms-suspend.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_vblank@ts-continuation-dpms-suspend.html

  * igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][216] ([i915#12276])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-2.html

  * igt@kms_vblank@ts-continuation-suspend:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][217] ([i915#12276]) +1 other test incomplete
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-glk11/igt@kms_vblank@ts-continuation-suspend.html

  * igt@kms_vrr@lobf:
    - shard-rkl:          NOTRUN -> [SKIP][218] ([i915#11920])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_vrr@lobf.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-tglu-1:       NOTRUN -> [SKIP][219] ([i915#9906])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-virtual.html

  * igt@perf@global-sseu-config-invalid:
    - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#7387])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@perf@global-sseu-config-invalid.html

  * igt@perf_pmu@rc6-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][221] ([i915#13356] / [i915#14242] / [i915#16236])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-glk4/igt@perf_pmu@rc6-suspend.html

  * igt@vgem_basic@create:
    - shard-glk:          NOTRUN -> [FAIL][222] ([i915#16296])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-glk3/igt@vgem_basic@create.html

  
#### Possible fixes ####

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [INCOMPLETE][223] ([i915#13356] / [i915#16348]) -> [PASS][224]
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html

  * igt@gem_ctx_freq@sysfs@gt0:
    - shard-dg2:          [FAIL][225] ([i915#9561]) -> [PASS][226] +1 other test pass
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-8/igt@gem_ctx_freq@sysfs@gt0.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-4/igt@gem_ctx_freq@sysfs@gt0.html

  * igt@gem_exec_big@single:
    - shard-mtlp:         [FAIL][227] ([i915#15871]) -> [PASS][228]
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-mtlp-8/igt@gem_exec_big@single.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-6/igt@gem_exec_big@single.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          [INCOMPLETE][229] ([i915#13356]) -> [PASS][230] +1 other test pass
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-rkl:          [ABORT][231] ([i915#15131]) -> [PASS][232]
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-1/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-4/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@i915_module_load@load:
    - shard-dg2:          ([PASS][233], [PASS][234], [PASS][235], [PASS][236], [PASS][237], [PASS][238], [SKIP][239], [PASS][240], [PASS][241], [PASS][242], [PASS][243], [PASS][244], [PASS][245], [PASS][246], [PASS][247], [PASS][248], [PASS][249], [PASS][250], [PASS][251], [PASS][252], [PASS][253], [PASS][254], [PASS][255]) ([i915#16165]) -> ([PASS][256], [PASS][257], [PASS][258], [PASS][259], [PASS][260], [PASS][261], [PASS][262], [PASS][263], [PASS][264], [PASS][265], [PASS][266], [PASS][267], [PASS][268], [PASS][269], [PASS][270], [PASS][271], [PASS][272], [PASS][273], [PASS][274], [PASS][275], [PASS][276], [PASS][277], [PASS][278], [PASS][279])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-3/igt@i915_module_load@load.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-6/igt@i915_module_load@load.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-3/igt@i915_module_load@load.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-7/igt@i915_module_load@load.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-3/igt@i915_module_load@load.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-8/igt@i915_module_load@load.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-1/igt@i915_module_load@load.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-7/igt@i915_module_load@load.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-8/igt@i915_module_load@load.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-4/igt@i915_module_load@load.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-4/igt@i915_module_load@load.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-5/igt@i915_module_load@load.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-8/igt@i915_module_load@load.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-5/igt@i915_module_load@load.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-6/igt@i915_module_load@load.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-7/igt@i915_module_load@load.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-5/igt@i915_module_load@load.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-5/igt@i915_module_load@load.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-7/igt@i915_module_load@load.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-6/igt@i915_module_load@load.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-1/igt@i915_module_load@load.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-4/igt@i915_module_load@load.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-6/igt@i915_module_load@load.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-10/igt@i915_module_load@load.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-4/igt@i915_module_load@load.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-1/igt@i915_module_load@load.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-5/igt@i915_module_load@load.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-5/igt@i915_module_load@load.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-5/igt@i915_module_load@load.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-4/igt@i915_module_load@load.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-6/igt@i915_module_load@load.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-6/igt@i915_module_load@load.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-1/igt@i915_module_load@load.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-6/igt@i915_module_load@load.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-4/igt@i915_module_load@load.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-6/igt@i915_module_load@load.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-1/igt@i915_module_load@load.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-7/igt@i915_module_load@load.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-7/igt@i915_module_load@load.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@i915_module_load@load.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-1/igt@i915_module_load@load.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-7/igt@i915_module_load@load.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-7/igt@i915_module_load@load.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@i915_module_load@load.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@i915_module_load@load.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@i915_module_load@load.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@i915_module_load@load.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [INCOMPLETE][280] ([i915#13356] / [i915#13820]) -> [PASS][281] +1 other test pass
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-3/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_suspend@forcewake:
    - shard-rkl:          [INCOMPLETE][282] ([i915#4817]) -> [PASS][283]
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@i915_suspend@forcewake.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@i915_suspend@forcewake.html

  * igt@kms_async_flips@async-flip-suspend-resume:
    - shard-rkl:          [INCOMPLETE][284] ([i915#12761]) -> [PASS][285] +1 other test pass
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_async_flips@async-flip-suspend-resume.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_async_flips@async-flip-suspend-resume.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [FAIL][286] ([i915#15733] / [i915#5138]) -> [PASS][287]
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-glk:          [SKIP][288] -> [PASS][289] +12 other tests pass
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-glk9/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-indfb-draw-mmap-gtt.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-glk8/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@hdr-1p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][290] ([i915#15989]) -> [PASS][291] +5 other tests pass
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-5/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-spr-indfb-draw-mmap-wc.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [SKIP][292] ([i915#15073]) -> [PASS][293] +4 other tests pass
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html
    - shard-dg1:          [SKIP][294] ([i915#15073]) -> [PASS][295] +2 other tests pass
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg1-19/igt@kms_pm_rpm@dpms-lpsp.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg1-14/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          [SKIP][296] ([i915#14544] / [i915#15073]) -> [PASS][297] +1 other test pass
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_setmode@basic:
    - shard-dg1:          [FAIL][298] ([i915#15106]) -> [PASS][299] +2 other tests pass
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg1-17/igt@kms_setmode@basic.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg1-19/igt@kms_setmode@basic.html

  
#### Warnings ####

  * igt@drm_buddy@drm_buddy:
    - shard-rkl:          [SKIP][300] ([i915#14544] / [i915#15678]) -> [SKIP][301] ([i915#15678])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@drm_buddy@drm_buddy.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@drm_buddy@drm_buddy.html

  * igt@gem_create@create-clear@smem0:
    - shard-mtlp:         [INCOMPLETE][302] ([i915#16020]) -> [FAIL][303] ([i915#15871]) +1 other test fail
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-mtlp-8/igt@gem_create@create-clear@smem0.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-6/igt@gem_create@create-clear@smem0.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-rkl:          [SKIP][304] ([i915#14544] / [i915#4525]) -> [SKIP][305] ([i915#4525]) +1 other test skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@gem_exec_balancer@parallel-balancer.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-8/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-rkl:          [SKIP][306] ([i915#4525]) -> [SKIP][307] ([i915#14544] / [i915#4525])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-5/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_reloc@basic-gtt:
    - shard-rkl:          [SKIP][308] ([i915#3281]) -> [SKIP][309] ([i915#14544] / [i915#3281]) +3 other tests skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-4/igt@gem_exec_reloc@basic-gtt.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@gem_exec_reloc@basic-gtt.html

  * igt@gem_exec_reloc@basic-gtt-wc-active:
    - shard-rkl:          [SKIP][310] ([i915#14544] / [i915#3281]) -> [SKIP][311] ([i915#3281]) +5 other tests skip
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-active.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-wc-active.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-rkl:          [SKIP][312] ([i915#14544] / [i915#4613]) -> [SKIP][313] ([i915#4613])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@gem_lmem_swapping@parallel-random.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-rkl:          [SKIP][314] ([i915#4613]) -> [SKIP][315] ([i915#14544] / [i915#4613]) +1 other test skip
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-5/igt@gem_lmem_swapping@verify-random.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          [SKIP][316] ([i915#14544] / [i915#3282]) -> [SKIP][317] ([i915#3282]) +3 other tests skip
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-8/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pread@snoop:
    - shard-rkl:          [SKIP][318] ([i915#3282]) -> [SKIP][319] ([i915#14544] / [i915#3282]) +5 other tests skip
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-5/igt@gem_pread@snoop.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@gem_pread@snoop.html

  * igt@gem_pxp@hw-rejects-pxp-context:
    - shard-rkl:          [SKIP][320] ([i915#13717] / [i915#14544]) -> [SKIP][321] ([i915#13717])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-context.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-context.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-rkl:          [SKIP][322] ([i915#14544] / [i915#8411]) -> [SKIP][323] ([i915#8411])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-rkl:          [SKIP][324] ([i915#14544] / [i915#3297] / [i915#3323]) -> [SKIP][325] ([i915#3297] / [i915#3323])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@gem_userptr_blits@dmabuf-sync.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-8/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-rkl:          [SKIP][326] ([i915#14544] / [i915#3297]) -> [SKIP][327] ([i915#3297])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@gem_userptr_blits@readonly-unsync.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@gem_userptr_blits@readonly-unsync.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-rkl:          [SKIP][328] ([i915#14544] / [i915#2527]) -> [SKIP][329] ([i915#2527]) +1 other test skip
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@gen9_exec_parse@batch-without-end.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-8/igt@gen9_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-rkl:          [SKIP][330] ([i915#2527]) -> [SKIP][331] ([i915#14544] / [i915#2527]) +1 other test skip
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@gen9_exec_parse@bb-start-param.html

  * igt@i915_query@query-topology-unsupported:
    - shard-rkl:          [SKIP][332] ([i915#14544] / [i915#16079]) -> [SKIP][333] ([i915#16079])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@i915_query@query-topology-unsupported.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-8/igt@i915_query@query-topology-unsupported.html

  * igt@intel_hwmon@hwmon-read:
    - shard-rkl:          [SKIP][334] ([i915#14544] / [i915#7707]) -> [SKIP][335] ([i915#7707]) +1 other test skip
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@intel_hwmon@hwmon-read.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@intel_hwmon@hwmon-read.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
    - shard-dg1:          [SKIP][336] ([i915#4538] / [i915#5286]) -> [SKIP][337] ([i915#4423] / [i915#4538] / [i915#5286])
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg1-15/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg1-16/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
    - shard-rkl:          [SKIP][338] ([i915#5286]) -> [SKIP][339] ([i915#14544] / [i915#5286]) +1 other test skip
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-rkl:          [SKIP][340] ([i915#14544] / [i915#5286]) -> [SKIP][341] ([i915#5286]) +2 other tests skip
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@linear-16bpp-rotate-270:
    - shard-rkl:          [SKIP][342] ([i915#14544] / [i915#3638]) -> [SKIP][343] ([i915#3638])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_big_fb@linear-16bpp-rotate-270.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_big_fb@linear-16bpp-rotate-270.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-rkl:          [SKIP][344] ([i915#3828]) -> [SKIP][345] ([i915#14544] / [i915#3828]) +1 other test skip
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-4/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
    - shard-mtlp:         [INCOMPLETE][346] -> [SKIP][347]
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-mtlp-8/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-6/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-rkl:          [SKIP][348] -> [SKIP][349] ([i915#14544]) +25 other tests skip
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-1/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][350] ([i915#12313] / [i915#14544]) -> [SKIP][351] ([i915#12313]) +1 other test skip
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2:
    - shard-rkl:          [SKIP][352] ([i915#14544] / [i915#6095]) -> [SKIP][353] ([i915#6095]) +1 other test skip
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc:
    - shard-rkl:          [SKIP][354] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][355] ([i915#14098] / [i915#6095]) +8 other tests skip
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs:
    - shard-rkl:          [SKIP][356] ([i915#14098] / [i915#6095]) -> [SKIP][357] ([i915#14098] / [i915#14544] / [i915#6095]) +3 other tests skip
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs.html

  * igt@kms_cdclk@plane-scaling:
    - shard-rkl:          [SKIP][358] ([i915#14544] / [i915#3742]) -> [SKIP][359] ([i915#3742])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_cdclk@plane-scaling.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_cdclk@plane-scaling.html

  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
    - shard-rkl:          [SKIP][360] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][361] ([i915#11151] / [i915#7828]) +5 other tests skip
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - shard-dg1:          [SKIP][362] ([i915#11151] / [i915#4423] / [i915#7828]) -> [SKIP][363] ([i915#11151] / [i915#7828])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg1-17/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg1-19/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
    - shard-rkl:          [SKIP][364] ([i915#11151] / [i915#7828]) -> [SKIP][365] ([i915#11151] / [i915#14544] / [i915#7828]) +2 other tests skip
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-4/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html

  * igt@kms_content_protection@content-type-change:
    - shard-rkl:          [SKIP][366] ([i915#14544] / [i915#15865]) -> [SKIP][367] ([i915#15865]) +2 other tests skip
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_content_protection@content-type-change.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@mei-interface:
    - shard-rkl:          [SKIP][368] ([i915#15865]) -> [SKIP][369] ([i915#14544] / [i915#15865])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-5/igt@kms_content_protection@mei-interface.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_content_protection@mei-interface.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          [SKIP][370] ([i915#14544] / [i915#4103]) -> [SKIP][371] ([i915#4103])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-legacy:
    - shard-rkl:          [SKIP][372] ([i915#14544]) -> [SKIP][373] +61 other tests skip
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-rkl:          [SKIP][374] ([i915#14544] / [i915#3555] / [i915#3804]) -> [SKIP][375] ([i915#3555] / [i915#3804])
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          [SKIP][376] ([i915#14544] / [i915#3804]) -> [SKIP][377] ([i915#3804])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dp_linktrain_fallback@dsc-fallback:
    - shard-rkl:          [SKIP][378] ([i915#13707] / [i915#14544]) -> [SKIP][379] ([i915#13707])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_dp_linktrain_fallback@dsc-fallback.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-8/igt@kms_dp_linktrain_fallback@dsc-fallback.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-rkl:          [SKIP][380] ([i915#14544] / [i915#3840]) -> [SKIP][381] ([i915#3840])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-8/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-rkl:          [SKIP][382] ([i915#14544] / [i915#3555] / [i915#3840]) -> [SKIP][383] ([i915#3555] / [i915#3840])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-rkl:          [SKIP][384] ([i915#14544] / [i915#9934]) -> [SKIP][385] ([i915#9934])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_flip@2x-flip-vs-fences-interruptible.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-glk:          [INCOMPLETE][386] ([i915#12745] / [i915#4839] / [i915#6113]) -> [INCOMPLETE][387] ([i915#12745] / [i915#4839])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-glk2/igt@kms_flip@2x-flip-vs-suspend.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-glk4/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-rkl:          [SKIP][388] ([i915#14544] / [i915#15643]) -> [SKIP][389] ([i915#15643])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-rkl:          [SKIP][390] ([i915#15643]) -> [SKIP][391] ([i915#14544] / [i915#15643]) +1 other test skip
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][392] ([i915#1825]) -> [SKIP][393] ([i915#14544] / [i915#1825])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-mmap-gtt:
    - shard-dg1:          [SKIP][394] ([i915#15990]) -> [SKIP][395] ([i915#15990] / [i915#4423])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg1-15/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-mmap-gtt.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-rkl:          [SKIP][396] ([i915#15102] / [i915#3023]) -> [SKIP][397] ([i915#14544] / [i915#15102] / [i915#3023]) +3 other tests skip
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
    - shard-rkl:          [SKIP][398] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][399] ([i915#15102] / [i915#3023]) +13 other tests skip
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
    - shard-dg2:          [SKIP][400] ([i915#10433] / [i915#15102]) -> [SKIP][401] ([i915#15102]) +1 other test skip
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt:
    - shard-rkl:          [SKIP][402] ([i915#14544] / [i915#15102]) -> [SKIP][403] ([i915#15102]) +16 other tests skip
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-dg1:          [SKIP][404] ([i915#15102]) -> [SKIP][405] ([i915#15102] / [i915#4423])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-pwrite.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-rte:
    - shard-rkl:          [SKIP][406] ([i915#15102]) -> [SKIP][407] ([i915#14544] / [i915#15102]) +7 other tests skip
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-rte.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-rte.html

  * igt@kms_frontbuffer_tracking@hdr-2p-pri-indfb-multidraw:
    - shard-dg1:          [SKIP][408] -> [SKIP][409] ([i915#4423]) +2 other tests skip
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg1-18/igt@kms_frontbuffer_tracking@hdr-2p-pri-indfb-multidraw.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg1-12/igt@kms_frontbuffer_tracking@hdr-2p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc:
    - shard-dg1:          [SKIP][410] ([i915#15104] / [i915#15990]) -> [SKIP][411] ([i915#15104] / [i915#15990] / [i915#4423])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg1-16/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][412] ([i915#15102]) -> [SKIP][413] ([i915#10433] / [i915#15102]) +5 other tests skip
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][414] ([i915#14544] / [i915#1825]) -> [SKIP][415] ([i915#1825]) +3 other tests skip
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-blt:
    - shard-dg1:          [SKIP][416] ([i915#4423]) -> [SKIP][417]
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-blt.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-rkl:          [SKIP][418] ([i915#15459]) -> [SKIP][419] ([i915#14544] / [i915#15459])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-5/igt@kms_joiner@basic-force-big-joiner.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-rkl:          [SKIP][420] ([i915#14544] / [i915#15458]) -> [SKIP][421] ([i915#15458])
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-8/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][422] ([i915#14544] / [i915#15815]) -> [SKIP][423] ([i915#15815])
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping:
    - shard-rkl:          [SKIP][424] ([i915#14544] / [i915#15709]) -> [SKIP][425] ([i915#15709]) +3 other tests skip
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-8/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping:
    - shard-rkl:          [SKIP][426] ([i915#15709]) -> [SKIP][427] ([i915#14544] / [i915#15709]) +3 other tests skip
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-5/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping.html

  * igt@kms_plane_multiple@2x-tiling-y:
    - shard-rkl:          [SKIP][428] ([i915#13958] / [i915#14544]) -> [SKIP][429] ([i915#13958])
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-y.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-y.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:
    - shard-rkl:          [SKIP][430] ([i915#15329]) -> [SKIP][431] ([i915#14544] / [i915#15329]) +3 other tests skip
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-rkl:          [SKIP][432] ([i915#12343] / [i915#5354]) -> [SKIP][433] ([i915#12343] / [i915#14544] / [i915#5354])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-1/igt@kms_pm_backlight@fade-with-suspend.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu:         [SKIP][434] ([i915#15128]) -> [FAIL][435] ([i915#15752])
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
    - shard-rkl:          [SKIP][436] ([i915#11520] / [i915#14544]) -> [SKIP][437] ([i915#11520]) +6 other tests skip
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
    - shard-rkl:          [SKIP][438] ([i915#11520]) -> [SKIP][439] ([i915#11520] / [i915#14544]) +2 other tests skip
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-4/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-rkl:          [SKIP][440] ([i915#9683]) -> [SKIP][441] ([i915#14544] / [i915#9683])
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-1/igt@kms_psr2_su@page_flip-p010.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@fbc-psr-cursor-plane-move:
    - shard-rkl:          [SKIP][442] ([i915#1072] / [i915#9732]) -> [SKIP][443] ([i915#1072] / [i915#14544] / [i915#9732]) +6 other tests skip
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-5/igt@kms_psr@fbc-psr-cursor-plane-move.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_psr@fbc-psr-cursor-plane-move.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-rkl:          [SKIP][444] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][445] ([i915#1072] / [i915#9732]) +11 other tests skip
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-rkl:          [SKIP][446] ([i915#14544] / [i915#5289]) -> [SKIP][447] ([i915#5289])
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_setmode@invalid-clone-single-crtc:
    - shard-rkl:          [SKIP][448] ([i915#14544] / [i915#3555]) -> [SKIP][449] ([i915#3555]) +1 other test skip
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-6/igt@kms_setmode@invalid-clone-single-crtc.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-8/igt@kms_setmode@invalid-clone-single-crtc.html

  * igt@kms_vrr@max-min:
    - shard-rkl:          [SKIP][450] ([i915#9906]) -> [SKIP][451] ([i915#14544] / [i915#9906]) +1 other test skip
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-4/igt@kms_vrr@max-min.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_vrr@max-min.html

  * igt@perf_pmu@rc6-suspend:
    - shard-rkl:          [ABORT][452] ([i915#15131]) -> [INCOMPLETE][453] ([i915#13520])
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-1/igt@perf_pmu@rc6-suspend.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@perf_pmu@rc6-suspend.html

  * igt@prime_vgem@fence-write-hang:
    - shard-rkl:          [SKIP][454] ([i915#3708]) -> [SKIP][455] ([i915#14544] / [i915#3708])
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-5/igt@prime_vgem@fence-write-hang.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@prime_vgem@fence-write-hang.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-rkl:          [SKIP][456] ([i915#9917]) -> [SKIP][457] ([i915#14544] / [i915#9917])
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-rkl-4/igt@sriov_basic@enable-vfs-autoprobe-on.html
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-on.html

  
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10553]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
  [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
  [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
  [i915#12761]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
  [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
  [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
  [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
  [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
  [i915#13820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
  [i915#14242]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14242
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14702]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14702
  [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
  [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
  [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
  [i915#15106]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15106
  [i915#15128]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15128
  [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
  [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
  [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
  [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
  [i915#15342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342
  [i915#15454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15454
  [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
  [i915#15459]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459
  [i915#15460]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460
  [i915#15638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15638
  [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
  [i915#15678]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15678
  [i915#15709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
  [i915#15722]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15722
  [i915#15733]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733
  [i915#15752]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15752
  [i915#15815]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15815
  [i915#15865]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865
  [i915#15867]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15867
  [i915#15871]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15871
  [i915#15989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989
  [i915#15990]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990
  [i915#15991]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991
  [i915#16011]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011
  [i915#16012]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012
  [i915#16020]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16020
  [i915#16079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16079
  [i915#16081]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16081
  [i915#16090]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16090
  [i915#16165]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16165
  [i915#16202]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16202
  [i915#16236]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16236
  [i915#16296]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16296
  [i915#16307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16307
  [i915#16308]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16308
  [i915#16348]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16348
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
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
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
  [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9561
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
  [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_18611 -> Patchwork_167783v1

  CI-20190529: 20190529
  CI_DRM_18611: f059886850b97ea5c089703ba3e566a4f847fa19 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8946: 8946
  Patchwork_167783v1: f059886850b97ea5c089703ba3e566a4f847fa19 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/index.html

--===============3961051006472968960==
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
<tr><td><b>Series:</b></td><td>match GEN6_/PCODE_DATA naming with spec</td>=
</tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/167783/">https://patchwork.freedesktop.org/series/167783/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_167783v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_167783v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18611_full -&gt; Patchwork_167783v=
1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_167783v1_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@device_reset@unbind-cold-r=
eset-rebind.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/11078">i915#11078</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@dumb_buffer@create-clear:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-glk11/igt@dumb_buffer@create-clear.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/16307">i915#16307</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@gem_ccs@block-multicopy-in=
place.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@gem_ccs@large-ctrl-surf-c=
opy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/13008">i915#13008</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@gem_ccs@suspend-resume@xma=
jor-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16348">i9=
15#16348</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@gem_create@create-ext-cpu=
-access-big.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/6335">i915#6335</a>)</li>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-dg2-1/igt@gem_create@create-ext-cpu-access-big.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
167783v1/shard-dg2-7/igt@gem_create@create-ext-cpu-access-big.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15454=
">i915#15454</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@gem_ctx_sseu@mmap-args.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@gem_exec_balancer@paralle=
l-keep-submit-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@gem_exec_flush@basic-wb-ro=
-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_gttfill@all-engines:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-6/igt@gem_exec_gttfill@all-engi=
nes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/16090">i915#16090</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-noreloc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@gem_exec_reloc@basic-cpu-n=
oreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-softpin:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@gem_exec_reloc@basic-soft=
pin.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@gem_exec_reloc@basic-write=
-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@gem_fenced_exec_thrash@no-=
spare-fences-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@gem_lmem_swapping@parallel=
-multi.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-glk3/igt@gem_lmem_swapping@parallel-=
random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@gem_lmem_swapping@paralle=
l-random-verify.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@gem_lmem_swapping@verify-=
random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@gem_media_vme.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284=
">i915#284</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@bad-object:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@gem_mmap_gtt@bad-object.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@zero-extend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@gem_mmap_gtt@zero-extend.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4077">i915#4077</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear-via-pagefault:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-6/igt@gem_mmap_offset@clear-via=
-pagefault.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/16202">i915#16202</a>) +1 other test incomplete</l=
i>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-gtt-read-wc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@gem_mmap_wc@write-gtt-rea=
d-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/4083">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@gem_mmap_wc@write-read.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-10/igt@gem_partial_pwrite_pread@=
reads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@gem_partial_pwrite_pread@w=
rite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-6/igt@gem_partial_pwrite_pread@=
writes-after-reads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-glk11/igt@gem_pread@exhaustion.html"=
>WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-glk5/igt@gem_pwrite@basic-exhaustion=
.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14702">i915#14702</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@gem_pxp@verify-pxp-key-cha=
nge-after-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@gem_render_copy@y-tiled-cc=
s-to-y-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +2 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_pwrite:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-6/igt@gem_tiled_pread_pwrite.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@gem_userptr_blits@create-d=
estroy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@gem_userptr_blits@map-fixe=
d-invalidate-overlap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@gem_userptr_blits@readonl=
y-pwrite-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@gem_userptr_blits@unsync-u=
nmap-cycles.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-4/igt@gem_workarounds@suspend-resume-fd.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167=
783v1/shard-rkl-6/igt@gem_workarounds@suspend-resume-fd.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356=
">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allowed:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@gen7_exec_parse@basic-all=
owed.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@gen9_exec_parse@batch-inva=
lid-length.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@gen9_exec_parse@batch-zero=
-length.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@gen9_exec_parse@bb-chaine=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@gen9_exec_parse@bb-start-=
param.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@gen9_exec_parse@secure-ba=
tches.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@virtual-busy-hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@i915_drm_fdinfo@virtual-b=
usy-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14118">i915#14118</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@fault-injection@intel_connector_register:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-glk8/igt@i915_module_load@fault-inje=
ction@intel_connector_register.html">ABORT</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/15342">i915#15342</a>) +1 other tes=
t abort</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-glk9/igt@i915_pm_rpm@system-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/sh=
ard-glk9/igt@i915_pm_rpm@system-suspend.html">INCOMPLETE</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>=
)</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-4/igt@i915_query@test-query-geom=
etry-subslices.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/5723">i915#5723</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-2/igt@i915_suspend@fence-restore-untiled.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16=
7783v1/shard-rkl-3/igt@i915_suspend@fence-restore-untiled.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/481=
7">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@clobberred-modifier:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_addfb_basic@clobberre=
d-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@atomic-plane-damage:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-glk10/igt@kms_atomic@atomic-plane-da=
mage.html">SKIP</a> +75 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@kms_atomic_transition@plan=
e-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555=
">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-=
rotate-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-mtlp-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
167783v1/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733=
">i915#15733</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_big_fb@4-tiled-64bpp-r=
otate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_big_fb@4-tiled-8bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-0:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-glk11/igt@kms_big_fb@linear-16bpp-ro=
tate-0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/16308">i915#16308</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_big_fb@linear-32bpp-ro=
tate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3638">i915#3638</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-6/igt@kms_big_fb@linear-max-hw-=
stride-32bpp-rotate-0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/16308">i915#16308</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_big_fb@linear-max-hw-=
stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_big_fb@y-tiled-32bpp-r=
otate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg1-18/igt@kms_ccs@bad-aux-stride-4-=
tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +183 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_ccs@bad-rotation-90-4=
-tiled-dg2-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/6095">i915#6095</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@kms_ccs@bad-rotation-90-4-=
tiled-mtl-rc-ccs@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +72 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_ccs@crc-primary-basic-=
4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_ccs@crc-primary-basic=
-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +19 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-glk11/igt@kms_ccs@crc-primary-rotati=
on-180-y-tiled-ccs@pipe-c-hdmi-a-1.html">SKIP</a> +95 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc@pipe-b-edp-=
1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_ccs@crc-primary-rotat=
ion-180-y-tiled-gen12-rc-ccs-cc@pipe-b-edp-1.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +=
19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-6/igt@kms_ccs@crc-primary-suspe=
nd-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-10/igt@kms_ccs@crc-primary-suspe=
nd-4-tiled-dg2-rc-ccs-cc.html">ABORT</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/15132">i915#15132</a>) +1 other test abor=
t</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#609=
5</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@kms_ccs@crc-primary-suspen=
d-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +9 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915=
#6095</a>) +62 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1=
:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-=
basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i=
915#10434</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-4/igt@kms_ccs@random-ccs-data-4-=
tiled-dg2-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a=
>) +42 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@kms_ccs@random-ccs-data-4-=
tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_cdclk@mode-transition-=
all-outputs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@dp-audio:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_chamelium_audio@dp-au=
dio.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@gamma:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@kms_chamelium_color@gamma.=
html">SKIP</a> +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-mode-timings:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_chamelium_edid@dp-mode=
-timings.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@vga-edid-read:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_chamelium_edid@vga-ed=
id-read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-=
storm.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-=
fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_content_protection@ato=
mic-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/15865">i915#15865</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0-hdcp14:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_content_protection@dp=
-mst-lic-type-0-hdcp14.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_content_protection@dp=
-mst-lic-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/15330">i915#15330</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_content_protection@me=
i-interface.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/15865">i915#15865</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent-hdcp14:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_content_protection@uev=
ent-hdcp14.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/15865">i915#15865</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x10:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-6/igt@kms_cursor_crc@cursor-ran=
dom-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/8814">i915#8814</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_cursor_crc@cursor-rand=
om-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_cursor_crc@cursor-rap=
id-movement-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-256x85:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-4/igt@kms_cursor_crc@cursor-slid=
ing-256x85.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_cursor_crc@cursor-sli=
ding-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_cursor_legacy@cursorb=
-vs-flipb-atomic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9809">i915#9809</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_cursor_legacy@cursorb-=
vs-flipb-atomic-transitions.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +1=
 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-atomic-transitions.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +1 ot=
her test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-4/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-atomic-transitions.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@kms_dither@fb-8bpc-vs-pane=
l-8bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-mst:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@kms_dp_link_training@non-u=
hbr-mst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/13749">i915#13749</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-mst:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_dp_link_training@uhbr=
-mst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13748">i915#13748</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_dp_linktrain_fallback=
@dp-fallback.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13707">i915#13707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_dsc@dsc-basic.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_dsc@dsc-with-formats.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-4/igt@kms_fbcon_fbt@psr-suspend.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3955">i915#3955</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_fbcon_fbt@psr-suspend.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3469">i915#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_feature_discovery@disp=
lay-2x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/16081">i915#16081</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_feature_discovery@dis=
play-3x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/16081">i915#16081</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@kms_feature_discovery@dp-m=
st.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9337">i915#9337</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_flip@2x-absolute-wf_v=
blank.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167=
783v1/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027">i915=
#13027</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_flip@2x-flip-vs-modes=
et-vs-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_flip@2x-flip-vs-pannin=
g.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9934">i915#9934</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@kms_flip@2x-plain-flip-ts-=
check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9934">i915#9934</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) =
+2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytileccs-upscaling.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5=
190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tile-downscaling.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +1 ot=
her test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a=
>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:</=
p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-32bpp-yftile-downscaling.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_frontbuffer_tracking@f=
bc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#87=
08</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-pwrite:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_frontbuffer_tracking@f=
bchdr-1p-offscreen-pri-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +3 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-glk3/igt@kms_frontbuffer_tracking@fb=
chdr-1p-primscrn-cur-indfb-move.html">SKIP</a> +274 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-1/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-s=
pr-indfb-onoff.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_167783v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fb=
chdr-1p-primscrn-spr-indfb-onoff.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +18 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_frontbuffer_tracking@f=
bchdr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>) +9 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-indfb-scaledprimary:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbchdr-indfb-scaledprimary.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +4 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-tiling-4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bchdr-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104">i915#15104</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i9=
15#15990</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +10 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +5 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> +24 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i9=
15#8708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-pri-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#18=
25</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a> +30 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbcpsr-rgb101010-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +11 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-=
gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-6/igt@kms_frontbuffer_tracking@=
fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a=
>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-rgb101010-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_frontbuffer_tracking@f=
bcpsrhdr-rgb101010-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +13 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-tiling-4:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_frontbuffer_tracking@=
fbcpsrhdr-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_frontbuffer_tracking@h=
dr-1p-primscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +5 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_frontbuffer_tracking@=
hdr-1p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +4 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_frontbuffer_tracking@p=
sr-2p-primscrn-pri-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354=
</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-render:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-4/igt@kms_frontbuffer_tracking@p=
srhdr-1p-offscreen-pri-shrfb-draw-render.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +9 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_frontbuffer_tracking@=
psrhdr-1p-primscrn-indfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +6 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-spr-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
psrhdr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +=
7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_frontbuffer_tracking@p=
srhdr-2p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a>) +11 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-4/igt@kms_frontbuffer_tracking@p=
srhdr-2p-scndscrn-cur-indfb-move.html">SKIP</a> +41 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@=
psrhdr-2p-scndscrn-indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a>) +7 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_hdr@bpc-switch.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/16012">i915#16012</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_hdr@bpc-switch-suspen=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/16012">i915#16012</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-1-xrgb2101010:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_hdr@bpc-switch-suspen=
d@pipe-a-hdmi-a-1-xrgb2101010.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a>) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1-xrgb2101010:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_hdr@bpc-switch@pipe-a=
-hdmi-a-1-xrgb2101010.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/16012">i915#16012</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-1-xrgb16161616f:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg1-14/igt@kms_hdr@invalid-metadata-=
sizes@pipe-a-hdmi-a-1-xrgb16161616f.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +9 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_hdr@static-toggle.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/16011">i915#16011</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</=
li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-4/igt@kms_hdr@static-toggle.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/16011">i915#16011</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-1-xrgb2101010:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-4/igt@kms_hdr@static-toggle-dpms=
@pipe-a-hdmi-a-1-xrgb2101010.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +7 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle@pipe-a-hdmi-a-2-xrgb2101010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-4/igt@kms_hdr@static-toggle@pipe=
-a-hdmi-a-2-xrgb2101010.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +5 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_joiner@basic-big-join=
er.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/15460">i915#15460</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_joiner@basic-force-bi=
g-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/15459">i915#15459</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@kms_joiner@invalid-modeset=
-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/15460">i915#15460</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_joiner@switch-modeset-=
ultra-joiner-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/15638">i915#15638</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/15722">i915#15722</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-4/igt@kms_joiner@switch-modeset-=
ultra-joiner-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/15638">i915#15638</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/15722">i915#15722</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_plane@pixel-format-4-=
tiled-bmg-ccs-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping:<=
/p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_plane@pixel-format-4-=
tiled-mtl-rc-ccs-modifier-source-clamping.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +1=
 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_plane@pixel-format-y-t=
iled-ccs-modifier-source-clamping.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier-source-clamp=
ing:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_plane@pixel-format-y-=
tiled-gen12-rc-ccs-cc-modifier-source-clamping.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-modifier-source-clamping:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_plane@pixel-format-y-t=
iled-modifier-source-clamping.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-75.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i91=
5#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@p=
ipe-c:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_plane_scaling@planes-=
upscale-factor-0-25-downscale-factor-0-75@pipe-c.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329<=
/a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_pm_lpsp@kms-lpsp.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/9340">i915#9340</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/9340">i915#9340</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-d=
g2-3/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) +3 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-dg1-12/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
167783v1/shard-dg1-15/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073=
">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-glk11/igt@kms_pm_rpm@system-suspend-=
modeset.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/10553">i915#10553</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_prime@basic-crc-hybrid=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_properties@get_properties-sanity-atomic:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-dg1-12/igt@kms_properties@get_properties-sanity-atomic.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_167783v1/shard-dg1-13/igt@kms_properties@get_properties-sanity-atom=
ic.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_psr2_sf@fbc-pr-overlay=
-plane-move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-primar=
y-plane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_psr2_sf@fbc-psr2-curso=
r-plane-update-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-glk8/igt@kms_psr2_sf@fbc-psr2-overla=
y-plane-update-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +7 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-over=
lay-plane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/12316">i915#12316</a>) +2 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area@pipe-a-edp-1:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-over=
lay-plane-update-sf-dmg-area@pipe-a-edp-1.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808">i915#9808</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_psr2_sf@pr-overlay-pl=
ane-move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-glk10/igt@kms_psr2_sf@pr-overlay-pla=
ne-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-glk11/igt@kms_psr2_sf@psr2-primary-p=
lane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-sprite-plane-onoff:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_psr@fbc-pr-sprite-plan=
e-onoff.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-plane-move:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_psr@fbc-psr-cursor-pl=
ane-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9732">i915#9732</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-plane-onoff:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_psr@fbc-psr-cursor-pl=
ane-onoff.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-cursor-plane-move:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_psr@fbc-psr2-cursor-p=
lane-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9688">i915#9688</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-10/igt@kms_psr@pr-cursor-mmap-cp=
u.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/9732">i915#9732</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-gtt@edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-6/igt@kms_psr@psr-primary-mmap-=
gtt@edp-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/4077">i915#4077</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-pixel-format:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@kms_rotation_crc@bad-pixel=
-format.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/12755">i915#12755</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/15867">i915#15867</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-5/igt@kms_rotation_crc@primary-=
4-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-10/igt@kms_rotation_crc@primary-=
y-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-6/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/12755">i915#12755</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/15867">i915#15867</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-mtlp-5/igt@kms_selftest@drm_framebuf=
fer.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13179">i915#13179</a>) +1 other test abort</li>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-glk5/igt@kms_selftest@drm_framebuffe=
r.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/13179">i915#13179</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-tglu-7/igt@kms_setmode@basic.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-tgl=
u-6/igt@kms_setmode@basic.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/15106">i915#15106</a>) +1 other test fail=
</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_setmode@basic-clone-si=
ngle-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-1/igt@kms_setmode@basic@pipe-b-hdmi-a-2.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167=
783v1/shard-rkl-6/igt@kms_setmode@basic@pipe-b-hdmi-a-2.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15106">i915=
#15106</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_tiled_display@basic-te=
st-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-5/igt@kms_vblank@ts-continuation-dpms-suspend.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_167783v1/shard-rkl-6/igt@kms_vblank@ts-continuation-dpms-suspend.html">I=
NCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/12276">i915#12276</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_vblank@ts-continuation=
-dpms-suspend@pipe-a-hdmi-a-2.html">INCOMPLETE</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/12276">i915#12276</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-suspend:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-glk11/igt@kms_vblank@ts-continuation=
-suspend.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12276">i915#12276</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@lobf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_vrr@lobf.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920=
">i915#11920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-tglu-1/igt@kms_vrr@seamless-rr-switc=
h-virtual.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config-invalid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@perf@global-sseu-config-in=
valid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/7387">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-glk4/igt@perf_pmu@rc6-suspend.html">=
INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/13356">i915#13356</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/14242">i915#14242</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/16236">i915#16236</a>)</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@create:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-glk3/igt@vgem_basic@create.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
6296">i915#16296</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-dg2-1/igt@gem_ccs@suspend-resume@linear-compressed-comp=
fmt0-smem-lmem0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/13356">i915#13356</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/16348">i915#16348</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shar=
d-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_freq@sysfs@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-dg2-8/igt@gem_ctx_freq@sysfs@gt0.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9561">i915#956=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
167783v1/shard-dg2-4/igt@gem_ctx_freq@sysfs@gt0.html">PASS</a> +1 other tes=
t pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_big@single:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-mtlp-8/igt@gem_exec_big@single.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15871">i915#158=
71</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_167783v1/shard-mtlp-6/igt@gem_exec_big@single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-dg2-4/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356=
">i915#13356</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_167783v1/shard-dg2-3/igt@gem_exec_suspend@basic-s0.html">PASS</a=
> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-1/igt@gem_pxp@verify-pxp-key-change-after-suspend-r=
esume.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/15131">i915#15131</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-4/igt@gem_pxp@verify-pxp-=
key-change-after-suspend-resume.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_18611/shard-dg2-3/igt@i915_module_load@load.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-6/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_18611/shard-dg2-3/igt@i915_module_load@load.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/sha=
rd-dg2-7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-3/igt@i915_module_load@l=
oad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_18611/shard-dg2-8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-1/igt@i915_=
module_load@load.html">SKIP</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_18611/shard-dg2-7/igt@i915_module_load@load.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg=
2-8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-4/igt@i915_module_load@load.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
8611/shard-dg2-4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-5/igt@i915_modul=
e_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_18611/shard-dg2-8/igt@i915_module_load@load.html">PASS</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-5/i=
gt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_18611/shard-dg2-6/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/=
shard-dg2-7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-5/igt@i915_module_loa=
d@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_18611/shard-dg2-5/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-7/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_18611/shard-dg2-6/igt@i915_module_load@load.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shar=
d-dg2-1/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/CI_DRM_18611/shard-dg2-4/igt@i915_module_load@lo=
ad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_18611/shard-dg2-6/igt@i915_module_load@load.html">PASS</a>) (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16165">i915#16165</=
a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16=
7783v1/shard-dg2-10/igt@i915_module_load@load.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-4/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-1/igt@i915_module_load@load.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
67783v1/shard-dg2-5/igt@i915_module_load@load.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-5/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-5/igt@i915_module_load@load.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
67783v1/shard-dg2-4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-6/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-6/igt@i915_module_load@load.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
67783v1/shard-dg2-1/igt@i915_module_load@load.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-6/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-4/igt@i915_module_load@load.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
67783v1/shard-dg2-6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-1/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-7/igt@i915_module_load@load.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
67783v1/shard-dg2-7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-3/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-1/igt@i915_module_load@load.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
67783v1/shard-dg2-7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-7/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@i915_module_load@load.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
67783v1/shard-dg2-3/igt@i915_module_load@load.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@i915_module_load@load.html=
">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-dg2-3/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOM=
PLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/13356">i915#13356</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/13820">i915#13820</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-8/igt@i915_pm_freq_ap=
i@freq-suspend@gt0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i9=
15#4817</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_167783v1/shard-rkl-2/igt@i915_suspend@forcewake.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_async_flips@async-flip-suspend-resume.htm=
l">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/12761">i915#12761</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_async_flips@async-f=
lip-suspend-resume.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15733">i915#15733</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-mtlp-1/igt@k=
ms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-glk9/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-i=
ndfb-draw-mmap-gtt.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_167783v1/shard-glk8/igt@kms_frontbuffer_tracking=
@hdr-1p-primscrn-pri-indfb-draw-mmap-gtt.html">PASS</a> +12 other tests pas=
s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-1p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-5/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-spr-=
indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/15989">i915#15989</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_fro=
ntbuffer_tracking@hdr-1p-primscrn-spr-indfb-draw-mmap-wc.html">PASS</a> +5 =
other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-4/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#150=
73</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_167783v1/shard-rkl-5/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> +4 other test=
s pass</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-dg1-19/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#150=
73</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_167783v1/shard-dg1-14/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> +2 other tes=
ts pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15073">i915#15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp-=
stress.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-dg1-17/igt@kms_setmode@basic.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15106">i915#15106<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16=
7783v1/shard-dg1-19/igt@kms_setmode@basic.html">PASS</a> +2 other tests pas=
s</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@drm_buddy@drm_buddy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@drm_buddy@drm_buddy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/15678">i915#15678</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_167783v1/shard-rkl-7/igt@drm_buddy@drm_buddy.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15678=
">i915#15678</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-clear@smem0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-mtlp-8/igt@gem_create@create-clear@smem0.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
16020">i915#16020</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_167783v1/shard-mtlp-6/igt@gem_create@create-clear@smem0.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/15871">i915#15871</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@gem_exec_balancer@parallel-balancer.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-8/igt@gem_exec_balancer@par=
allel-balancer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/4525">i915#4525</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-5/igt@gem_exec_balancer@parallel-keep-submit-fence.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@gem_exec_balancer@parallel-k=
eep-submit-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-4/igt@gem_exec_reloc@basic-gtt.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3=
281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_167783v1/shard-rkl-6/igt@gem_exec_reloc@basic-gtt.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-active:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-active.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3281">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@gem_exec_reloc@basic-g=
tt-wc-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@gem_lmem_swapping@parallel-random.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/4613">i915#4613</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@gem_lmem_swapping@paral=
lel-random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-5/igt@gem_lmem_swapping@verify-random.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613"=
>i915#4613</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_167783v1/shard-rkl-6/igt@gem_lmem_swapping@verify-random.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-u=
ncached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-8/igt@gem_=
partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a=
>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-5/igt@gem_pread@snoop.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v=
1/shard-rkl-6/igt@gem_pread@snoop.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282=
</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-context:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-context.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717"=
>i915#13717</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_167783v1/shard-rkl-8/igt@gem_pxp@hw-rejects-pxp-c=
ontext.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/13717">i915#13717</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/8411">i915#8411</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@gem_set_tiling_vs_=
blt@untiled-to-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3323">i915#3323</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-8/igt@gem_userptr_b=
lits@dmabuf-sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-unsync:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@gem_userptr_blits@readonly-unsync.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3297">i915#3297</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@gem_userptr_blits@reado=
nly-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@gen9_exec_parse@batch-without-end.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/2527">i915#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_167783v1/shard-rkl-8/igt@gen9_exec_parse@batch-w=
ithout-end.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-5/igt@gen9_exec_parse@bb-start-param.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">=
i915#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_167783v1/shard-rkl-6/igt@gen9_exec_parse@bb-start-param.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@i915_query@query-topology-unsupported.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/16079">i915#16079</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-8/igt@i915_query@query-=
topology-unsupported.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/16079">i915#16079</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14=
544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/7707">i915#7707</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_167783v1/shard-rkl-7/igt@intel_hwmon@hwmon-read.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/770=
7">i915#7707</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-dg1-15/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/5286">i915#5286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_167783v1/shard-dg1-16/igt@kms_big_fb@4-tiled-16=
bpp-rotate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/4423">i915#4423</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-5/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5=
286">i915#5286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_167783v1/shard-rkl-6/igt@kms_big_fb@4-tiled-32bpp-rotate-180.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate=
-180-hflip-async-flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-=
rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-fli=
p.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_big_fb@linear-16bpp-rotate-270.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3638">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_big_fb@linear-16bp=
p-rotate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-4/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-=
180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3828">i915#3828</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_big_fb@linear-=
max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#382=
8</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-mtlp-8/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html">IN=
COMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_167783v1/shard-mtlp-6/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html">S=
KIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-1/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SK=
IP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
167783v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a>) +25 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/12313">i915#12313</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_ccs@bad-rot=
ation-90-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a=
-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-=
rc-ccs-cc@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/sh=
ard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-a=
-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-cc=
s-cc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-r=
kl-2/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i=
915#14098</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/6095">i915#6095</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-m=
c-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_cc=
s@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_cdclk@plane-scaling.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#1=
4544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3742">i915#3742</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_cdclk@plane-scaling.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3=
742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-stress-resolutio=
n-non-4k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/sha=
rd-rkl-7/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/7828">i915#7828</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-dg1-17/igt@kms_chamelium_hpd@common-hpd-after-suspend.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/4423">i915#4423</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg1-19/ig=
t@kms_chamelium_hpd@common-hpd-after-suspend.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">=
i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-4/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_chameliu=
m_hpd@dp-hpd-enable-disable-mode.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/78=
28">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_content_protection@content-type-change.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/15865">i915#15865</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_content_=
protection@content-type-change.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>) +2 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-5/igt@kms_content_protection@mei-interface.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
15865">i915#15865</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_content_protection@mei-interfa=
ce.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/15865">i915#15865</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-curs=
or-varying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-2=
/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4=
103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_cursor_legacy@cursora-vs-flipb-legacy.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@kms_cursor_legacy@cursora-vs-=
flipb-legacy.html">SKIP</a> +61 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3804">i915#3804</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_dither=
@fb-8bpc-vs-panel-6bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-=
a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3804">i915#3804</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_dith=
er@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dsc-fallback:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_dp_linktrain_fallback@dsc-fallback.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/13707">i915#13707</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-8/igt@kms_dp_linktrain=
_fallback@dsc-fallback.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/13707">i915#13707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3840">i915#3840</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-8/igt@kms_dsc@dsc-fractiona=
l-bpp-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_dsc@dsc=
-with-output-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_flip@2x-flip-vs-fences-interruptible.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_flip@2x-flip=
-vs-fences-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-glk2/igt@kms_flip@2x-flip-vs-suspend.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1274=
5">i915#12745</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/4839">i915#4839</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/6113">i915#6113</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-glk4/igt@kms_flip@2x=
-flip-vs-suspend.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp=
-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1=
/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rccc=
s-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp=
-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt=
@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/15643">i915#15643</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-=
indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_front=
buffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#=
14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/1825">i915#1825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-dg1-15/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-dr=
aw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/15990">i915#15990</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg1-16/igt@kms_frontbuff=
er_tracking@fbchdr-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i9=
15#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-c=
ur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/ig=
t@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3023">i915#3023</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-m=
map-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shar=
d-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15=
102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3023">i915#3023</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-r=
ender.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/10433">i915#10433</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-7/igt@kms_=
frontbuffer_tracking@fbcpsr-rgb565-draw-render.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a=
>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscre=
en-pri-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shar=
d-rkl-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-=
blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15102">i915#15102</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-pwrite=
:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primsc=
rn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg1-16/igt@=
kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-pwrite.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-rte:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-rte.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/15102">i915#15102</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcp=
srhdr-1p-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +7 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-2p-pri-indfb-multidraw:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-dg1-18/igt@kms_frontbuffer_tracking@hdr-2p-pri-indfb-mu=
ltidraw.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_167783v1/shard-dg1-12/igt@kms_frontbuffer_tracking@hdr-2p-p=
ri-indfb-multidraw.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/4423">i915#4423</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pr=
i-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/15104">i915#15104</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard=
-dg1-16/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-w=
c.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15104">i915#15104</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/15990">i915#15990</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-=
indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg2-4/igt@kms_frontbuffer=
_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i91=
5#15102</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-=
indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl=
-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/1825">i915#1825</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr=
-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-dg1-14/igt@kms_frontbu=
ffer_tracking@psr-2p-scndscrn-spr-indfb-draw-blt.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-5/igt@kms_joiner@basic-force-big-joiner.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/154=
59">i915#15459</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_167783v1/shard-rkl-6/igt@kms_joiner@basic-force-big-joiner.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/15459">i915#15459</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/15458">i915#15458</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_167783v1/shard-rkl-8/igt@kms_joiner@basic-ultra-jo=
iner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/15458">i915#15458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-chec=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/15815">i915#15815</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_mult=
ipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/15815">i915#15815</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifi=
er-source-clamping.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-r=
kl-8/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/15709">i915#15709</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-5/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-mod=
ifier-source-clamping.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_=
plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15709">i915#15709</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-y:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-y.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958"=
>i915#13958</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_167783v1/shard-rkl-2/igt@kms_plane_multiple@2x-ti=
ling-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:</=
p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-unity-scaling-=
with-rotation@pipe-b.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/15329">i915#15329</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_p=
lane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15329">i915#15329</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-1/igt@kms_pm_backlight@fade-with-suspend.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
343">i915#12343</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/5354">i915#5354</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_pm_backlight@fade-=
with-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/12343">i915#12343</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</=
li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15128">i915#151=
28</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_167783v1/shard-tglu-5/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15752">i915#15752</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-continuou=
s-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11520">i915#11520</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_p=
sr2_sf@pr-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)=
 +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-4/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-=
area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11520">i915#11520</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_psr2_sf@psr2-over=
lay-plane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)=
 +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-1/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915=
#9683</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_167783v1/shard-rkl-6/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915=
#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-plane-move:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-5/igt@kms_psr@fbc-psr-cursor-plane-move.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/107=
2">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_167783v1/shard-rkl-6/igt@kms_psr@fbc-psr-cursor-pl=
ane-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +6 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-render.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">=
i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_psr@fbc-=
psr2-sprite-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +11 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/5289">i915#5289</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-7/igt@kms_rotatio=
n_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-single-crtc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-6/igt@kms_setmode@invalid-clone-single-crtc.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_167783v1/shard-rkl-8/igt@kms_setmode@invalid=
-clone-single-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-4/igt@kms_vrr@max-min.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167783v=
1/shard-rkl-6/igt@kms_vrr@max-min.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906=
</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-1/igt@perf_pmu@rc6-suspend.html">ABORT</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131">i915#151=
31</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_167783v1/shard-rkl-6/igt@perf_pmu@rc6-suspend.html">INCOMPLETE</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520">i915#13=
520</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-5/igt@prime_vgem@fence-write-hang.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i91=
5#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_167783v1/shard-rkl-6/igt@prime_vgem@fence-write-hang.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18611/shard-rkl-4/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9=
917">i915#9917</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_167783v1/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-on.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18611 -&gt; Patchwork_167783v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18611: f059886850b97ea5c089703ba3e566a4f847fa19 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_8946: 8946<br />
  Patchwork_167783v1: f059886850b97ea5c089703ba3e566a4f847fa19 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============3961051006472968960==--
