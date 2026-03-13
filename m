Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wPMWDboktGl7hwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 15:52:42 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D24285540
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 15:52:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8191310EC73;
	Fri, 13 Mar 2026 14:52:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D50D10EC6D;
 Fri, 13 Mar 2026 14:52:38 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============0487952349822641650=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/dmc=3A_Update_P?=
 =?utf-8?q?IPEDMC_interrupt_mask_=28rev3=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dibin Moolakadan Subrahmanian" <dibin.moolakadan.subrahmanian@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Mar 2026 14:52:38 -0000
Message-ID: <177341355835.356419.9682992084226700878@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260312132941.2614478-1-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260312132941.2614478-1-dibin.moolakadan.subrahmanian@intel.com>
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
	NEURAL_HAM(-0.00)[-0.993];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 13D24285540
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============0487952349822641650==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dmc: Update PIPEDMC interrupt mask (rev3)
URL   : https://patchwork.freedesktop.org/series/162934/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_18137_full -> Patchwork_162934v3_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_162934v3_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_162934v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_162934v3_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_linear_blits@interruptible:
    - shard-dg1:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg1-17/igt@gem_linear_blits@interruptible.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg1-14/igt@gem_linear_blits@interruptible.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-tglu:         NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb:
    - shard-mtlp:         [PASS][4] -> [INCOMPLETE][5]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-6/igt@kms_plane_alpha_blend@alpha-opaque-fb.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-5/igt@kms_plane_alpha_blend@alpha-opaque-fb.html

  * igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:
    - shard-mtlp:         [PASS][6] -> [FAIL][7] +38 other tests fail
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html

  
#### Warnings ####

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-mtlp:         [SKIP][8] ([i915#3555] / [i915#8814]) -> [FAIL][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-6/igt@kms_cursor_crc@cursor-onscreen-max-size.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-5/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_pm_rpm@cursor-dpms:
    - shard-mtlp:         [SKIP][10] ([i915#4077]) -> [FAIL][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-6/igt@kms_pm_rpm@cursor-dpms.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-5/igt@kms_pm_rpm@cursor-dpms.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-a-edp-1:
    - shard-mtlp:         [SKIP][12] ([i915#9808]) -> [FAIL][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-a-edp-1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-a-edp-1.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-b-edp-1:
    - shard-mtlp:         [SKIP][14] ([i915#12316]) -> [FAIL][15] +1 other test fail
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-b-edp-1.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-b-edp-1.html

  
Known issues
------------

  Here are the changes found in Patchwork_162934v3_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_basic@multigpu-create-close:
    - shard-tglu:         NOTRUN -> [SKIP][16] ([i915#7697])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-3/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [PASS][17] -> [INCOMPLETE][18] ([i915#13356]) +1 other test incomplete
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg2-7/igt@gem_ccs@suspend-resume.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg2-5/igt@gem_ccs@suspend-resume.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-tglu:         NOTRUN -> [SKIP][19] ([i915#6335])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-3/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_create@create-ext-set-pat:
    - shard-rkl:          NOTRUN -> [SKIP][20] ([i915#8562])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@gem_create@create-ext-set-pat.html
    - shard-tglu:         NOTRUN -> [SKIP][21] ([i915#8562])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-glk:          NOTRUN -> [INCOMPLETE][22] ([i915#13356]) +1 other test incomplete
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk4/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-tglu-1:       NOTRUN -> [SKIP][23] ([i915#280])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@in-flight-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][24] ([i915#13390])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk9/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-rkl:          NOTRUN -> [SKIP][25] ([i915#4525]) +1 other test skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@gem_exec_balancer@parallel-contexts.html
    - shard-tglu:         NOTRUN -> [SKIP][26] ([i915#4525]) +1 other test skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-tglu-1:       NOTRUN -> [SKIP][27] ([i915#4525])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_reloc@basic-write-wc-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][28] ([i915#3281]) +2 other tests skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@gem_exec_reloc@basic-write-wc-noreloc.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-rkl:          [PASS][29] -> [INCOMPLETE][30] ([i915#13356]) +1 other test incomplete
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-5/igt@gem_exec_suspend@basic-s3.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-4/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-rkl:          NOTRUN -> [SKIP][31] ([i915#4613]) +1 other test skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@random:
    - shard-glk:          NOTRUN -> [SKIP][32] ([i915#4613])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk9/igt@gem_lmem_swapping@random.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][33] ([i915#4613]) +1 other test skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_mmap_offset@clear-via-pagefault:
    - shard-mtlp:         [PASS][34] -> [DMESG-WARN][35] ([i915#15478]) +1 other test dmesg-warn
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-6/igt@gem_mmap_offset@clear-via-pagefault.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-5/igt@gem_mmap_offset@clear-via-pagefault.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-rkl:          NOTRUN -> [SKIP][36] ([i915#8411]) +1 other test skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-glk:          NOTRUN -> [SKIP][37] ([i915#3323])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk4/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][38] ([i915#3297])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@gem_userptr_blits@dmabuf-unsync.html
    - shard-tglu:         NOTRUN -> [SKIP][39] ([i915#3297])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gen9_exec_parse@basic-rejected:
    - shard-rkl:          NOTRUN -> [SKIP][40] ([i915#2527])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@gen9_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@bb-large:
    - shard-tglu:         NOTRUN -> [SKIP][41] ([i915#2527] / [i915#2856]) +1 other test skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-3/igt@gen9_exec_parse@bb-large.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-tglu-1:       NOTRUN -> [SKIP][42] ([i915#2527] / [i915#2856])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@i915_module_load@fault-injection@intel_connector_register:
    - shard-glk:          NOTRUN -> [ABORT][43] ([i915#15342]) +1 other test abort
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk4/igt@i915_module_load@fault-injection@intel_connector_register.html

  * igt@i915_pm_sseu@full-enable:
    - shard-tglu-1:       NOTRUN -> [SKIP][44] ([i915#4387])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#5723])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_selftest@live:
    - shard-mtlp:         [PASS][46] -> [DMESG-FAIL][47] ([i915#12061] / [i915#15560])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-3/igt@i915_selftest@live.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-5/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [PASS][48] -> [DMESG-FAIL][49] ([i915#12061])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-3/igt@i915_selftest@live@workarounds.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-5/igt@i915_selftest@live@workarounds.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-dg1:          [PASS][50] -> [DMESG-WARN][51] ([i915#4391] / [i915#4423])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg1-13/igt@i915_suspend@basic-s3-without-i915.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg1-18/igt@i915_suspend@basic-s3-without-i915.html
    - shard-glk:          NOTRUN -> [INCOMPLETE][52] ([i915#4817])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk9/igt@i915_suspend@basic-s3-without-i915.html

  * igt@i915_suspend@debugfs-reader:
    - shard-rkl:          [PASS][53] -> [INCOMPLETE][54] ([i915#4817])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@i915_suspend@debugfs-reader.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@i915_suspend@debugfs-reader.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-glk10:        NOTRUN -> [FAIL][55] ([i915#14888]) +1 other test fail
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk10/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_atomic@atomic-plane-damage:
    - shard-glk10:        NOTRUN -> [SKIP][56] +130 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk10/igt@kms_atomic@atomic-plane-damage.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-tglu-1:       NOTRUN -> [SKIP][57] ([i915#9531])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#5286])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
    - shard-tglu:         NOTRUN -> [SKIP][59] ([i915#5286]) +1 other test skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [PASS][60] -> [FAIL][61] ([i915#15733] / [i915#5138])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-7/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-tglu-1:       NOTRUN -> [SKIP][62] ([i915#5286])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@linear-16bpp-rotate-270:
    - shard-tglu:         NOTRUN -> [SKIP][63] +27 other tests skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@kms_big_fb@linear-16bpp-rotate-270.html

  * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180:
    - shard-mtlp:         [PASS][64] -> [FAIL][65] ([i915#15834])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-6/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-5/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#3638]) +1 other test skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-180:
    - shard-glk:          NOTRUN -> [SKIP][67] +104 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk9/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][68] +6 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#6095]) +35 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg2-8/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][70] ([i915#6095]) +34 other tests skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-3/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#10307] / [i915#6095]) +49 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg2-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][72] ([i915#6095]) +143 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg1-14/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#14098] / [i915#6095]) +31 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][74] ([i915#15582]) +1 other test incomplete
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk11/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#12313])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-d-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][76] ([i915#6095]) +14 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#6095]) +53 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-7/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg2-4/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][79] ([i915#13781]) +3 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg2-4/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_audio@dp-audio:
    - shard-tglu:         NOTRUN -> [SKIP][80] ([i915#11151] / [i915#7828]) +3 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@kms_chamelium_audio@dp-audio.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - shard-tglu-1:       NOTRUN -> [SKIP][81] ([i915#11151] / [i915#7828]) +1 other test skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_chamelium_frames@hdmi-crc-fast:
    - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#11151] / [i915#7828]) +3 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@kms_chamelium_frames@hdmi-crc-fast.html

  * igt@kms_content_protection@content-type-change:
    - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#6944] / [i915#9424])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@kms_content_protection@content-type-change.html
    - shard-tglu:         NOTRUN -> [SKIP][84] ([i915#6944] / [i915#9424])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@kms_content_protection@content-type-change.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][85] ([i915#15330] / [i915#3116] / [i915#3299])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@dp-mst-type-0-hdcp14:
    - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#15330])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@kms_content_protection@dp-mst-type-0-hdcp14.html

  * igt@kms_content_protection@suspend-resume:
    - shard-tglu:         NOTRUN -> [SKIP][87] ([i915#6944])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-3/igt@kms_content_protection@suspend-resume.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85:
    - shard-tglu:         NOTRUN -> [FAIL][88] ([i915#13566]) +1 other test fail
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@kms_cursor_crc@cursor-onscreen-256x85.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [FAIL][89] ([i915#13566]) +2 other tests fail
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1:
    - shard-tglu:         [PASS][90] -> [FAIL][91] ([i915#13566]) +1 other test fail
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-tglu-10/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-6/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-tglu-1:       NOTRUN -> [SKIP][92] ([i915#13049])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-max-size:
    - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#3555])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-max-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          [PASS][94] -> [FAIL][95] ([i915#15804])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#9723])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
    - shard-tglu:         NOTRUN -> [SKIP][97] ([i915#9723])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-tglu-1:       NOTRUN -> [SKIP][98] ([i915#13691])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#3804])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dsc@dsc-basic:
    - shard-tglu:         NOTRUN -> [SKIP][100] ([i915#3555] / [i915#3840]) +1 other test skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-3/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#3555] / [i915#3840])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_feature_discovery@chamelium:
    - shard-tglu-1:       NOTRUN -> [SKIP][102] ([i915#2065] / [i915#4854])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@psr1:
    - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#658])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@kms_feature_discovery@psr1.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][104] ([i915#12745] / [i915#4839])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk10/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][105] ([i915#4839])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk10/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][106] ([i915#3637] / [i915#9934]) +8 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-3/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#9934]) +4 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-tglu-1:       NOTRUN -> [SKIP][108] ([i915#3637] / [i915#9934])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-snb:          [PASS][109] -> [INCOMPLETE][110] ([i915#12314] / [i915#12745] / [i915#4839])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-snb7/igt@kms_flip@flip-vs-suspend.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-snb6/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:
    - shard-rkl:          [PASS][111] -> [INCOMPLETE][112] ([i915#6113]) +1 other test incomplete
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-4/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-3/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@b-hdmi-a1:
    - shard-snb:          [PASS][113] -> [INCOMPLETE][114] ([i915#12314] / [i915#4839])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-snb7/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-snb6/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#15643]) +2 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
    - shard-tglu:         NOTRUN -> [SKIP][116] ([i915#15643])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][117] ([i915#15643])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move:
    - shard-dg2:          [PASS][118] -> [FAIL][119] ([i915#15389] / [i915#6880])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt:
    - shard-tglu-1:       NOTRUN -> [SKIP][120] +17 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#15102] / [i915#3023]) +7 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#1825]) +12 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
    - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#15102]) +9 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - shard-tglu-1:       NOTRUN -> [SKIP][124] ([i915#15102]) +4 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#15102])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][126] ([i915#15460])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-3/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@basic-max-non-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#13688])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@kms_joiner@basic-max-non-joiner.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-tglu-1:       NOTRUN -> [SKIP][128] ([i915#15815])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][129] ([i915#12756] / [i915#13409] / [i915#13476])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk10/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][130] ([i915#13409] / [i915#13476])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk10/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2.html

  * igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping:
    - shard-tglu:         NOTRUN -> [SKIP][131] ([i915#15709]) +2 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping:
    - shard-tglu-1:       NOTRUN -> [SKIP][132] ([i915#15709])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-4-tiled-modifier-source-clamping:
    - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#15709]) +3 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@kms_plane@pixel-format-4-tiled-modifier-source-clamping.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format:
    - shard-dg1:          [PASS][134] -> [DMESG-WARN][135] ([i915#4423])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg1-14/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg1-13/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-tglu:         NOTRUN -> [SKIP][136] ([i915#9812])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-3/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-tglu:         NOTRUN -> [SKIP][137] ([i915#9685])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#9685]) +1 other test skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-tglu-1:       NOTRUN -> [SKIP][139] ([i915#15073])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-dg2:          [PASS][140] -> [SKIP][141] ([i915#15073])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg2-5/igt@kms_pm_rpm@dpms-non-lpsp.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg2-4/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-tglu:         NOTRUN -> [SKIP][142] ([i915#15073])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-3/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-dg1:          [PASS][143] -> [SKIP][144] ([i915#15073])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg1-17/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg1-14/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@system-suspend-idle:
    - shard-dg2:          [PASS][145] -> [INCOMPLETE][146] ([i915#14419])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg2-5/igt@kms_pm_rpm@system-suspend-idle.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg2-4/igt@kms_pm_rpm@system-suspend-idle.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][147] ([i915#11520]) +2 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk4/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
    - shard-glk11:        NOTRUN -> [SKIP][148] ([i915#11520]) +2 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk11/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-cursor-plane-update-sf:
    - shard-glk10:        NOTRUN -> [SKIP][149] ([i915#11520]) +4 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk10/igt@kms_psr2_sf@psr2-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#11520]) +3 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
    - shard-tglu:         NOTRUN -> [SKIP][151] ([i915#11520]) +2 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
    - shard-tglu-1:       NOTRUN -> [SKIP][152] ([i915#11520]) +2 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr@fbc-pr-cursor-plane-onoff:
    - shard-glk11:        NOTRUN -> [SKIP][153] +82 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk11/igt@kms_psr@fbc-pr-cursor-plane-onoff.html

  * igt@kms_psr@fbc-pr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#1072] / [i915#9732]) +6 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@kms_psr@fbc-pr-suspend.html

  * igt@kms_psr@psr-basic:
    - shard-tglu:         NOTRUN -> [SKIP][155] ([i915#9732]) +9 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-3/igt@kms_psr@psr-basic.html

  * igt@kms_psr@psr-cursor-mmap-cpu:
    - shard-tglu-1:       NOTRUN -> [SKIP][156] ([i915#9732]) +3 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_psr@psr-cursor-mmap-cpu.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglu-1:       NOTRUN -> [SKIP][157] ([i915#9685])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-tglu-1:       NOTRUN -> [SKIP][158] ([i915#5289])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-glk:          NOTRUN -> [FAIL][159] ([i915#10959])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk4/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vrr@flip-basic:
    - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#15243] / [i915#3555])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@kms_vrr@flip-basic.html
    - shard-tglu:         NOTRUN -> [SKIP][161] ([i915#3555]) +1 other test skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@kms_vrr@flip-basic.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#9906])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@prime_vgem@basic-write:
    - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#3291] / [i915#3708])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#3708])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@prime_vgem@coherency-gtt.html

  
#### Possible fixes ####

  * igt@gem_exec_suspend@basic-s3:
    - shard-glk:          [INCOMPLETE][165] ([i915#13196] / [i915#13356]) -> [PASS][166] +1 other test pass
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-glk8/igt@gem_exec_suspend@basic-s3.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk1/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-dg2:          [FAIL][167] ([i915#15734]) -> [PASS][168]
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg2-1/igt@gem_lmem_swapping@smem-oom.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg2-6/igt@gem_lmem_swapping@smem-oom.html
    - shard-dg1:          [FAIL][169] ([i915#15734]) -> [PASS][170]
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg1-17/igt@gem_lmem_swapping@smem-oom.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg1-14/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [CRASH][171] ([i915#5493]) -> [PASS][172]
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html
    - shard-dg1:          [CRASH][173] ([i915#5493]) -> [PASS][174]
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gem_workarounds@suspend-resume:
    - shard-rkl:          [INCOMPLETE][175] ([i915#13356]) -> [PASS][176]
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-4/igt@gem_workarounds@suspend-resume.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@gem_workarounds@suspend-resume.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [FAIL][177] ([i915#15733] / [i915#5138]) -> [PASS][178]
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_cursor_crc@cursor-sliding-128x42:
    - shard-rkl:          [FAIL][179] ([i915#13566]) -> [PASS][180] +1 other test pass
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-128x42.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-3/igt@kms_cursor_crc@cursor-sliding-128x42.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk:          [FAIL][181] ([i915#15804]) -> [PASS][182]
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-snb:          [TIMEOUT][183] ([i915#14033] / [i915#14350]) -> [PASS][184]
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-snb4/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [TIMEOUT][185] ([i915#14033]) -> [PASS][186]
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-snb4/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_force_connector_basic@force-edid:
    - shard-mtlp:         [SKIP][187] ([i915#15672]) -> [PASS][188]
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-1/igt@kms_force_connector_basic@force-edid.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-7/igt@kms_force_connector_basic@force-edid.html

  * igt@kms_hdmi_inject@inject-4k:
    - shard-mtlp:         [SKIP][189] ([i915#15725]) -> [PASS][190] +1 other test pass
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-1/igt@kms_hdmi_inject@inject-4k.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-7/igt@kms_hdmi_inject@inject-4k.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-dg2:          [SKIP][191] ([i915#15073]) -> [PASS][192]
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][193] ([i915#15073]) -> [PASS][194]
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  
#### Warnings ####

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-rkl:          [SKIP][195] ([i915#11078]) -> [SKIP][196] ([i915#11078] / [i915#14544])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@device_reset@unbind-cold-reset-rebind.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-rkl:          [SKIP][197] ([i915#3555] / [i915#9323]) -> [SKIP][198] ([i915#14544] / [i915#3555] / [i915#9323])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@gem_ccs@block-multicopy-inplace.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-rkl:          [SKIP][199] ([i915#280]) -> [SKIP][200] ([i915#14544] / [i915#280])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@gem_ctx_sseu@invalid-args.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_exec_reloc@basic-scanout:
    - shard-rkl:          [SKIP][201] ([i915#3281]) -> [SKIP][202] ([i915#14544] / [i915#3281]) +2 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@gem_exec_reloc@basic-scanout.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@gem_exec_reloc@basic-scanout.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-rkl:          [SKIP][203] ([i915#4613] / [i915#7582]) -> [SKIP][204] ([i915#14544] / [i915#4613] / [i915#7582])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@gem_lmem_evict@dontneed-evict-race.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-rkl:          [SKIP][205] ([i915#4613]) -> [SKIP][206] ([i915#14544] / [i915#4613])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@gem_lmem_swapping@smem-oom.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          [SKIP][207] ([i915#3282]) -> [SKIP][208] ([i915#14544] / [i915#3282]) +1 other test skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_softpin@noreloc-s3:
    - shard-rkl:          [ABORT][209] ([i915#15131]) -> [INCOMPLETE][210] ([i915#13809])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-1/igt@gem_softpin@noreloc-s3.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-3/igt@gem_softpin@noreloc-s3.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-rkl:          [SKIP][211] ([i915#14498]) -> [SKIP][212] ([i915#14498] / [i915#14544])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@i915_pm_rc6_residency@rc6-idle.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
    - shard-rkl:          [SKIP][213] ([i915#5286]) -> [SKIP][214] ([i915#14544] / [i915#5286]) +1 other test skip
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@linear-32bpp-rotate-270:
    - shard-rkl:          [SKIP][215] ([i915#3638]) -> [SKIP][216] ([i915#14544] / [i915#3638]) +2 other tests skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@kms_big_fb@linear-32bpp-rotate-270.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-rkl:          [SKIP][217] -> [SKIP][218] ([i915#14544]) +11 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-dg1:          [SKIP][219] ([i915#4538]) -> [SKIP][220] ([i915#4423] / [i915#4538])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg1-16/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg1-19/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          [SKIP][221] ([i915#14098] / [i915#6095]) -> [SKIP][222] ([i915#14098] / [i915#14544] / [i915#6095]) +11 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][223] ([i915#6095]) -> [SKIP][224] ([i915#14544] / [i915#6095]) +11 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_chamelium_frames@dp-frame-dump:
    - shard-rkl:          [SKIP][225] ([i915#11151] / [i915#7828]) -> [SKIP][226] ([i915#11151] / [i915#14544] / [i915#7828]) +3 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@kms_chamelium_frames@dp-frame-dump.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_chamelium_frames@dp-frame-dump.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-rkl:          [SKIP][227] ([i915#6944] / [i915#7118] / [i915#9424]) -> [SKIP][228] ([i915#14544] / [i915#6944] / [i915#7118] / [i915#9424]) +1 other test skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@kms_content_protection@atomic-dpms.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@cursor-offscreen-max-size:
    - shard-rkl:          [SKIP][229] ([i915#3555]) -> [SKIP][230] ([i915#14544] / [i915#3555]) +1 other test skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@kms_cursor_crc@cursor-offscreen-max-size.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-max-size.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-rkl:          [SKIP][231] ([i915#13049]) -> [SKIP][232] ([i915#13049] / [i915#14544])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          [SKIP][233] ([i915#4103]) -> [SKIP][234] ([i915#14544] / [i915#4103]) +2 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-rkl:          [SKIP][235] ([i915#9934]) -> [SKIP][236] ([i915#14544] / [i915#9934]) +5 other tests skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@kms_flip@2x-flip-vs-dpms.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-glk:          [INCOMPLETE][237] ([i915#12314] / [i915#12745] / [i915#4839] / [i915#6113]) -> [INCOMPLETE][238] ([i915#12745] / [i915#4839] / [i915#6113])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-glk5/igt@kms_flip@flip-vs-suspend-interruptible.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:
    - shard-glk:          [INCOMPLETE][239] ([i915#12314] / [i915#12745]) -> [INCOMPLETE][240] ([i915#12745])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-glk5/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-rkl:          [SKIP][241] ([i915#15643]) -> [SKIP][242] ([i915#14544] / [i915#15643]) +2 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-mtlp:         [SKIP][243] ([i915#15672]) -> [SKIP][244]
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-1/igt@kms_force_connector_basic@force-load-detect.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-4/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][245] ([i915#1825]) -> [SKIP][246] ([i915#14544] / [i915#1825]) +16 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-pwrite:
    - shard-rkl:          [SKIP][247] ([i915#15102]) -> [SKIP][248] ([i915#14544] / [i915#15102]) +1 other test skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-pwrite.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:
    - shard-dg2:          [SKIP][249] ([i915#15102] / [i915#3458]) -> [SKIP][250] ([i915#10433] / [i915#15102] / [i915#3458])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-dg2:          [SKIP][251] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][252] ([i915#15102] / [i915#3458]) +1 other test skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:
    - shard-rkl:          [SKIP][253] ([i915#15102] / [i915#3023]) -> [SKIP][254] ([i915#14544] / [i915#15102] / [i915#3023]) +5 other tests skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-mtlp:         [SKIP][255] ([i915#12713]) -> [SKIP][256] ([i915#1187] / [i915#12713])
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-2/igt@kms_hdr@brightness-with-hdr.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-1/igt@kms_hdr@brightness-with-hdr.html
    - shard-rkl:          [SKIP][257] ([i915#12713]) -> [SKIP][258] ([i915#1187] / [i915#12713])
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-4/igt@kms_hdr@brightness-with-hdr.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-3/igt@kms_hdr@brightness-with-hdr.html
    - shard-tglu:         [SKIP][259] ([i915#1187] / [i915#12713]) -> [SKIP][260] ([i915#12713])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-tglu-2/igt@kms_hdr@brightness-with-hdr.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-5/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping:
    - shard-rkl:          [SKIP][261] ([i915#15709]) -> [SKIP][262] ([i915#14544] / [i915#15709])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-rkl:          [SKIP][263] ([i915#3828]) -> [SKIP][264] ([i915#14544] / [i915#3828])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@kms_pm_dc@dc5-retention-flops.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          [SKIP][265] ([i915#9340]) -> [SKIP][266] ([i915#3828])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          [SKIP][267] ([i915#15073]) -> [SKIP][268] ([i915#14544] / [i915#15073])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area:
    - shard-rkl:          [SKIP][269] ([i915#11520]) -> [SKIP][270] ([i915#11520] / [i915#14544]) +4 other tests skip
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-rkl:          [SKIP][271] ([i915#9683]) -> [SKIP][272] ([i915#14544] / [i915#9683])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@kms_psr2_su@page_flip-p010.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@psr-primary-page-flip:
    - shard-rkl:          [SKIP][273] ([i915#1072] / [i915#9732]) -> [SKIP][274] ([i915#1072] / [i915#14544] / [i915#9732]) +8 other tests skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@kms_psr@psr-primary-page-flip.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_psr@psr-primary-page-flip.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-rkl:          [SKIP][275] ([i915#5289]) -> [SKIP][276] ([i915#14544] / [i915#5289])
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_vrr@negative-basic:
    - shard-rkl:          [SKIP][277] ([i915#3555] / [i915#9906]) -> [SKIP][278] ([i915#14544] / [i915#3555] / [i915#9906])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@kms_vrr@negative-basic.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_vrr@negative-basic.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-rkl:          [SKIP][279] ([i915#2435]) -> [SKIP][280] ([i915#14544] / [i915#2435])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@perf@per-context-mode-unprivileged.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@perf@per-context-mode-unprivileged.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each:
    - shard-rkl:          [SKIP][281] ([i915#9917]) -> [SKIP][282] ([i915#14544] / [i915#9917])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@sriov_basic@enable-vfs-bind-unbind-each.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each.html

  
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10959]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10959
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314
  [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
  [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#12756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13196
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13390]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390
  [i915#13409]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409
  [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688
  [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
  [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
  [i915#13809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13809
  [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14350]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14350
  [i915#14419]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419
  [i915#14498]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14888]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14888
  [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
  [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
  [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
  [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
  [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
  [i915#15342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342
  [i915#15389]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15389
  [i915#15460]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460
  [i915#15478]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15478
  [i915#15560]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15560
  [i915#15582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582
  [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
  [i915#15672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15672
  [i915#15709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
  [i915#15725]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15725
  [i915#15733]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733
  [i915#15734]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15734
  [i915#15804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15804
  [i915#15815]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15815
  [i915#15834]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15834
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#2065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065
  [i915#2435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435
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
  [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
  [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
  [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5493]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
  [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
  [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_18137 -> Patchwork_162934v3

  CI-20190529: 20190529
  CI_DRM_18137: 3ccc0e3404591e404d0dee79406cd013f377356a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8798: 8798
  Patchwork_162934v3: 3ccc0e3404591e404d0dee79406cd013f377356a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/index.html

--===============0487952349822641650==
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
<tr><td><b>Series:</b></td><td>drm/i915/dmc: Update PIPEDMC interrupt mask (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/162934/">https://patchwork.freedesktop.org/series/162934/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18137_full -&gt; Patchwork_162934v3_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_162934v3_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_162934v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_162934v3_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_linear_blits@interruptible:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg1-17/igt@gem_linear_blits@interruptible.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg1-14/igt@gem_linear_blits@interruptible.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-6/igt@kms_plane_alpha_blend@alpha-opaque-fb.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-5/igt@kms_plane_alpha_blend@alpha-opaque-fb.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-6/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-5/igt@kms_universal_plane@cursor-fb-leak@pipe-d-edp-1.html">FAIL</a> +38 other tests fail</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-6/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814">i915#8814</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-5/igt@kms_cursor_crc@cursor-onscreen-max-size.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@cursor-dpms:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-6/igt@kms_pm_rpm@cursor-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-5/igt@kms_pm_rpm@cursor-dpms.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-a-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808">i915#9808</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-a-edp-1.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-b-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316">i915#12316</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-5/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-b-edp-1.html">FAIL</a> +1 other test fail</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_162934v3_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-3/igt@gem_basic@multigpu-create-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg2-7/igt@gem_ccs@suspend-resume.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg2-5/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-3/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@gem_create@create-ext-set-pat.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562">i915#8562</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@gem_create@create-ext-set-pat.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk4/igt@gem_ctx_isolation@preservation-s3@bcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk9/igt@gem_eio@in-flight-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390">i915#13390</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@gem_exec_balancer@parallel-out-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@gem_exec_reloc@basic-write-wc-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-5/igt@gem_exec_suspend@basic-s3.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-4/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@gem_lmem_swapping@parallel-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk9/igt@gem_lmem_swapping@random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@gem_lmem_swapping@verify-random-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear-via-pagefault:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-6/igt@gem_mmap_offset@clear-via-pagefault.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-5/igt@gem_mmap_offset@clear-via-pagefault.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15478">i915#15478</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk4/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@gem_userptr_blits@dmabuf-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@gem_userptr_blits@dmabuf-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@gen9_exec_parse@basic-rejected.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-3/igt@gen9_exec_parse@bb-large.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@fault-injection@intel_connector_register:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk4/igt@i915_module_load@fault-injection@intel_connector_register.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342">i915#15342</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723">i915#5723</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-3/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-5/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15560">i915#15560</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-3/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg1-13/igt@i915_suspend@basic-s3-without-i915.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg1-18/igt@i915_suspend@basic-s3-without-i915.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk9/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@i915_suspend@debugfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk10/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14888">i915#14888</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@atomic-plane-damage:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk10/igt@kms_atomic@atomic-plane-damage.html">SKIP</a> +130 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-7/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733">i915#15733</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@kms_big_fb@linear-16bpp-rotate-270.html">SKIP</a> +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-6/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-5/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15834">i915#15834</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk9/igt@kms_big_fb@yf-tiled-64bpp-rotate-180.html">SKIP</a> +104 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg2-8/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +35 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-3/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg2-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +49 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg1-14/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +143 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +31 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk11/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582">i915#15582</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-7/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +53 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg2-4/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg2-4/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781">i915#13781</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@dp-audio:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@kms_chamelium_audio@dp-audio.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_chamelium_edid@hdmi-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@kms_chamelium_frames@hdmi-crc-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@content-type-change:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@kms_content_protection@content-type-change.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@kms_content_protection@content-type-change.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0-hdcp14:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@kms_content_protection@dp-mst-type-0-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@suspend-resume:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-3/igt@kms_content_protection@suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@kms_cursor_crc@cursor-onscreen-256x85.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-tglu-10/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-6/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-max-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15804">i915#15804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_display_modes@extended-mode-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691">i915#13691</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-3/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_feature_discovery@chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065">i915#2065</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@kms_feature_discovery@psr1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk10/igt@kms_flip@2x-flip-vs-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk10/igt@kms_flip@2x-flip-vs-suspend@ab-hdmi-a1-hdmi-a2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-wf_vblank-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-3/igt@kms_flip@2x-flip-vs-wf_vblank-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@kms_flip@2x-plain-flip-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_flip@2x-plain-flip-ts-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-snb7/igt@kms_flip@flip-vs-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-snb6/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-4/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-3/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-snb7/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-snb6/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +2 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg2-7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15389">i915#15389</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-pgflip-blt.html">SKIP</a> +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-3/igt@kms_joiner@basic-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460">i915#15460</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-max-non-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@kms_joiner@basic-max-non-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688">i915#13688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15815">i915#15815</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk10/igt@kms_pipe_crc_basic@suspend-read-crc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756">i915#12756</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409">i915#13409</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476">i915#13476</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk10/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409">i915#13409</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476">i915#13476</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-modifier-source-clamping:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@kms_plane@pixel-format-4-tiled-modifier-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg1-14/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg1-13/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-pixel-format.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-3/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@kms_pm_dc@dc6-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg2-5/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg2-4/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-3/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg1-17/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg1-14/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-idle:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg2-5/igt@kms_pm_rpm@system-suspend-idle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg2-4/igt@kms_pm_rpm@system-suspend-idle.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419">i915#14419</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk4/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk11/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-update-sf:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk10/igt@kms_psr2_sf@psr2-cursor-plane-update-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-cursor-plane-onoff:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk11/igt@kms_psr@fbc-pr-cursor-plane-onoff.html">SKIP</a> +82 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@kms_psr@fbc-pr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-3/igt@kms_psr@psr-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-mmap-cpu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_psr@psr-cursor-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk4/igt@kms_tiled_display@basic-test-pattern.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10959">i915#10959</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@kms_vrr@flip-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243">i915#15243</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-4/igt@kms_vrr@flip-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-glk8/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13196">i915#13196</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk1/igt@gem_exec_suspend@basic-s3.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg2-1/igt@gem_lmem_swapping@smem-oom.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15734">i915#15734</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg2-6/igt@gem_lmem_swapping@smem-oom.html">PASS</a></li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg1-17/igt@gem_lmem_swapping@smem-oom.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15734">i915#15734</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg1-14/igt@gem_lmem_swapping@smem-oom.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg2-1/igt@gem_lmem_swapping@smem-oom@lmem0.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493">i915#5493</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg2-6/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a></li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg1-17/igt@gem_lmem_swapping@smem-oom@lmem0.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493">i915#5493</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg1-14/igt@gem_lmem_swapping@smem-oom@lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-4/igt@gem_workarounds@suspend-resume.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@gem_workarounds@suspend-resume.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733">i915#15733</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-128x42:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-128x42.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-3/igt@kms_cursor_crc@cursor-sliding-128x42.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15804">i915#15804</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-snb4/igt@kms_flip@2x-flip-vs-suspend-interruptible.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033">i915#14033</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14350">i915#14350</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-snb4/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033">i915#14033</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-snb7/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-edid:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-1/igt@kms_force_connector_basic@force-edid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15672">i915#15672</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-7/igt@kms_force_connector_basic@force-edid.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-4k:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-1/igt@kms_hdmi_inject@inject-4k.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15725">i915#15725</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-7/igt@kms_hdmi_inject@inject-4k.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">i915#11078</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">i915#11078</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-scanout:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@gem_exec_reloc@basic-scanout.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@gem_exec_reloc@basic-scanout.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582">i915#7582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582">i915#7582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@gem_lmem_swapping@smem-oom.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@gem_lmem_swapping@smem-oom.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@gem_partial_pwrite_pread@writes-after-reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-1/igt@gem_softpin@noreloc-s3.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131">i915#15131</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-3/igt@gem_softpin@noreloc-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13809">i915#13809</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@i915_pm_rc6_residency@rc6-idle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498">i915#14498</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@i915_pm_rc6_residency@rc6-idle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498">i915#14498</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@kms_big_fb@linear-32bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_big_fb@linear-32bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg1-16/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg1-19/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-frame-dump:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@kms_chamelium_frames@dp-frame-dump.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_chamelium_frames@dp-frame-dump.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@kms_content_protection@atomic-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_content_protection@atomic-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-max-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@kms_cursor_crc@cursor-offscreen-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-glk5/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-glk5/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-glk1/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-1/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15672">i915#15672</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-4/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-mtlp-2/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-mtlp-1/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187">i915#1187</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>)</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-4/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-3/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187">i915#1187</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>)</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-tglu-2/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187">i915#1187</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-tglu-5/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@kms_pm_dc@dc5-retention-flops.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_pm_dc@dc5-retention-flops.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-1/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-5/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-page-flip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-7/igt@perf@per-context-mode-unprivileged.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435">i915#2435</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@perf@per-context-mode-unprivileged.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435">i915#2435</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18137/shard-rkl-3/igt@sriov_basic@enable-vfs-bind-unbind-each.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162934v3/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18137 -&gt; Patchwork_162934v3</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18137: 3ccc0e3404591e404d0dee79406cd013f377356a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8798: 8798<br />
  Patchwork_162934v3: 3ccc0e3404591e404d0dee79406cd013f377356a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============0487952349822641650==--
