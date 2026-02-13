Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eDTQBYoqj2kPKwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 14:43:38 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3478B136727
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Feb 2026 14:43:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5FF310E2F4;
	Fri, 13 Feb 2026 13:43:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05E2110E2F4;
 Fri, 13 Feb 2026 13:43:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4550744671024643622=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_Fixes_and_updates_when_u?=
 =?utf-8?q?sing_AUX_backlight_using_Luminance?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Feb 2026 13:43:32 -0000
Message-ID: <177099021298.252685.3883512119445824118@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260213091653.2250887-1-suraj.kandpal@intel.com>
In-Reply-To: <20260213091653.2250887-1-suraj.kandpal@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[emeril.freedesktop.org];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[intel-gfx@lists.freedesktop.org]
X-Rspamd-Queue-Id: 3478B136727
X-Rspamd-Action: no action

--===============4550744671024643622==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Fixes and updates when using AUX backlight using Luminance
URL   : https://patchwork.freedesktop.org/series/161578/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_17983_full -> Patchwork_161578v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_161578v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_161578v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_161578v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_hdmi_inject@inject-4k:
    - shard-mtlp:         [PASS][1] -> [SKIP][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-mtlp-8/igt@kms_hdmi_inject@inject-4k.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-mtlp-1/igt@kms_hdmi_inject@inject-4k.html

  
New tests
---------

  New tests have been introduced between CI_DRM_17983_full and Patchwork_161578v1_full:

### New IGT tests (5) ###

  * igt@kms_cursor_edge_walk@128x128-left-edge@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [3.33] s

  * igt@kms_cursor_edge_walk@128x128-left-edge@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [3.21] s

  * igt@kms_cursor_edge_walk@256x256-top-edge@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [3.32] s

  * igt@kms_cursor_edge_walk@256x256-top-edge@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [3.23] s

  * igt@kms_plane_scaling@invalid-num-scalers@pipe-d-hdmi-a-1-invalid-num-scalers:
    - Statuses : 2 pass(s)
    - Exec time: [0.03, 0.04] s

  

Known issues
------------

  Here are the changes found in Patchwork_161578v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-tglu:         NOTRUN -> [SKIP][3] ([i915#11078])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_buddy@drm_buddy:
    - shard-tglu-1:       NOTRUN -> [SKIP][4] ([i915#15678])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@drm_buddy@drm_buddy.html

  * igt@gem_basic@multigpu-create-close:
    - shard-dg2:          NOTRUN -> [SKIP][5] ([i915#7697])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-tglu-1:       NOTRUN -> [SKIP][6] ([i915#3555] / [i915#9323])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-tglu-1:       NOTRUN -> [SKIP][7] ([i915#13008])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-rkl:          NOTRUN -> [SKIP][8] ([i915#7697])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-dg2:          NOTRUN -> [FAIL][9] ([i915#15454])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@gem_create@create-ext-cpu-access-big.html
    - shard-rkl:          NOTRUN -> [SKIP][10] ([i915#6335])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_create@create-ext-set-pat:
    - shard-tglu:         NOTRUN -> [SKIP][11] ([i915#8562])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_persistence@heartbeat-many:
    - shard-dg2:          NOTRUN -> [SKIP][12] ([i915#8555])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@gem_ctx_persistence@heartbeat-many.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-tglu-1:       NOTRUN -> [SKIP][13] ([i915#280])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_exec_balancer@parallel:
    - shard-tglu:         NOTRUN -> [SKIP][14] ([i915#4525]) +1 other test skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
    - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#4525])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html

  * igt@gem_exec_balancer@sliced:
    - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#4812])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@gem_exec_balancer@sliced.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-rkl:          NOTRUN -> [SKIP][17] ([i915#6344])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_flush@basic-wb-prw-default:
    - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#3539] / [i915#4852]) +1 other test skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@gem_exec_flush@basic-wb-prw-default.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-dg2:          NOTRUN -> [SKIP][19] ([i915#3281]) +3 other tests skip
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@gem_exec_reloc@basic-write-read-active.html
    - shard-rkl:          NOTRUN -> [SKIP][20] ([i915#3281]) +5 other tests skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_exec_suspend@basic-s0@lmem0:
    - shard-dg2:          [PASS][21] -> [INCOMPLETE][22] ([i915#13356]) +1 other test incomplete
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-3/igt@gem_exec_suspend@basic-s0@lmem0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-7/igt@gem_exec_suspend@basic-s0@lmem0.html

  * igt@gem_fenced_exec_thrash@no-spare-fences:
    - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#4860])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@gem_fenced_exec_thrash@no-spare-fences.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-rkl:          NOTRUN -> [SKIP][24] ([i915#4613] / [i915#7582])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@heavy-verify-random-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][25] ([i915#4613]) +3 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@gem_lmem_swapping@heavy-verify-random-ccs.html

  * igt@gem_lmem_swapping@verify:
    - shard-tglu:         NOTRUN -> [SKIP][26] ([i915#4613]) +1 other test skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@gem_lmem_swapping@verify.html
    - shard-glk:          NOTRUN -> [SKIP][27] ([i915#4613])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-glk6/igt@gem_lmem_swapping@verify.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-tglu-1:       NOTRUN -> [SKIP][28] ([i915#4613])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap_gtt@pf-nonblock:
    - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#4077]) +5 other tests skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@gem_mmap_gtt@pf-nonblock.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          NOTRUN -> [SKIP][30] ([i915#3282]) +2 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pxp@hw-rejects-pxp-context:
    - shard-tglu:         NOTRUN -> [SKIP][31] ([i915#13398])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@gem_pxp@hw-rejects-pxp-context.html

  * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
    - shard-dg2:          NOTRUN -> [SKIP][32] ([i915#4270])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html

  * igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#5190] / [i915#8428])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs.html

  * igt@gem_softpin@noreloc-s3:
    - shard-rkl:          [PASS][34] -> [INCOMPLETE][35] ([i915#13809])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-8/igt@gem_softpin@noreloc-s3.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-3/igt@gem_softpin@noreloc-s3.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#3297])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_workarounds@suspend-resume:
    - shard-rkl:          [PASS][37] -> [ABORT][38] ([i915#15152])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-2/igt@gem_workarounds@suspend-resume.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-1/igt@gem_workarounds@suspend-resume.html

  * igt@gen7_exec_parse@bitmasks:
    - shard-dg2:          NOTRUN -> [SKIP][39] +2 other tests skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@gen7_exec_parse@bitmasks.html

  * igt@gen7_exec_parse@chained-batch:
    - shard-tglu-1:       NOTRUN -> [SKIP][40] +31 other tests skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@gen7_exec_parse@chained-batch.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-tglu-1:       NOTRUN -> [SKIP][41] ([i915#2527] / [i915#2856])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-tglu:         NOTRUN -> [SKIP][42] ([i915#2527] / [i915#2856]) +1 other test skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@gen9_exec_parse@bb-start-out.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#2856])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-rkl:          NOTRUN -> [SKIP][44] ([i915#2527]) +1 other test skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_module_load@resize-bar:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][45] ([i915#14545])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_freq_api@freq-reset:
    - shard-tglu-1:       NOTRUN -> [SKIP][46] ([i915#8399])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@i915_pm_freq_api@freq-reset.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-tglu:         [PASS][47] -> [WARN][48] ([i915#13790] / [i915#2681]) +1 other test warn
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-fence.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-3/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-rkl:          [PASS][49] -> [INCOMPLETE][50] ([i915#13356])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-5/igt@i915_pm_rpm@system-suspend-execbuf.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_pm_rps@thresholds-park:
    - shard-dg2:          NOTRUN -> [SKIP][51] ([i915#11681])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@i915_pm_rps@thresholds-park.html

  * igt@i915_pm_sseu@full-enable:
    - shard-tglu:         NOTRUN -> [SKIP][52] ([i915#4387])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#6188])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#5723])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_selftest@perf:
    - shard-dg2:          [PASS][55] -> [DMESG-WARN][56] ([i915#14545])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-1/igt@i915_selftest@perf.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-11/igt@i915_selftest@perf.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - shard-dg1:          [PASS][57] -> [DMESG-WARN][58] ([i915#4391] / [i915#4423])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg1-13/igt@i915_suspend@basic-s2idle-without-i915.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg1-12/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@i915_suspend@sysfs-reader:
    - shard-rkl:          [PASS][59] -> [INCOMPLETE][60] ([i915#4817])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-8/igt@i915_suspend@sysfs-reader.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_addfb_basic@clobberred-modifier:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#4212]) +1 other test skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_addfb_basic@clobberred-modifier.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [FAIL][62] ([i915#5956])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-1.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#1769] / [i915#3555]) +1 other test skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][64] ([i915#5286]) +2 other tests skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_big_fb@4-tiled-32bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-tglu-1:       NOTRUN -> [SKIP][65] ([i915#5286]) +3 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#5286]) +5 other tests skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [PASS][67] -> [FAIL][68] ([i915#5138])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#3828])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip.html
    - shard-tglu:         NOTRUN -> [SKIP][70] ([i915#3828])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#4538] / [i915#5190]) +3 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
    - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#3638]) +2 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-snb:          NOTRUN -> [SKIP][73] +8 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-snb6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#5190])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][75] ([i915#12313]) +1 other test skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#14544] / [i915#6095]) +5 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][77] ([i915#6095]) +34 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#10307] / [i915#10434] / [i915#6095]) +3 other tests skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-4/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][79] ([i915#14098] / [i915#14544] / [i915#6095]) +2 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][80] ([i915#12313])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][81] ([i915#6095]) +39 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#6095]) +49 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][83] ([i915#6095]) +111 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg1-12/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#12313])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#10307] / [i915#6095]) +155 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-c-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#14098] / [i915#6095]) +42 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-1:
    - shard-glk10:        NOTRUN -> [SKIP][87] +8 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-glk10/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#6095]) +59 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_cdclk@plane-scaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][89] ([i915#3742])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_cdclk@plane-scaling.html

  * igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#13783]) +3 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3.html

  * igt@kms_chamelium_audio@hdmi-audio-edid:
    - shard-tglu-1:       NOTRUN -> [SKIP][91] ([i915#11151] / [i915#7828]) +4 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_chamelium_audio@hdmi-audio-edid.html

  * igt@kms_chamelium_edid@dp-edid-change-during-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][92] ([i915#11151] / [i915#7828]) +3 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_chamelium_edid@dp-edid-change-during-suspend.html

  * igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:
    - shard-dg2:          NOTRUN -> [SKIP][93] ([i915#11151] / [i915#7828]) +3 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_hpd@hdmi-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#11151] / [i915#7828]) +4 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_chamelium_hpd@hdmi-hpd-fast.html

  * igt@kms_content_protection@atomic:
    - shard-tglu-1:       NOTRUN -> [SKIP][95] ([i915#6944] / [i915#7116] / [i915#7118] / [i915#9424])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-hdcp14:
    - shard-tglu-1:       NOTRUN -> [SKIP][96] ([i915#6944])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_content_protection@atomic-hdcp14.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#15330] / [i915#3116])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@dp-mst-type-1-suspend-resume:
    - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#15330]) +1 other test skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html

  * igt@kms_content_protection@lic-type-0-hdcp14@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][99] ([i915#7173])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-11/igt@kms_content_protection@lic-type-0-hdcp14@pipe-a-dp-3.html

  * igt@kms_content_protection@lic-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][100] ([i915#6944] / [i915#9424])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@suspend-resume:
    - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#6944])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_content_protection@suspend-resume.html
    - shard-dg2:          NOTRUN -> [SKIP][102] ([i915#6944])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_content_protection@suspend-resume.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#13049]) +3 other tests skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85:
    - shard-tglu:         [PASS][104] -> [FAIL][105] ([i915#13566]) +1 other test fail
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-tglu-6/igt@kms_cursor_crc@cursor-onscreen-256x85.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-3/igt@kms_cursor_crc@cursor-onscreen-256x85.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2:
    - shard-rkl:          [PASS][106] -> [FAIL][107] ([i915#13566]) +1 other test fail
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2.html

  * igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][108] ([i915#13566]) +2 other tests fail
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-2.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#13049]) +2 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-tglu-1:       NOTRUN -> [SKIP][110] ([i915#13049]) +1 other test skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-rkl:          NOTRUN -> [SKIP][111] ([i915#4103])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - shard-tglu:         NOTRUN -> [SKIP][112] ([i915#4103])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#13046] / [i915#5354]) +1 other test skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-dg2:          [PASS][114] -> [SKIP][115] ([i915#3555])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#14544] / [i915#3804])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dp_link_training@uhbr-mst:
    - shard-tglu:         NOTRUN -> [SKIP][117] ([i915#13748])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_dp_link_training@uhbr-mst.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#3840])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
    - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#3840])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#3555] / [i915#3840])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-tglu-1:       NOTRUN -> [SKIP][121] ([i915#3840] / [i915#9053])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_feature_discovery@psr1:
    - shard-tglu-1:       NOTRUN -> [SKIP][122] ([i915#658])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_feature_discovery@psr1.html

  * igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][123] ([i915#9934])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#9934]) +2 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-snb:          [PASS][125] -> [TIMEOUT][126] ([i915#14033] / [i915#14350])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][127] -> [TIMEOUT][128] ([i915#14033])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-nonexisting-fb-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][129] ([i915#3637] / [i915#9934]) +2 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_flip@2x-nonexisting-fb-interruptible.html

  * igt@kms_flip@2x-plain-flip:
    - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#9934]) +3 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
    - shard-tglu-1:       NOTRUN -> [SKIP][131] ([i915#3637] / [i915#9934]) +1 other test skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-glk:          NOTRUN -> [INCOMPLETE][132] ([i915#12745] / [i915#4839] / [i915#6113])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][133] ([i915#12745])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a2:
    - shard-rkl:          [PASS][134] -> [INCOMPLETE][135] ([i915#6113]) +1 other test incomplete
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-4/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a2.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-3/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#15643])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][137] ([i915#15643]) +2 other tests skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#15643]) +2 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#15643] / [i915#5190])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][140] ([i915#1825]) +28 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-fullscreen:
    - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#5354]) +9 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-tglu:         NOTRUN -> [SKIP][142] ([i915#5439])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#8708]) +7 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][144] +15 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#15102] / [i915#3023]) +11 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][146] ([i915#15102])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#15102]) +3 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-wc.html
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#15104]) +1 other test skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-tglu-1:       NOTRUN -> [SKIP][149] ([i915#15102]) +9 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:
    - shard-tglu:         NOTRUN -> [SKIP][150] ([i915#15102]) +8 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][151] +21 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [SKIP][152] ([i915#15102] / [i915#3458]) +7 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_hdr@bpc-switch:
    - shard-dg2:          [PASS][153] -> [SKIP][154] ([i915#3555] / [i915#8228])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@kms_hdr@bpc-switch.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-1/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-rkl:          [PASS][155] -> [SKIP][156] ([i915#3555] / [i915#8228])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_hdr@bpc-switch-dpms.html
    - shard-tglu-1:       NOTRUN -> [SKIP][157] ([i915#3555] / [i915#8228]) +1 other test skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][158] ([i915#3555] / [i915#8228])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][159] ([i915#15638])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-tglu:         NOTRUN -> [SKIP][160] ([i915#1839])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_panel_fitting@legacy:
    - shard-tglu:         NOTRUN -> [SKIP][161] ([i915#6301])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_panel_fitting@legacy.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][162] ([i915#12756] / [i915#13409] / [i915#13476])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-glk10/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][163] ([i915#13409] / [i915#13476])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-glk10/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2.html

  * igt@kms_pipe_stress@stress-xrgb8888-4tiled:
    - shard-tglu:         NOTRUN -> [SKIP][164] ([i915#14712])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_pipe_stress@stress-xrgb8888-4tiled.html

  * igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier:
    - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#8825]) +3 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier.html

  * igt@kms_plane@pixel-format-4-tiled-modifier:
    - shard-glk:          NOTRUN -> [SKIP][166] +75 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-glk6/igt@kms_plane@pixel-format-4-tiled-modifier.html

  * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier:
    - shard-dg2:          NOTRUN -> [SKIP][167] ([i915#8825]) +1 other test skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier.html

  * igt@kms_plane@pixel-format-y-tiled-ccs-modifier:
    - shard-tglu:         NOTRUN -> [SKIP][168] ([i915#8825]) +1 other test skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_plane@pixel-format-y-tiled-ccs-modifier.html

  * igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping:
    - shard-tglu-1:       NOTRUN -> [SKIP][169] ([i915#8825])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b:
    - shard-rkl:          [PASS][170] -> [ABORT][171] ([i915#15132]) +1 other test abort
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-5/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b.html

  * igt@kms_plane_lowres@tiling-y:
    - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#8821])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@kms_plane_lowres@tiling-y.html

  * igt@kms_plane_multiple@2x-tiling-yf:
    - shard-tglu-1:       NOTRUN -> [SKIP][173] ([i915#13958]) +1 other test skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_plane_multiple@2x-tiling-yf.html

  * igt@kms_plane_multiple@tiling-4:
    - shard-rkl:          NOTRUN -> [SKIP][174] ([i915#14259])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@kms_plane_multiple@tiling-4.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c:
    - shard-tglu:         NOTRUN -> [SKIP][175] ([i915#15329]) +9 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#15329] / [i915#3555])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
    - shard-rkl:          NOTRUN -> [SKIP][177] ([i915#15329]) +2 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
    - shard-tglu-1:       NOTRUN -> [SKIP][178] ([i915#15329]) +4 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][179] ([i915#12343])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_pm_backlight@brightness-with-dpms.html
    - shard-dg2:          NOTRUN -> [SKIP][180] ([i915#12343])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][181] ([i915#9812])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-tglu-1:       NOTRUN -> [SKIP][182] ([i915#3828])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#8430])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-dg2:          [PASS][184] -> [SKIP][185] ([i915#15073])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
    - shard-dg1:          [PASS][186] -> [SKIP][187] ([i915#15073])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg1-13/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg1-14/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-tglu:         NOTRUN -> [SKIP][188] ([i915#15073])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_pm_rpm@dpms-non-lpsp.html
    - shard-rkl:          NOTRUN -> [SKIP][189] ([i915#15073])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@i2c:
    - shard-dg1:          [PASS][190] -> [DMESG-WARN][191] ([i915#4423]) +1 other test dmesg-warn
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg1-18/igt@kms_pm_rpm@i2c.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg1-18/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [PASS][192] -> [SKIP][193] ([i915#15073]) +1 other test skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-1/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#15073])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-rkl:          [PASS][195] -> [SKIP][196] ([i915#14544] / [i915#15073])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-tglu-1:       NOTRUN -> [SKIP][197] ([i915#6524])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:
    - shard-dg2:          NOTRUN -> [SKIP][198] ([i915#11520]) +2 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#11520]) +5 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
    - shard-tglu-1:       NOTRUN -> [SKIP][200] ([i915#11520]) +3 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area:
    - shard-tglu:         NOTRUN -> [SKIP][201] ([i915#11520]) +2 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-cursor-plane-update-sf:
    - shard-glk:          NOTRUN -> [SKIP][202] ([i915#11520])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-glk6/igt@kms_psr2_sf@psr2-cursor-plane-update-sf.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-rkl:          NOTRUN -> [SKIP][203] ([i915#9683])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_psr2_su@page_flip-xrgb8888.html
    - shard-tglu:         NOTRUN -> [SKIP][204] ([i915#9683])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-psr2-no-drrs:
    - shard-tglu:         NOTRUN -> [SKIP][205] ([i915#9732]) +9 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_psr@fbc-psr2-no-drrs.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#1072] / [i915#9732]) +14 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_psr@psr-cursor-plane-onoff:
    - shard-tglu-1:       NOTRUN -> [SKIP][207] ([i915#9732]) +9 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_psr@psr-cursor-plane-onoff.html

  * igt@kms_psr@psr-primary-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][208] ([i915#1072] / [i915#9732]) +7 other tests skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_psr@psr-primary-mmap-cpu.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#9685])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglu:         NOTRUN -> [SKIP][210] ([i915#9685])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@exhaust-fences:
    - shard-dg2:          NOTRUN -> [SKIP][211] ([i915#4235])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@kms_rotation_crc@exhaust-fences.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#5289])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
    - shard-tglu:         NOTRUN -> [SKIP][213] ([i915#5289])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-tglu-1:       NOTRUN -> [SKIP][214] ([i915#5289]) +1 other test skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
    - shard-dg2:          NOTRUN -> [SKIP][215] ([i915#12755]) +1 other test skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-rkl:          NOTRUN -> [SKIP][216] ([i915#8623])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglu:         NOTRUN -> [SKIP][217] ([i915#8623])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vblank@ts-continuation-suspend:
    - shard-rkl:          [PASS][218] -> [INCOMPLETE][219] ([i915#12276])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-5/igt@kms_vblank@ts-continuation-suspend.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_vblank@ts-continuation-suspend.html

  * igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][220] ([i915#12276])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2.html

  * igt@kms_vrr@flip-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#15243] / [i915#3555])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@kms_vrr@flip-suspend.html

  * igt@kms_vrr@max-min:
    - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#9906])
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_vrr@max-min.html
    - shard-rkl:          NOTRUN -> [SKIP][223] ([i915#9906])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_vrr@max-min.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-rkl:          NOTRUN -> [SKIP][224] ([i915#2433])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@perf@unprivileged-single-ctx-counters.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-tglu:         NOTRUN -> [FAIL][225] ([i915#12910])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each@numvfs-2:
    - shard-tglu-1:       NOTRUN -> [FAIL][226] ([i915#12910]) +8 other tests fail
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@sriov_basic@enable-vfs-bind-unbind-each@numvfs-2.html

  
#### Possible fixes ####

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [INCOMPLETE][227] ([i915#13356]) -> [PASS][228] +1 other test pass
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-5/igt@gem_ccs@suspend-resume.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          [INCOMPLETE][229] ([i915#12392] / [i915#13356]) -> [PASS][230]
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_exec_schedule@preempt-self:
    - shard-dg2:          [SKIP][231] ([i915#2575]) -> [PASS][232] +24 other tests pass
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@gem_exec_schedule@preempt-self.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@gem_exec_schedule@preempt-self.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-rkl:          [INCOMPLETE][233] ([i915#13356]) -> [PASS][234] +1 other test pass
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-4/igt@gem_exec_suspend@basic-s3.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-8/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-snb:          [ABORT][235] ([i915#14871]) -> [PASS][236] +1 other test pass
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-snb5/igt@gem_exec_suspend@basic-s3@smem.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-snb6/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_exec_whisper@basic-contexts-forked:
    - shard-dg2:          [FAIL][237] -> [PASS][238]
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-6/igt@gem_exec_whisper@basic-contexts-forked.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-1/igt@gem_exec_whisper@basic-contexts-forked.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-dg1:          [FAIL][239] -> [PASS][240]
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg1-13/igt@gem_lmem_swapping@smem-oom.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg1-12/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg1:          [CRASH][241] ([i915#5493]) -> [PASS][242]
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-rkl:          [ABORT][243] ([i915#15152]) -> [PASS][244]
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-1/igt@gem_workarounds@suspend-resume-fd.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_module_load@load:
    - shard-dg2:          ([PASS][245], [PASS][246], [PASS][247], [PASS][248], [PASS][249], [PASS][250], [PASS][251], [PASS][252], [PASS][253], [PASS][254], [PASS][255], [PASS][256], [PASS][257], [PASS][258], [FAIL][259], [PASS][260], [PASS][261], [PASS][262], [PASS][263], [PASS][264], [PASS][265], [PASS][266], [PASS][267], [PASS][268], [PASS][269]) -> ([PASS][270], [PASS][271], [PASS][272], [PASS][273], [PASS][274], [PASS][275], [PASS][276], [PASS][277], [PASS][278], [PASS][279], [PASS][280], [PASS][281], [PASS][282], [PASS][283], [PASS][284], [PASS][285], [PASS][286], [PASS][287], [PASS][288], [PASS][289], [PASS][290], [PASS][291], [PASS][292], [PASS][293], [PASS][294])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-1/igt@i915_module_load@load.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-7/igt@i915_module_load@load.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@i915_module_load@load.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-3/igt@i915_module_load@load.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-5/igt@i915_module_load@load.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-1/igt@i915_module_load@load.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-5/igt@i915_module_load@load.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-8/igt@i915_module_load@load.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-4/igt@i915_module_load@load.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-8/igt@i915_module_load@load.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-3/igt@i915_module_load@load.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-3/igt@i915_module_load@load.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-6/igt@i915_module_load@load.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-4/igt@i915_module_load@load.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@i915_module_load@load.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-8/igt@i915_module_load@load.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-6/igt@i915_module_load@load.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-7/igt@i915_module_load@load.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@i915_module_load@load.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-6/igt@i915_module_load@load.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-7/igt@i915_module_load@load.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-4/igt@i915_module_load@load.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-5/igt@i915_module_load@load.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-1/igt@i915_module_load@load.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-4/igt@i915_module_load@load.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-11/igt@i915_module_load@load.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-11/igt@i915_module_load@load.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-11/igt@i915_module_load@load.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-1/igt@i915_module_load@load.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-1/igt@i915_module_load@load.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-1/igt@i915_module_load@load.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-3/igt@i915_module_load@load.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-3/igt@i915_module_load@load.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-3/igt@i915_module_load@load.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-4/igt@i915_module_load@load.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-4/igt@i915_module_load@load.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-4/igt@i915_module_load@load.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@i915_module_load@load.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@i915_module_load@load.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@i915_module_load@load.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@i915_module_load@load.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@i915_module_load@load.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@i915_module_load@load.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@i915_module_load@load.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-7/igt@i915_module_load@load.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-7/igt@i915_module_load@load.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@i915_module_load@load.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@i915_module_load@load.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@i915_module_load@load.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@i915_module_load@load.html

  * igt@i915_selftest@live:
    - shard-mtlp:         [DMESG-FAIL][295] ([i915#12061] / [i915#15560]) -> [PASS][296]
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-mtlp-1/igt@i915_selftest@live.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-mtlp-4/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [DMESG-FAIL][297] ([i915#12061]) -> [PASS][298]
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-mtlp-1/igt@i915_selftest@live@workarounds.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-mtlp-4/igt@i915_selftest@live@workarounds.html

  * igt@kms_3d@basic:
    - shard-mtlp:         [SKIP][299] -> [PASS][300]
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-mtlp-1/igt@kms_3d@basic.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-mtlp-2/igt@kms_3d@basic.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-dg1:          [FAIL][301] ([i915#14888]) -> [PASS][302]
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg1-13/igt@kms_async_flips@alternate-sync-async-flip.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg1-14/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_atomic_transition@plane-all-modeset-transition:
    - shard-dg2:          [FAIL][303] ([i915#5956]) -> [PASS][304]
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-11/igt@kms_atomic_transition@plane-all-modeset-transition.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-dg2:          [SKIP][305] -> [PASS][306] +9 other tests pass
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-dg2:          [SKIP][307] ([i915#13707]) -> [PASS][308]
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-8/igt@kms_dp_linktrain_fallback@dp-fallback.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-11/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:
    - shard-snb:          [TIMEOUT][309] ([i915#14033]) -> [PASS][310] +1 other test pass
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-snb4/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-snb7/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.html

  * igt@kms_force_connector_basic@force-edid:
    - shard-mtlp:         [SKIP][311] ([i915#15672]) -> [PASS][312]
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-mtlp-1/igt@kms_force_connector_basic@force-edid.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-mtlp-4/igt@kms_force_connector_basic@force-edid.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-rkl:          [INCOMPLETE][313] ([i915#10056]) -> [PASS][314]
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch:
    - shard-rkl:          [SKIP][315] ([i915#3555] / [i915#8228]) -> [PASS][316]
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-8/igt@kms_hdr@bpc-switch.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-dg2:          [SKIP][317] ([i915#3555] / [i915#8228]) -> [PASS][318] +1 other test pass
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-7/igt@kms_hdr@bpc-switch-suspend.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-11/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane@plane-panning-bottom-right-suspend:
    - shard-dg1:          [DMESG-WARN][319] ([i915#4423]) -> [PASS][320] +4 other tests pass
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg1-12/igt@kms_plane@plane-panning-bottom-right-suspend.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg1-13/igt@kms_plane@plane-panning-bottom-right-suspend.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation:
    - shard-dg2:          [SKIP][321] ([i915#9423]) -> [PASS][322]
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg2:          [SKIP][323] ([i915#15073]) -> [PASS][324]
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-rkl:          [SKIP][325] ([i915#15073]) -> [PASS][326]
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-8/igt@kms_pm_rpm@modeset-non-lpsp.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@perf_pmu@busy-accuracy-98:
    - shard-dg2:          [SKIP][327] ([i915#15607]) -> [PASS][328]
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@perf_pmu@busy-accuracy-98.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@perf_pmu@busy-accuracy-98.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [FAIL][329] ([i915#4349]) -> [PASS][330] +4 other tests pass
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-4/igt@perf_pmu@busy-double-start@vecs1.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@syncobj_timeline@wait-all-for-submit-delayed-submit:
    - shard-dg2:          [SKIP][331] ([i915#15689]) -> [PASS][332] +30 other tests pass
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@syncobj_timeline@wait-all-for-submit-delayed-submit.html

  
#### Warnings ####

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-rkl:          [SKIP][333] ([i915#11078]) -> [SKIP][334] ([i915#11078] / [i915#14544])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-5/igt@device_reset@unbind-cold-reset-rebind.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@drm_buddy@drm_buddy:
    - shard-rkl:          [SKIP][335] ([i915#14544] / [i915#15678]) -> [SKIP][336] ([i915#15678])
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@drm_buddy@drm_buddy.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@drm_buddy@drm_buddy.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-rkl:          [SKIP][337] ([i915#14544] / [i915#3555] / [i915#9323]) -> [SKIP][338] ([i915#3555] / [i915#9323])
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-rkl:          [SKIP][339] ([i915#13008] / [i915#14544]) -> [SKIP][340] ([i915#13008])
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@gem_ccs@large-ctrl-surf-copy.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_create@create-ext-set-pat:
    - shard-rkl:          [SKIP][341] ([i915#14544] / [i915#8562]) -> [SKIP][342] ([i915#8562])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@gem_create@create-ext-set-pat.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-rkl:          [SKIP][343] ([i915#14544] / [i915#280]) -> [SKIP][344] ([i915#280])
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@gem_ctx_sseu@invalid-args.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg2:          [SKIP][345] ([i915#2575]) -> [SKIP][346] ([i915#4771])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@gem_exec_balancer@bonded-dual.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_reloc@basic-gtt-read-noreloc:
    - shard-rkl:          [SKIP][347] ([i915#3281]) -> [SKIP][348] ([i915#14544] / [i915#3281]) +7 other tests skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read-noreloc.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-read-noreloc.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          [SKIP][349] ([i915#14544] / [i915#3281]) -> [SKIP][350] ([i915#3281]) +5 other tests skip
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-rkl:          [SKIP][351] ([i915#4613]) -> [SKIP][352] ([i915#14544] / [i915#4613])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-5/igt@gem_lmem_swapping@heavy-verify-random.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-rkl:          [SKIP][353] ([i915#14544] / [i915#4613]) -> [SKIP][354] ([i915#4613]) +1 other test skip
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@gem_lmem_swapping@verify-random.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_mmap@bad-offset:
    - shard-dg2:          [SKIP][355] ([i915#2575]) -> [SKIP][356] ([i915#4083])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@gem_mmap@bad-offset.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@gem_mmap@bad-offset.html

  * igt@gem_mmap_gtt@basic-read:
    - shard-dg2:          [SKIP][357] ([i915#2575]) -> [SKIP][358] ([i915#4077]) +2 other tests skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@gem_mmap_gtt@basic-read.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@gem_mmap_gtt@basic-read.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-rkl:          [SKIP][359] ([i915#14544] / [i915#3282]) -> [SKIP][360] ([i915#3282]) +2 other tests skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@gem_partial_pwrite_pread@reads.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_pwrite@basic-random:
    - shard-dg2:          [SKIP][361] ([i915#2575]) -> [SKIP][362] ([i915#3282])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@gem_pwrite@basic-random.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@gem_pwrite@basic-random.html

  * igt@gem_pxp@hw-rejects-pxp-buffer:
    - shard-rkl:          [SKIP][363] ([i915#13717]) -> [SKIP][364] ([i915#13717] / [i915#14544])
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-5/igt@gem_pxp@hw-rejects-pxp-buffer.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-buffer.html

  * igt@gem_pxp@protected-encrypted-src-copy-not-readible:
    - shard-dg2:          [SKIP][365] ([i915#2575]) -> [SKIP][366] ([i915#4270])
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@gem_pxp@protected-encrypted-src-copy-not-readible.html

  * igt@gem_readwrite@read-write:
    - shard-rkl:          [SKIP][367] ([i915#3282]) -> [SKIP][368] ([i915#14544] / [i915#3282])
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-5/igt@gem_readwrite@read-write.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@gem_readwrite@read-write.html

  * igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:
    - shard-dg2:          [SKIP][369] ([i915#2575] / [i915#5190]) -> [SKIP][370] ([i915#5190] / [i915#8428]) +1 other test skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - shard-rkl:          [SKIP][371] ([i915#14544]) -> [SKIP][372] +7 other tests skip
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@gem_softpin@evict-snoop-interruptible.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-rkl:          [SKIP][373] ([i915#3297]) -> [SKIP][374] ([i915#14544] / [i915#3297])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-8/igt@gem_userptr_blits@unsync-overlap.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gen7_exec_parse@basic-allowed:
    - shard-dg2:          [SKIP][375] ([i915#2575]) -> [SKIP][376] +1 other test skip
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@gen7_exec_parse@basic-allowed.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@gen7_exec_parse@basic-allowed.html

  * igt@gen7_exec_parse@batch-without-end:
    - shard-rkl:          [SKIP][377] -> [SKIP][378] ([i915#14544]) +7 other tests skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-8/igt@gen7_exec_parse@batch-without-end.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@gen7_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-rkl:          [SKIP][379] ([i915#2527]) -> [SKIP][380] ([i915#14544] / [i915#2527])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-5/igt@gen9_exec_parse@batch-invalid-length.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-rkl:          [SKIP][381] ([i915#14544] / [i915#2527]) -> [SKIP][382] ([i915#2527]) +1 other test skip
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@gen9_exec_parse@bb-chained.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@gen9_exec_parse@bb-chained.html

  * igt@i915_drm_fdinfo@virtual-busy:
    - shard-dg2:          [SKIP][383] -> [SKIP][384] ([i915#14118])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@i915_drm_fdinfo@virtual-busy.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@i915_drm_fdinfo@virtual-busy.html

  * igt@i915_pm_freq_api@freq-reset:
    - shard-rkl:          [SKIP][385] ([i915#14544] / [i915#8399]) -> [SKIP][386] ([i915#8399])
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@i915_pm_freq_api@freq-reset.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@i915_pm_freq_api@freq-reset.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          [SKIP][387] ([i915#14544] / [i915#4387]) -> [SKIP][388] ([i915#4387])
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@i915_pm_sseu@full-enable.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@i915_pm_sseu@full-enable.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-rkl:          [SKIP][389] ([i915#12454] / [i915#12712]) -> [SKIP][390] ([i915#12454] / [i915#12712] / [i915#14544])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-8/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-rkl:          [SKIP][391] ([i915#14544] / [i915#5286]) -> [SKIP][392] ([i915#5286]) +2 other tests skip
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-rkl:          [SKIP][393] ([i915#5286]) -> [SKIP][394] ([i915#14544] / [i915#5286]) +1 other test skip
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@linear-16bpp-rotate-90:
    - shard-rkl:          [SKIP][395] ([i915#14544] / [i915#3638]) -> [SKIP][396] ([i915#3638]) +2 other tests skip
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_big_fb@linear-16bpp-rotate-90.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_big_fb@linear-16bpp-rotate-90.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][397] ([i915#3828]) -> [SKIP][398] ([i915#14544] / [i915#3828])
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-5/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-dg2:          [SKIP][399] ([i915#5190]) -> [SKIP][400] ([i915#4538] / [i915#5190]) +2 other tests skip
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-dg1:          [SKIP][401] ([i915#4423] / [i915#4538]) -> [SKIP][402] ([i915#4538])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg1-12/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg1-13/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs:
    - shard-rkl:          [SKIP][403] ([i915#14098] / [i915#6095]) -> [SKIP][404] ([i915#14098] / [i915#14544] / [i915#6095]) +2 other tests skip
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-8/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc:
    - shard-dg2:          [SKIP][405] -> [SKIP][406] ([i915#10307] / [i915#6095]) +3 other tests skip
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][407] ([i915#12805]) -> [SKIP][408] ([i915#12805] / [i915#14544])
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs:
    - shard-rkl:          [SKIP][409] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][410] ([i915#14098] / [i915#6095]) +16 other tests skip
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][411] ([i915#14544] / [i915#6095]) -> [SKIP][412] ([i915#6095]) +12 other tests skip
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-b-hdmi-a-2.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][413] ([i915#12313]) -> [SKIP][414] ([i915#12313] / [i915#14544])
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-5/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_cdclk@plane-scaling:
    - shard-dg2:          [SKIP][415] -> [SKIP][416] ([i915#13783])
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@kms_cdclk@plane-scaling.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_cdclk@plane-scaling.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:
    - shard-rkl:          [SKIP][417] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][418] ([i915#11151] / [i915#7828]) +5 other tests skip
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html

  * igt@kms_chamelium_frames@hdmi-crc-single:
    - shard-rkl:          [SKIP][419] ([i915#11151] / [i915#7828]) -> [SKIP][420] ([i915#11151] / [i915#14544] / [i915#7828]) +3 other tests skip
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-5/igt@kms_chamelium_frames@hdmi-crc-single.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_chamelium_frames@hdmi-crc-single.html

  * igt@kms_chamelium_hpd@hdmi-hpd:
    - shard-dg2:          [SKIP][421] ([i915#15689]) -> [SKIP][422] ([i915#11151] / [i915#7828]) +1 other test skip
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@kms_chamelium_hpd@hdmi-hpd.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_chamelium_hpd@hdmi-hpd.html

  * igt@kms_content_protection@atomic:
    - shard-rkl:          [SKIP][423] ([i915#14544] / [i915#6944] / [i915#7118] / [i915#9424]) -> [SKIP][424] ([i915#6944] / [i915#7118] / [i915#9424])
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_content_protection@atomic.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-hdcp14:
    - shard-dg2:          [SKIP][425] ([i915#15689]) -> [SKIP][426] ([i915#6944])
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@kms_content_protection@atomic-hdcp14.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_content_protection@atomic-hdcp14.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-rkl:          [SKIP][427] ([i915#15330] / [i915#3116]) -> [SKIP][428] ([i915#14544] / [i915#15330] / [i915#3116])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-8/igt@kms_content_protection@dp-mst-lic-type-0.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-1-suspend-resume:
    - shard-rkl:          [SKIP][429] ([i915#14544] / [i915#15330]) -> [SKIP][430] ([i915#15330])
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html

  * igt@kms_content_protection@lic-type-0-hdcp14:
    - shard-dg2:          [SKIP][431] ([i915#6944]) -> [FAIL][432] ([i915#7173])
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-1/igt@kms_content_protection@lic-type-0-hdcp14.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-11/igt@kms_content_protection@lic-type-0-hdcp14.html

  * igt@kms_content_protection@mei-interface:
    - shard-rkl:          [SKIP][433] ([i915#6944] / [i915#9424]) -> [SKIP][434] ([i915#14544] / [i915#6944] / [i915#9424])
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-5/igt@kms_content_protection@mei-interface.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][435] ([i915#6944] / [i915#7118] / [i915#9424]) -> [SKIP][436] ([i915#6944] / [i915#7118] / [i915#7162] / [i915#9424])
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-8/igt@kms_content_protection@type1.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-11/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-rkl:          [SKIP][437] ([i915#14544] / [i915#3555]) -> [SKIP][438] ([i915#3555])
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-32x10.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-rkl:          [SKIP][439] ([i915#13049] / [i915#14544]) -> [SKIP][440] ([i915#13049])
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x512.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-dg2:          [SKIP][441] ([i915#15689]) -> [SKIP][442] ([i915#13049])
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@kms_cursor_crc@cursor-random-512x512.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
    - shard-dg2:          [SKIP][443] ([i915#15689]) -> [SKIP][444] ([i915#13046] / [i915#5354]) +1 other test skip
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-rkl:          [SKIP][445] ([i915#3555] / [i915#3804]) -> [SKIP][446] ([i915#14544] / [i915#3555] / [i915#3804])
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-rkl:          [SKIP][447] ([i915#3840]) -> [SKIP][448] ([i915#14544] / [i915#3840])
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-5/igt@kms_dsc@dsc-fractional-bpp.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-rkl:          [SKIP][449] ([i915#3555] / [i915#3840]) -> [SKIP][450] ([i915#14544] / [i915#3555] / [i915#3840])
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-8/igt@kms_dsc@dsc-with-output-formats.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-dg2:          [SKIP][451] -> [SKIP][452] ([i915#3840] / [i915#9053])
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@kms_dsc@dsc-with-output-formats-with-bpc.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_feature_discovery@psr1:
    - shard-rkl:          [SKIP][453] ([i915#14544] / [i915#658]) -> [SKIP][454] ([i915#658])
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_feature_discovery@psr1.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_feature_discovery@psr1.html

  * igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:
    - shard-dg2:          [SKIP][455] ([i915#15689]) -> [SKIP][456] ([i915#9934])
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_flip@2x-dpms-vs-vblank-race-interruptible.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - shard-rkl:          [SKIP][457] ([i915#9934]) -> [SKIP][458] ([i915#14544] / [i915#9934]) +4 other tests skip
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
    - shard-rkl:          [SKIP][459] ([i915#14544] / [i915#9934]) -> [SKIP][460] ([i915#9934]) +7 other tests skip
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-glk:          [INCOMPLETE][461] ([i915#12745] / [i915#4839]) -> [INCOMPLETE][462] ([i915#12745] / [i915#4839] / [i915#6113])
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-glk6/igt@kms_flip@flip-vs-suspend.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-glk1/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend@a-hdmi-a1:
    - shard-glk:          [INCOMPLETE][463] ([i915#12745]) -> [INCOMPLETE][464] ([i915#12745] / [i915#6113])
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-glk6/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-glk1/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-rkl:          [SKIP][465] ([i915#15643]) -> [SKIP][466] ([i915#14544] / [i915#15643]) +1 other test skip
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
    - shard-dg2:          [SKIP][467] ([i915#5190]) -> [SKIP][468] ([i915#15643] / [i915#5190]) +1 other test skip
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
    - shard-rkl:          [SKIP][469] ([i915#14544] / [i915#15643]) -> [SKIP][470] ([i915#15643]) +1 other test skip
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite:
    - shard-dg2:          [SKIP][471] -> [SKIP][472] ([i915#5354]) +6 other tests skip
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite.html
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:
    - shard-rkl:          [SKIP][473] ([i915#14544] / [i915#1825]) -> [SKIP][474] ([i915#1825]) +22 other tests skip
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-rkl:          [SKIP][475] ([i915#14544] / [i915#5439]) -> [SKIP][476] ([i915#5439])
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][477] ([i915#15102]) -> [SKIP][478] ([i915#14544] / [i915#15102]) +1 other test skip
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render:
    - shard-rkl:          [SKIP][479] ([i915#14544] / [i915#15102]) -> [SKIP][480] ([i915#15102]) +1 other test skip
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render.html
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-dg2:          [SKIP][481] -> [SKIP][482] ([i915#8708]) +4 other tests skip
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:
    - shard-rkl:          [SKIP][483] ([i915#1825]) -> [SKIP][484] ([i915#14544] / [i915#1825]) +13 other tests skip
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-dg2:          [SKIP][485] -> [SKIP][486] ([i915#10055])
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][487] ([i915#15102] / [i915#3023]) -> [SKIP][488] ([i915#14544] / [i915#15102] / [i915#3023]) +11 other tests skip
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          [SKIP][489] -> [SKIP][490] ([i915#15102] / [i915#3458]) +1 other test skip
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render.html
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite:
    - shard-dg1:          [SKIP][491] -> [SKIP][492] ([i915#4423])
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite.html
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
    - shard-rkl:          [SKIP][493] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][494] ([i915#15102] / [i915#3023]) +11 other tests skip
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:
    - shard-dg2:          [SKIP][495] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][496] ([i915#15102] / [i915#3458]) +5 other tests skip
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-rkl:          [INCOMPLETE][497] ([i915#15436]) -> [SKIP][498] ([i915#3555] / [i915#8228])
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_hdr@bpc-switch-suspend.html
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-tglu:         [SKIP][499] ([i915#1187] / [i915#12713]) -> [SKIP][500] ([i915#12713])
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-tglu-2/igt@kms_hdr@brightness-with-hdr.html
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-tglu-3/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_hdr@static-toggle:
    - shard-dg2:          [SKIP][501] ([i915#15689]) -> [SKIP][502] ([i915#3555] / [i915#8228])
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@kms_hdr@static-toggle.html
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_hdr@static-toggle.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-rkl:          [SKIP][503] ([i915#14544] / [i915#15458]) -> [SKIP][504] ([i915#15458])
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_joiner@basic-force-ultra-joiner.html
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
    - shard-dg2:          [SKIP][505] -> [SKIP][506] ([i915#15638])
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][507] ([i915#14544] / [i915#1839] / [i915#4816]) -> [SKIP][508] ([i915#1839] / [i915#4816])
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane@pixel-format-4-tiled-modifier:
    - shard-dg1:          [SKIP][509] ([i915#8825]) -> [SKIP][510] ([i915#4423] / [i915#8825])
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg1-17/igt@kms_plane@pixel-format-4-tiled-modifier.html
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg1-16/igt@kms_plane@pixel-format-4-tiled-modifier.html

  * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping:
    - shard-rkl:          [SKIP][511] ([i915#8825]) -> [SKIP][512] ([i915#14544] / [i915#8825])
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-5/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping.html
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping:
    - shard-rkl:          [SKIP][513] ([i915#14544] / [i915#8825]) -> [SKIP][514] ([i915#8825]) +1 other test skip
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping.html
   [514]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping.html

  * igt@kms_plane_multiple@2x-tiling-y:
    - shard-rkl:          [SKIP][515] ([i915#13958] / [i915#14544]) -> [SKIP][516] ([i915#13958]) +1 other test skip
   [515]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-y.html
   [516]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_plane_multiple@2x-tiling-y.html

  * igt@kms_plane_multiple@2x-tiling-yf:
    - shard-dg2:          [SKIP][517] ([i915#15689]) -> [SKIP][518] ([i915#13958])
   [517]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@kms_plane_multiple@2x-tiling-yf.html
   [518]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_plane_multiple@2x-tiling-yf.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:
    - shard-rkl:          [SKIP][519] ([i915#14544] / [i915#15329]) -> [SKIP][520] ([i915#15329]) +7 other tests skip
   [519]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html
   [520]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-rkl:          [SKIP][521] ([i915#14544] / [i915#9685]) -> [SKIP][522] ([i915#9685])
   [521]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_pm_dc@dc3co-vpb-simulation.html
   [522]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-dg2:          [SKIP][523] -> [SKIP][524] ([i915#3828])
   [523]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@kms_pm_dc@dc5-retention-flops.html
   [524]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-rkl:          [SKIP][525] ([i915#14544] / [i915#6524]) -> [SKIP][526] ([i915#6524])
   [525]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_prime@basic-crc-hybrid.html
   [526]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
    - shard-rkl:          [SKIP][527] ([i915#11520]) -> [SKIP][528] ([i915#11520] / [i915#14544]) +3 other tests skip
   [527]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-5/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
   [528]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
    - shard-rkl:          [SKIP][529] ([i915#11520] / [i915#14544]) -> [SKIP][530] ([i915#11520]) +3 other tests skip
   [529]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html
   [530]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:
    - shard-dg2:          [SKIP][531] -> [SKIP][532] ([i915#11520]) +1 other test skip
   [531]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html
   [532]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr@fbc-pr-no-drrs:
    - shard-rkl:          [SKIP][533] ([i915#1072] / [i915#9732]) -> [SKIP][534] ([i915#1072] / [i915#14544] / [i915#9732]) +10 other tests skip
   [533]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-5/igt@kms_psr@fbc-pr-no-drrs.html
   [534]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_psr@fbc-pr-no-drrs.html

  * igt@kms_psr@fbc-psr2-suspend:
    - shard-rkl:          [SKIP][535] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][536] ([i915#1072] / [i915#9732]) +12 other tests skip
   [535]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_psr@fbc-psr2-suspend.html
   [536]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_psr@fbc-psr2-suspend.html

  * igt@kms_psr@psr2-cursor-blt:
    - shard-dg2:          [SKIP][537] -> [SKIP][538] ([i915#1072] / [i915#9732]) +4 other tests skip
   [537]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@kms_psr@psr2-cursor-blt.html
   [538]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_psr@psr2-cursor-blt.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg2:          [SKIP][539] ([i915#5190]) -> [SKIP][540] ([i915#12755] / [i915#5190])
   [539]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
   [540]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-rkl:          [SKIP][541] ([i915#14544] / [i915#5289]) -> [SKIP][542] ([i915#5289])
   [541]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
   [542]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-rkl:          [SKIP][543] ([i915#14544] / [i915#8623]) -> [SKIP][544] ([i915#8623])
   [543]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
   [544]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-rkl:          [SKIP][545] ([i915#9906]) -> [SKIP][546] ([i915#14544] / [i915#9906])
   [545]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-5/igt@kms_vrr@seamless-rr-switch-virtual.html
   [546]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-virtual.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-rkl:          [SKIP][547] ([i915#3708]) -> [SKIP][548] ([i915#14544] / [i915#3708])
   [547]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-8/igt@prime_vgem@fence-flip-hang.html
   [548]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@prime_vgem@fence-flip-hang.html

  * igt@prime_vgem@fence-write-hang:
    - shard-dg2:          [SKIP][549] ([i915#2575]) -> [SKIP][550] ([i915#3708])
   [549]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@prime_vgem@fence-write-hang.html
   [550]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@prime_vgem@fence-write-hang.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-rkl:          [SKIP][551] ([i915#14544] / [i915#9917]) -> [SKIP][552] ([i915#9917]) +1 other test skip
   [551]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
   [552]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  
  [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
  [i915#10056]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
  [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
  [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
  [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
  [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
  [i915#12756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
  [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13398]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398
  [i915#13409]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409
  [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
  [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
  [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
  [i915#13783]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13783
  [i915#13790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790
  [i915#13809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13809
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
  [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
  [i915#14350]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14350
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
  [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
  [i915#14871]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14871
  [i915#14888]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14888
  [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
  [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
  [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
  [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
  [i915#15152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15152
  [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
  [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
  [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
  [i915#15436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15436
  [i915#15454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15454
  [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
  [i915#15560]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15560
  [i915#15607]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15607
  [i915#15638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15638
  [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
  [i915#15672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15672
  [i915#15678]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15678
  [i915#15689]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
  [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4235]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
  [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4816]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
  [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
  [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
  [i915#6188]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6188
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#7116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7116
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7162]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
  [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
  [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8821
  [i915#8825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8825
  [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_17983 -> Patchwork_161578v1

  CI-20190529: 20190529
  CI_DRM_17983: cd76e45b9a192aa3d4f7a2efb8ee46767f098e07 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8753: 8753
  Patchwork_161578v1: cd76e45b9a192aa3d4f7a2efb8ee46767f098e07 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/index.html

--===============4550744671024643622==
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
<tr><td><b>Series:</b></td><td>Fixes and updates when using AUX backlight u=
sing Luminance</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/161578/">https://patchwork.freedesktop.org/series/161578/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_161578v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_161578v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_17983_full -&gt; Patchwork_161578v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_161578v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_161578v1_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
161578v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_hdmi_inject@inject-4k:<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-mtlp-8/igt@kms_hdmi_inject@inject-4k.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/s=
hard-mtlp-1/igt@kms_hdmi_inject@inject-4k.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_17983_full and Patchwork_1=
61578v1_full:</p>
<h3>New IGT tests (5)</h3>
<ul>
<li>
<p>igt@kms_cursor_edge_walk@128x128-left-edge@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.33] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@128x128-left-edge@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@256x256-top-edge@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.32] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@256x256-top-edge@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [3.23] s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@invalid-num-scalers@pipe-d-hdmi-a-1-invalid-num-sc=
alers:</p>
<ul>
<li>Statuses : 2 pass(s)</li>
<li>Exec time: [0.03, 0.04] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_161578v1_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@device_reset@unbind-cold-=
reset-rebind.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_buddy@drm_buddy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@drm_buddy@drm_buddy.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/15678">i915#15678</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@gem_basic@multigpu-create-=
close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@gem_ccs@block-multicopy-i=
nplace.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@gem_ccs@large-ctrl-surf-c=
opy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/13008">i915#13008</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@gem_close_race@multigpu-ba=
sic-process.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@gem_create@create-ext-cpu-=
access-big.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/15454">i915#15454</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@gem_create@create-ext-cpu-=
access-big.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@gem_create@create-ext-set=
-pat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-many:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@gem_ctx_persistence@heartb=
eat-many.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@gem_ctx_sseu@invalid-args=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@gem_exec_balancer@paralle=
l.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/4525">i915#4525</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@gem_exec_balancer@parallel=
-dmabuf-import-out-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@sliced:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@gem_exec_balancer@sliced.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@gem_exec_capture@capture-r=
ecoverable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/6344">i915#6344</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-prw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@gem_exec_flush@basic-wb-pr=
w-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/4852">i915#4852</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@gem_exec_reloc@basic-write=
-read-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3281">i915#3281</a>) +3 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@gem_exec_reloc@basic-write=
-read-active.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-3/igt@gem_exec_suspend@basic-s0@lmem0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16157=
8v1/shard-dg2-7/igt@gem_exec_suspend@basic-s0@lmem0.html">INCOMPLETE</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i9=
15#13356</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@gem_fenced_exec_thrash@no-=
spare-fences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@gem_lmem_evict@dontneed-ev=
ict-race.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4613">i915#4613</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/7582">i915#7582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@gem_lmem_swapping@heavy-ve=
rify-random-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@gem_lmem_swapping@verify.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4613">i915#4613</a>) +1 other test skip</li>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-glk6/igt@gem_lmem_swapping@verify.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@gem_lmem_swapping@verify-=
random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@pf-nonblock:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@gem_mmap_gtt@pf-nonblock.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4077">i915#4077</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@gem_partial_pwrite_pread@w=
rites-after-reads-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +2 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-context:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@gem_pxp@hw-rejects-pxp-co=
ntext.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13398">i915#13398</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-stale-buf-optout-execution:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@gem_pxp@verify-pxp-stale-b=
uf-optout-execution.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@gem_render_copy@mixed-tile=
d-to-y-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-8/igt@gem_softpin@noreloc-s3.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard=
-rkl-3/igt@gem_softpin@noreloc-s3.html">INCOMPLETE</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/13809">i915#13809</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@gem_userptr_blits@coherenc=
y-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-2/igt@gem_workarounds@suspend-resume.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578=
v1/shard-rkl-1/igt@gem_workarounds@suspend-resume.html">ABORT</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15152">i915#151=
52</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@bitmasks:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@gen7_exec_parse@bitmasks.h=
tml">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@chained-batch:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@gen7_exec_parse@chained-b=
atch.html">SKIP</a> +31 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@gen9_exec_parse@basic-rej=
ected-ctx-param.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@gen9_exec_parse@bb-start-=
out.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@gen9_exec_parse@cmd-crossi=
ng-page.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@gen9_exec_parse@secure-bat=
ches.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@i915_module_load@resize-ba=
r.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/14545">i915#14545</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@i915_pm_freq_api@freq-res=
et.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-fence.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1615=
78v1/shard-tglu-3/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790">i915#1=
3790</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/2681">i915#2681</a>) +1 other test warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-5/igt@i915_pm_rpm@system-suspend-execbuf.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16=
1578v1/shard-rkl-6/igt@i915_pm_rpm@system-suspend-execbuf.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/133=
56">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@i915_pm_rps@thresholds-par=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@i915_pm_sseu@full-enable.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@i915_query@query-topology-=
coherent-slice-mask.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/6188">i915#6188</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@i915_query@test-query-geom=
etry-subslices.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/5723">i915#5723</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@perf:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-1/igt@i915_selftest@perf.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2=
-11/igt@i915_selftest@perf.html">DMESG-WARN</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/14545">i915#14545</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg1-13/igt@i915_suspend@basic-s2idle-without-i915.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_161578v1/shard-dg1-12/igt@i915_suspend@basic-s2idle-without-i915.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4391">i915#4391</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-8/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/sh=
ard-rkl-6/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@clobberred-modifier:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_addfb_basic@clobberred=
-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/4212">i915#4212</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hd=
mi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-4/igt@kms_atomic_transition@plan=
e-all-modeset-transition-fencing@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_atomic_transition@plan=
e-all-modeset-transition-internal-panels.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3=
555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_big_fb@4-tiled-32bpp-=
rotate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_big_fb@4-tiled-addfb.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/5286">i915#5286</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-=
stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +5 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_161578v1/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-strid=
e-64bpp-rotate-0-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_big_fb@linear-max-hw-s=
tride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_big_fb@linear-max-hw-=
stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_big_fb@y-tiled-8bpp-ro=
tate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +3 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_big_fb@y-tiled-8bpp-ro=
tate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3638">i915#3638</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-snb6/igt@kms_big_fb@y-tiled-max-hw-s=
tride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a> +8 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_big_fb@yf-tiled-addfb.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@kms_ccs@bad-rotation-90-4-=
tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-=
tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a=
>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_ccs@bad-rotation-90-y=
-tiled-gen12-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/6095">i915#6095</a>) +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-4/igt@kms_ccs@ccs-on-another-bo-=
4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#104=
34</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_ccs@ccs-on-another-bo-=
y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14=
544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/6095">i915#6095</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a=
-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) =
+39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-dg2-rc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +49 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-3:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg1-12/igt@kms_ccs@crc-primary-suspe=
nd-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-3.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +111 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-1/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915=
#6095</a>) +155 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-=
basic-y-tiled-ccs@pipe-c-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095=
</a>) +42 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-glk10/igt@kms_ccs@missing-ccs-buffer=
-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-1.html">SKIP</a> +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@kms_ccs@random-ccs-data-y-=
tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +59 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_cdclk@plane-scaling.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_cdclk@plane-scaling@pi=
pe-b-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/13783">i915#13783</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio-edid:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_chamelium_audio@hdmi-=
audio-edid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-change-during-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_chamelium_edid@dp-edi=
d-change-during-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_chamelium_edid@hdmi-ed=
id-stress-resolution-non-4k.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_chamelium_hpd@hdmi-hpd=
-fast.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_content_protection@at=
omic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/7116">i915#7116</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-hdcp14:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_content_protection@at=
omic-hdcp14.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@kms_content_protection@dp-=
mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/15330">i915#15330</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1-suspend-resume:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_content_protection@dp=
-mst-type-1-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>) +1 other test ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0-hdcp14@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-11/igt@kms_content_protection@li=
c-type-0-hdcp14@pipe-a-dp-3.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@kms_content_protection@lic=
-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@suspend-resume:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_content_protection@sus=
pend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/6944">i915#6944</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_content_protection@sus=
pend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@kms_cursor_crc@cursor-offs=
creen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/13049">i915#13049</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-tglu-6/igt@kms_cursor_crc@cursor-onscreen-256x85.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_161578v1/shard-tglu-3/igt@kms_cursor_crc@cursor-onscreen-256x85.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
3566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-=
hdmi-a-2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_161578v1/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-25=
6x85@pipe-a-hdmi-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_cursor_crc@cursor-rand=
om-128x42@pipe-a-hdmi-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +2 other tests fai=
l</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@kms_cursor_crc@cursor-rand=
om-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/13049">i915#13049</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_cursor_crc@cursor-ran=
dom-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_cursor_legacy@basic-b=
usy-flip-before-cursor-atomic.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@kms_cursor_legacy@cursorb-=
vs-flipa-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/13046">i915#13046</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161=
578v1/shard-dg2-1/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3=
555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-mst:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_dp_link_training@uhbr=
-mst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13748">i915#13748</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_dsc@dsc-fractional-bpp=
-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3840">i915#3840</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_dsc@dsc-fractional-bpp=
-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@kms_dsc@dsc-with-bpc.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_dsc@dsc-with-output-f=
ormats-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/3840">i915#3840</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/9053">i915#9053</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_feature_discovery@psr=
1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms-=
on-nop-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_flip@2x-flip-vs-modese=
t-vs-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_161578v1/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible.html"=
>TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14033">i915#14033</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/14350">i915#14350</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-v=
ga1-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_161578v1/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-int=
erruptible@ab-vga1-hdmi-a1.html">TIMEOUT</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/14033">i915#14033</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_flip@2x-nonexisting-f=
b-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_flip@2x-plain-flip.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9934">i915#9934</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_flip@2x-single-buffer=
-flip-vs-dpms-off-vs-modeset.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 =
other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-glk1/igt@kms_flip@flip-vs-suspend-in=
terruptible.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-glk1/igt@kms_flip@flip-vs-suspend-in=
terruptible@a-hdmi-a1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi-a2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-4/igt@kms_flip@flip-vs-suspend-interruptible@b-hdmi=
-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_161578v1/shard-rkl-3/igt@kms_flip@flip-vs-suspend-interruptible=
@b-hdmi-a2.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/6113">i915#6113</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-downscaling:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-64bpp-yftile-downscaling.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_flip_scaled_crc@flip-=
32bpp-yftile-to-64bpp-yftile-upscaling.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +2 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +2 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytileccs-upscaling.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5=
190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +28 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +9 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_frontbuffer_tracking@=
fbc-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +7 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@kms_frontbuffer_tracking@f=
bcpsr-rgb565-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +11=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-cpu:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@kms_frontbuffer_tracking@p=
sr-1p-offscreen-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_frontbuffer_tracking@p=
sr-1p-offscreen-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +3 ot=
her tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_frontbuffer_tracking@p=
sr-1p-offscreen-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/15104">i915#15104</a>) +1 ot=
her test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +9 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-spr-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +8 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-pri-shrfb-draw-render.html">SKIP</a> +21 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_frontbuffer_tracking@p=
sr-indfb-scaledprimary.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +7 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg=
2-1/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shar=
d-rkl-4/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228=
</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_hdr@bpc-switch-dpms.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_hdr@bpc-switch-suspen=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_joiner@switch-modeset=
-ultra-joiner-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/15638">i915#15638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_multipipe_modeset@bas=
ic-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_panel_fitting@legacy.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-glk10/igt@kms_pipe_crc_basic@suspend=
-read-crc.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/12756">i915#12756</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/13409">i915#13409</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476">i915#13476</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-glk10/igt@kms_pipe_crc_basic@suspend=
-read-crc@pipe-b-hdmi-a-2.html">INCOMPLETE</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/13409">i915#13409</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476">i915#13476</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_stress@stress-xrgb8888-4tiled:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_pipe_stress@stress-xr=
gb8888-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/14712">i915#14712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_plane@pixel-format-4-t=
iled-dg2-mc-ccs-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/8825">i915#8825</a>) +3 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-modifier:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-glk6/igt@kms_plane@pixel-format-4-ti=
led-modifier.html">SKIP</a> +75 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@kms_plane@pixel-format-4-t=
iled-mtl-rc-ccs-cc-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/8825">i915#8825</a>) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-ccs-modifier:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_plane@pixel-format-y-=
tiled-ccs-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/8825">i915#8825</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_plane@pixel-format-yf=
-tiled-ccs-modifier-source-clamping.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/8825">i915#8825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-5/igt@kms_plane@plane-panning-bottom-right-suspend@=
pipe-b.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_161578v1/shard-rkl-1/igt@kms_plane@plane-panning-bottom-righ=
t-suspend@pipe-b.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/15132">i915#15132</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@kms_plane_lowres@tiling-y.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/8821">i915#8821</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-yf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_plane_multiple@2x-til=
ing-yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/13958">i915#13958</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@kms_plane_multiple@tiling-=
4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-c:</=
p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-5-with-rotation@pipe-c.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +9 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-rotation.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#355=
5</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
b:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@kms_plane_scaling@plane-sc=
aler-with-clipping-clamping-rotation@pipe-b.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) =
+2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_plane_scaling@plane-u=
pscale-20x20-with-rotation@pipe-a.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +4 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_pm_backlight@brightnes=
s-with-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/12343">i915#12343</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_pm_backlight@brightnes=
s-with-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/12343">i915#12343</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_pm_backlight@fade-wit=
h-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_pm_dc@dc5-retention-f=
lops.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_pm_lpsp@screens-disabl=
ed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
61578v1/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">=
i915#15073</a>)</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg1-13/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
161578v1/shard-dg1-14/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073=
">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_pm_rpm@dpms-non-lpsp.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/15073">i915#15073</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_pm_rpm@dpms-non-lpsp.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg1-18/igt@kms_pm_rpm@i2c.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg1-1=
8/igt@kms_pm_rpm@i2c.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) +1 other test dmesg=
-warn</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shar=
d-rkl-1/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) +1 other=
 test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp-st=
ress.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_161578v1/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_prime@basic-crc-hybri=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_psr2_sf@fbc-pr-cursor-=
plane-move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@kms_psr2_sf@fbc-psr2-overl=
ay-plane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +5 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-over=
lay-primary-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_psr2_sf@fbc-psr2-plan=
e-move-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-update-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-glk6/igt@kms_psr2_sf@psr2-cursor-pla=
ne-update-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_psr2_su@page_flip-xrgb=
8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9683">i915#9683</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_psr2_su@page_flip-xrg=
b8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-no-drrs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_psr@fbc-psr2-no-drrs.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_psr@fbc-psr2-sprite-re=
nder.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9732">i915#9732</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-plane-onoff:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_psr@psr-cursor-plane-=
onoff.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_psr@psr-primary-mmap-c=
pu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9732">i915#9732</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_psr_stress_test@flip-p=
rimary-invalidate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_psr_stress_test@inval=
idate-primary-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@exhaust-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@kms_rotation_crc@exhaust-f=
ences.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_rotation_crc@sprite-ro=
tation-90-pos-100-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/12755">i915#12755</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-2/igt@kms_tiled_display@basic-te=
st-pattern.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@kms_tiled_display@basic-t=
est-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-5/igt@kms_vblank@ts-continuation-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16=
1578v1/shard-rkl-6/igt@kms_vblank@ts-continuation-suspend.html">INCOMPLETE<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/122=
76">i915#12276</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-suspend@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_vblank@ts-continuation=
-suspend@pipe-a-hdmi-a-2.html">INCOMPLETE</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/12276">i915#12276</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@kms_vrr@flip-suspend.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/15243">i915#15243</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@kms_vrr@max-min.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/99=
06">i915#9906</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_vrr@max-min.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/99=
06">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@perf@unprivileged-single-c=
tx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/2433">i915#2433</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-9/igt@sriov_basic@enable-vfs-bi=
nd-unbind-each-numvfs-all.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/12910">i915#12910</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each@numvfs-2:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-tglu-1/igt@sriov_basic@enable-vfs-bi=
nd-unbind-each@numvfs-2.html">FAIL</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/12910">i915#12910</a>) +8 other tests fail<=
/li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-5/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i=
915#13356</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_161578v1/shard-dg2-5/igt@gem_ccs@suspend-resume.html">PASS</a> +1 o=
ther test pass</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-comp=
fmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/12392">i915#12392</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/sha=
rd-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.=
html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-self:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@gem_exec_schedule@preempt-self.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575"=
>i915#2575</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_161578v1/shard-dg2-6/igt@gem_exec_schedule@preempt-self.html">PASS=
</a> +24 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-4/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356=
">i915#13356</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_161578v1/shard-rkl-8/igt@gem_exec_suspend@basic-s3.html">PASS</a=
> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-snb5/igt@gem_exec_suspend@basic-s3@smem.html">ABORT</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14871"=
>i915#14871</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_161578v1/shard-snb6/igt@gem_exec_suspend@basic-s3@smem.html">PASS=
</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-6/igt@gem_exec_whisper@basic-contexts-forked.html">=
FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_161578v1/shard-dg2-1/igt@gem_exec_whisper@basic-contexts-forked.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg1-13/igt@gem_lmem_swapping@smem-oom.html">FAIL</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/=
shard-dg1-12/igt@gem_lmem_swapping@smem-oom.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg1-13/igt@gem_lmem_swapping@smem-oom@lmem0.html">CRASH=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/54=
93">i915#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_161578v1/shard-dg1-12/igt@gem_lmem_swapping@smem-oom@lmem0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-1/igt@gem_workarounds@suspend-resume-fd.html">ABORT=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15=
152">i915#15152</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_161578v1/shard-rkl-5/igt@gem_workarounds@suspend-resume-fd.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17983/shard-dg2-1/igt@i915_module_load@load.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-7/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@i915_module_load@load.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/sh=
ard-dg2-3/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-5/igt@i915_module_load@=
load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_17983/shard-dg2-1/igt@i915_module_load@load.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-5/igt@i915=
_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_17983/shard-dg2-8/igt@i915_module_load@load.html">PASS</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-d=
g2-4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-8/igt@i915_module_load@load.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
17983/shard-dg2-3/igt@i915_module_load@load.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-3/igt@i915_modu=
le_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_17983/shard-dg2-6/igt@i915_module_load@load.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-4/=
igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt@i915_module_load@load.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1798=
3/shard-dg2-8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-6/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_17983/shard-dg2-7/igt@i915_module_load@load.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-11/igt=
@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_17983/shard-dg2-6/igt@i915_module_load@load.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/sh=
ard-dg2-7/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-4/igt@i915_module_load@=
load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_17983/shard-dg2-5/igt@i915_module_load@load.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17983/shard-dg2-1/igt@i915=
_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_17983/shard-dg2-4/igt@i915_module_load@load.html">PASS</a=
>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161=
578v1/shard-dg2-11/igt@i915_module_load@load.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-11/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-dg2-11/igt@i915_module_load@load.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
161578v1/shard-dg2-1/igt@i915_module_load@load.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-1/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_161578v1/shard-dg2-1/igt@i915_module_load@load.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
161578v1/shard-dg2-3/igt@i915_module_load@load.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-3/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_161578v1/shard-dg2-3/igt@i915_module_load@load.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
161578v1/shard-dg2-4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-4/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_161578v1/shard-dg2-4/igt@i915_module_load@load.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
161578v1/shard-dg2-5/igt@i915_module_load@load.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_161578v1/shard-dg2-5/igt@i915_module_load@load.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
161578v1/shard-dg2-6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@i915_module_load@load.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
161578v1/shard-dg2-6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-7/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_161578v1/shard-dg2-7/igt@i915_module_load@load.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
161578v1/shard-dg2-8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_161578v1/shard-dg2-8/igt@i915_module_load@load.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
161578v1/shard-dg2-8/igt@i915_module_load@load.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-mtlp-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915=
#12061</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/15560">i915#15560</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_161578v1/shard-mtlp-4/igt@i915_selftest@live.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-mtlp-1/igt@i915_selftest@live@workarounds.html">DMESG-F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/12061">i915#12061</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_161578v1/shard-mtlp-4/igt@i915_selftest@live@workarounds.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_3d@basic:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-mtlp-1/igt@kms_3d@basic.html">SKIP</a> -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-mtlp-2/i=
gt@kms_3d@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg1-13/igt@kms_async_flips@alternate-sync-async-flip.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14888">i915#14888</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_161578v1/shard-dg1-14/igt@kms_async_flips@alternate-s=
ync-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-trans=
ition.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/5956">i915#5956</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-11/igt@kms_atomic_transition=
@plane-all-modeset-transition.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotat=
e-0-async-flip.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_big_fb@x-tiled-max-hw-s=
tride-64bpp-rotate-0-async-flip.html">PASS</a> +9 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-8/igt@kms_dp_linktrain_fallback@dp-fallback.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/13707">i915#13707</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_161578v1/shard-dg2-11/igt@kms_dp_linktrain_fallback@dp-fal=
lback.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-snb4/igt@kms_flip@2x-flip-vs-suspend@ab-vga1-hdmi-a1.ht=
ml">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14033">i915#14033</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_161578v1/shard-snb7/igt@kms_flip@2x-flip-vs-suspen=
d@ab-vga1-hdmi-a1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-mtlp-1/igt@kms_force_connector_basic@force-edid.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/15672">i915#15672</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_161578v1/shard-mtlp-4/igt@kms_force_connector_basic@force-=
edid.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-suspend.html">IN=
COMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/10056">i915#10056</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc=
-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-8/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228=
">i915#8228</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_161578v1/shard-rkl-6/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-7/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915=
#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/8228">i915#8228</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_161578v1/shard-dg2-11/igt@kms_hdr@bpc-switch-suspend.html=
">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg1-12/igt@kms_plane@plane-panning-bottom-right-suspend=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4423">i915#4423</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_161578v1/shard-dg1-13/igt@kms_plane@plane-pann=
ing-bottom-right-suspend.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@kms_plane_scaling@plane-upscale-20x20-with-r=
otation.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/9423">i915#9423</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_plane_scaling@pl=
ane-upscale-20x20-with-rotation.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-8/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/15073">i915#15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_161578v1/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress-n=
o-wait.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-8/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i9=
15#15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_161578v1/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-accuracy-98:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@perf_pmu@busy-accuracy-98.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15607">i91=
5#15607</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_161578v1/shard-dg2-6/igt@perf_pmu@busy-accuracy-98.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-4/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349=
">i915#4349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_161578v1/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html">P=
ASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@wait-all-for-submit-delayed-submit:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@syncobj_timeline@wait-all-for-submit-delayed=
-submit.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/15689">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@syncobj_timeline@w=
ait-all-for-submit-delayed-submit.html">PASS</a> +30 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-5/igt@device_reset@unbind-cold-reset-rebind.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/11078">i915#11078</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_161578v1/shard-rkl-6/igt@device_reset@unbind-cold-reset-re=
bind.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11078">i915#11078</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_buddy@drm_buddy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@drm_buddy@drm_buddy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/15678">i915#15678</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_161578v1/shard-rkl-4/igt@drm_buddy@drm_buddy.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15678=
">i915#15678</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9323">i915#9323</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@gem_ccs@blo=
ck-multicopy-inplace.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@gem_ccs@large-ctrl-surf-copy.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008">i=
915#13008</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@gem_ccs@large-ctrl-surf-co=
py.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/13008">i915#13008</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@gem_create@create-ext-set-pat.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/8562">i915#8562</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@gem_create@create-ext-set-p=
at.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915=
#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/280">i915#280</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_161578v1/shard-rkl-4/igt@gem_ctx_sseu@invalid-args.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@gem_exec_balancer@bonded-dual.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">=
i915#2575</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_161578v1/shard-dg2-6/igt@gem_exec_balancer@bonded-dual.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771=
">i915#4771</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-read-noreloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-read-noreloc.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3281">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_161578v1/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-read-norel=
oc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/3281">i915#3281</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3281">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@gem_exec_reloc@basic-=
gtt-wc-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-5/igt@gem_lmem_swapping@heavy-verify-random.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/4613">i915#4613</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_161578v1/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-rand=
om.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@gem_lmem_swapping@verify-random.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/4613">i915#4613</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@gem_lmem_swapping@verify-=
random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@bad-offset:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@gem_mmap@bad-offset.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
61578v1/shard-dg2-6/igt@gem_mmap@bad-offset.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-read:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@gem_mmap_gtt@basic-read.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2=
575</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_161578v1/shard-dg2-6/igt@gem_mmap_gtt@basic-read.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077=
</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@gem_partial_pwrite_pread@reads.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3282">i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@gem_partial_pwrite_pread@r=
eads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-random:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@gem_pwrite@basic-random.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2=
575</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_161578v1/shard-dg2-6/igt@gem_pwrite@basic-random.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-5/igt@gem_pxp@hw-rejects-pxp-buffer.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717">=
i915#13717</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_161578v1/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-buffer.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/137=
17">i915#13717</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@protected-encrypted-src-copy-not-readible:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@gem_pxp@protected-encrypted-src-copy-not-rea=
dible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/2575">i915#2575</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@gem_pxp@protected-encr=
ypted-src-copy-not-readible.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@read-write:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-5/igt@gem_readwrite@read-write.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3=
282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_161578v1/shard-rkl-6/igt@gem_readwrite@read-write.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@gem_render_copy@yf-tiled-to-vebox-yf-tiled.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/2575">i915#2575</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@gem_render_copy=
@yf-tiled-to-vebox-yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +1 o=
ther test skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@gem_softpin@evict-snoop-interruptible.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_161578v1/shard-rkl-4/igt@gem_softpin@evict-snoop-interrupt=
ible.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-8/igt@gem_userptr_blits@unsync-overlap.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297=
">i915#3297</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_161578v1/shard-rkl-6/igt@gem_userptr_blits@unsync-overlap.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-allowed:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@gen7_exec_parse@basic-allowed.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">=
i915#2575</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_161578v1/shard-dg2-6/igt@gen7_exec_parse@basic-allowed.html">SKIP</=
a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@batch-without-end:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-8/igt@gen7_exec_parse@batch-without-end.html">SKIP<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161=
578v1/shard-rkl-6/igt@gen7_exec_parse@batch-without-end.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915=
#14544</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-5/igt@gen9_exec_parse@batch-invalid-length.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
2527">i915#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_161578v1/shard-rkl-6/igt@gen9_exec_parse@batch-invalid-length=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@gen9_exec_parse@bb-chained.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/2527">i915#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@gen9_exec_parse@bb-chained.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@virtual-busy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@i915_drm_fdinfo@virtual-busy.html">SKIP</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v=
1/shard-dg2-6/igt@i915_drm_fdinfo@virtual-busy.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118">i915#14118</a=
>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@i915_pm_freq_api@freq-reset.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/8399">i915#8399</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@i915_pm_freq_api@freq-reset.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#=
14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/4387">i915#4387</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_161578v1/shard-rkl-5/igt@i915_pm_sseu@full-enable.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-8/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/12454">i915#12454</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12712">i915#12712</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_addfb_b=
asic@invalid-smem-bo-on-discrete.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/12454">i915#12454</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712">i915#12712<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#=
14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/5286">i915#5286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_big_fb@4-tiled-addfb.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate=
-0-async-flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_big_fb@4-t=
iled-max-hw-stride-32bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">=
i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_big_fb@linear-16bpp-rotate-90.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3638">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_big_fb@linear-16bpp=
-rotate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3638">i915#3638</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-5/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-=
0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3828">i915#3828</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_big_fb@linear-ma=
x-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
5190">i915#5190</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_161578v1/shard-dg2-6/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/5190">i915#5190</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg1-12/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rota=
te-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4423">i915#4423</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/4538">i915#4538</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg1-13/igt@kms_bi=
g_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a>)</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-8/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-cc=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_ccs@cc=
s-on-another-bo-y-tiled-gen12-mc-ccs.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14=
544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/6095">i915#6095</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl=
-rc-ccs-cc.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_ccs@crc-primary-rotation-18=
0-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +3 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/12805">i915#12805</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend=
-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/12805">i915#12805</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4=
/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#140=
98</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6095">i915#6095</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@=
pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4=
/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-b-hdmi-a-2.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6=
095">i915#6095</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-5/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/12313">i915#12313</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled=
-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/12313">i915#12313</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@plane-scaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@kms_cdclk@plane-scaling.html">SKIP</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/sha=
rd-dg2-6/igt@kms_cdclk@plane-scaling.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/13783">i915#13783</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-4k:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_chamelium_edid@dp-edid-stress-resolution-=
4k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl=
-4/igt@kms_chamelium_edid@dp-edid-stress-resolution-4k.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#=
11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/7828">i915#7828</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-single:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-5/igt@kms_chamelium_frames@hdmi-crc-single.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_chamelium_frames=
@hdmi-crc-single.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a=
>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@kms_chamelium_hpd@hdmi-hpd.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i9=
15#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_161578v1/shard-dg2-6/igt@kms_chamelium_hpd@hdmi-hpd.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i=
915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_content_protection@atomic.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/7118">i915#7118</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt=
@kms_content_protection@atomic.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / =
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i9=
15#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-hdcp14:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@kms_content_protection@atomic-hdcp14.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/15689">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_content_protection@atomic-hdc=
p14.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-8/igt@kms_content_protection@dp-mst-lic-type-0.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/15330">i915#15330</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3116">i915#3116</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_content_prot=
ection@dp-mst-lic-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915=
#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1-suspend-=
resume.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/15330">i915#15330</a>) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms=
_content_protection@dp-mst-type-1-suspend-resume.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0-hdcp14:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-1/igt@kms_content_protection@lic-type-0-hdcp14.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/6944">i915#6944</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_161578v1/shard-dg2-11/igt@kms_content_protection@lic-type=
-0-hdcp14.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-5/igt@kms_content_protection@mei-interface.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9424">i915#9424</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_content_protection=
@mei-interface.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</=
li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-8/igt@kms_content_protection@type1.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i9=
15#6944</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-11/igt@kms_content_pro=
tection@type1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162">i915#7162</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#=
9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-32x10.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_cursor_crc@curs=
or-offscreen-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x512.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/13049">i915#13049</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_cursor_crc@=
cursor-offscreen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@kms_cursor_crc@cursor-random-512x512.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/15689">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_cursor_crc@cursor-random-512x=
512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-tr=
ansitions.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15689">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_cursor_legac=
y@cursorb-vs-flipa-atomic-transitions.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#53=
54</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-8/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555=
">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3804">i915#3804</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-5/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915=
#3840</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_161578v1/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915=
#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-8/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555"=
>i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3840">i915#3840</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_dsc@dsc-with-output-for=
mats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@kms_dsc@dsc-with-output-formats-with-bpc.htm=
l">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_161578v1/shard-dg2-6/igt@kms_dsc@dsc-with-output-formats-with-bpc.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3840">i915#3840</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9053">i915#9053</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_feature_discovery@psr1.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_feature_discovery@psr1.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@kms_flip@2x-dpms-vs-vblank-race-interruptibl=
e.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15689">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_flip@2x-dpms-vs-vbla=
nk-race-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interr=
uptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/9934">i915#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_flip@2x-flip-vs-=
absolute-wf_vblank-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a=
>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs=
-modeset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms=
_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934=
</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-glk6/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">=
i915#12745</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4839">i915#4839</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_161578v1/shard-glk1/igt@kms_flip@flip-vs-suspend.htm=
l">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/12745">i915#12745</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/4839">i915#4839</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-glk6/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html">INCOM=
PLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/12745">i915#12745</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_161578v1/shard-glk1/igt@kms_flip@flip-vs-suspend@a-hdmi-=
a1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/12745">i915#12745</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp=
-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@k=
ms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15643">i915#15643</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downsc=
aling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bp=
p-ytilegen12rcccs-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/ig=
t@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/15643">i915#15643</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp=
-4tile-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-r=
kl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/15643">i915#15643</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr=
-indfb-draw-pwrite.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_frontbuffer_trackin=
g@fbc-2p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +6 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrf=
b-msflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt=
@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i9=
15#1825</a>) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/5439">i915#5439</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_frontbuffer_tra=
cking@fbc-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt=
:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-=
pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@km=
s_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/15102">i915#15102</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-=
pri-shrfb-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shar=
d-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-ren=
der.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15102">i915#15102</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-=
pri-indfb-draw-mmap-gtt.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_frontbuffer_tr=
acking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708=
</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-p=
ri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_frontb=
uffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14=
544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/1825">i915#1825</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.htm=
l">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_161578v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/10055">i915#10055</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-=
shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rk=
l-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +11 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri=
-shrfb-draw-render.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_frontbuffer_trackin=
g@psr-1p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#=
3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri=
-shrfb-draw-pwrite.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_161578v1/shard-dg1-13/igt@kms_frontbuffer_tracki=
ng@psr-2p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-modesetfrombusy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4=
/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#151=
02</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3023">i915#3023</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap=
-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/10433">i915#10433</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-d=
g2-8/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-cpu.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i=
915#15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3458">i915#3458</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_hdr@bpc-switch-suspend.html">INCOMPLETE</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1543=
6">i915#15436</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_161578v1/shard-rkl-5/igt@kms_hdr@bpc-switch-suspend.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/355=
5">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-tglu-2/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187">i9=
15#1187</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/12713">i915#12713</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_161578v1/shard-tglu-3/igt@kms_hdr@brightness-with-hdr=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@kms_hdr@static-toggle.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i915#15=
689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_161578v1/shard-dg2-6/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228=
">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_joiner@basic-force-ultra-joiner.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/15458">i915#15458</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_joiner@basic-fo=
rce-ultra-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/15458">i915#15458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@kms_joiner@switch-modeset-ultra-joiner-big-j=
oiner.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_161578v1/shard-dg2-6/igt@kms_joiner@switch-modeset-ultra-join=
er-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/15638">i915#15638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-chec=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/1839">i915#1839</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/4816">i915#4816</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5=
/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839">i915#1839=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4=
816">i915#4816</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-modifier:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg1-17/igt@kms_plane@pixel-format-4-tiled-modifier.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/8825">i915#8825</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_161578v1/shard-dg1-16/igt@kms_plane@pixel-format-4-tiled-=
modifier.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4423">i915#4423</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/8825">i915#8825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clampin=
g:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-5/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-=
modifier-source-clamping.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/8825">i915#8825</a>) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms=
_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/8825">i915#8825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-=
source-clamping.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/8825">i915#8825</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4=
/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8=
825">i915#8825</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-y:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-y.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958"=
>i915#13958</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_plane_multiple@2x-ti=
ling-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/13958">i915#13958</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-yf:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@kms_plane_multiple@2x-tiling-yf.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1568=
9">i915#15689</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_161578v1/shard-dg2-6/igt@kms_plane_multiple@2x-tiling-yf.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-rotation@pipe-c.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-=
rkl-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/15329">i915#15329</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9685">i915#9685</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_pm_dc@dc3co-vpb-simula=
tion.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@kms_pm_dc@dc5-retention-flops.html">SKIP</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578=
v1/shard-dg2-6/igt@kms_pm_dc@dc5-retention-flops.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/6524">i915#6524</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_prime@basic-crc-hybrid.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-5/igt@kms_psr2_sf@pr-overlay-plane-update-continuou=
s-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11520">i915#11520</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-6/igt@kms_psr2_sf@pr-overla=
y-plane-update-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)=
 +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-ar=
ea.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/11520">i915#11520</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_psr=
2_sf@pr-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg=
-area.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_161578v1/shard-dg2-6/igt@kms_psr2_sf@psr2-primary-plane-updat=
e-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-no-drrs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-5/igt@kms_psr@fbc-pr-no-drrs.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#107=
2</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
9732">i915#9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_161578v1/shard-rkl-6/igt@kms_psr@fbc-pr-no-drrs.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072"=
>i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9732">i915#9732</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_psr@fbc-psr2-suspend.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1=
072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_psr@fbc-psr2-s=
uspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@kms_psr@psr2-cursor-blt.html">SKIP</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/sha=
rd-dg2-6/igt@kms_psr@psr2-cursor-blt.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732=
</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-=
270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/5190">i915#5190</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_161578v1/shard-dg2-6/igt@kms_rotation_crc@primary=
-yf-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/12755">i915#12755</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-9=
0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/5289">i915#5289</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-4/igt@kms_rotati=
on_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@kms_tiled_display@basic-test-pattern-with-cha=
melium.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/8623">i915#8623</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@kms_t=
iled_display@basic-test-pattern-with-chamelium.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-5/igt@kms_vrr@seamless-rr-switch-virtual.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/99=
06">i915#9906</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_161578v1/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-virtual.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-8/igt@prime_vgem@fence-flip-hang.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915=
#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_161578v1/shard-rkl-6/igt@prime_vgem@fence-flip-hang.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915=
#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-dg2-11/igt@prime_vgem@fence-write-hang.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i9=
15#2575</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_161578v1/shard-dg2-6/igt@prime_vgem@fence-write-hang.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i9=
15#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_17983/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each-numvf=
s-all.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/9917">i915#9917</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_161578v1/shard-rkl-5/igt@sriov_=
basic@enable-vfs-bind-unbind-each-numvfs-all.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>) +=
1 other test skip</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_17983 -&gt; Patchwork_161578v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_17983: cd76e45b9a192aa3d4f7a2efb8ee46767f098e07 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_8753: 8753<br />
  Patchwork_161578v1: cd76e45b9a192aa3d4f7a2efb8ee46767f098e07 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============4550744671024643622==--
