Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2NTVIs4jHmoohgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 02:29:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EAE76268BD
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 02:29:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E12FD10EAA4;
	Tue,  2 Jun 2026 00:28:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6beec6c84f66 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0642C10EA9A;
 Tue,  2 Jun 2026 00:28:57 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3498572003880685400=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EFull=3A_success_for_drm/i915/drrs=3A_Synchro?=
 =?utf-8?q?nize_drrs_activate_with_debugfs?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 02 Jun 2026 00:28:56 -0000
Message-ID: <178036013699.33410.14930990677239979798@6beec6c84f66>
X-Patchwork-Hint: ignore
References: <20260601144255.1481931-1-arun.r.murthy@intel.com>
In-Reply-To: <20260601144255.1481931-1-arun.r.murthy@intel.com>
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
	NEURAL_HAM(-0.00)[-0.707];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 5EAE76268BD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============3498572003880685400==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/drrs: Synchronize drrs activate with debugfs
URL   : https://patchwork.freedesktop.org/series/167672/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_18597_full -> Patchwork_167672v1_full
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

  Here are the changes found in Patchwork_167672v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-rkl:          NOTRUN -> [SKIP][1] ([i915#8411]) +1 other test skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@device_reset@cold-reset-bound:
    - shard-tglu-1:       NOTRUN -> [SKIP][2] ([i915#11078])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@device_reset@cold-reset-bound.html

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-rkl:          NOTRUN -> [SKIP][3] ([i915#11078]) +1 other test skip
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@dmabuf@all-tests:
    - shard-tglu:         NOTRUN -> [SKIP][4] ([i915#15931])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@dmabuf@all-tests.html
    - shard-dg2:          NOTRUN -> [SKIP][5] ([i915#15931])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@dmabuf@all-tests.html

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-tglu:         NOTRUN -> [SKIP][6] ([i915#13008])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [PASS][7] -> [INCOMPLETE][8] ([i915#13356])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg2-5/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-3/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-tglu-1:       NOTRUN -> [SKIP][9] ([i915#6335])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_exec_balancer@hog:
    - shard-dg2:          NOTRUN -> [SKIP][10] ([i915#4812]) +1 other test skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@gem_exec_balancer@hog.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-tglu-1:       NOTRUN -> [SKIP][11] ([i915#4525])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_big@single:
    - shard-mtlp:         [PASS][12] -> [FAIL][13] ([i915#15871])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-mtlp-3/igt@gem_exec_big@single.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-mtlp-5/igt@gem_exec_big@single.html

  * igt@gem_exec_capture@capture-invisible:
    - shard-glk10:        NOTRUN -> [SKIP][14] ([i915#6334]) +1 other test skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk10/igt@gem_exec_capture@capture-invisible.html

  * igt@gem_exec_reloc@basic-write-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#3281])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@gem_exec_reloc@basic-write-cpu.html

  * igt@gem_exec_reloc@basic-write-wc:
    - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#3281]) +1 other test skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@gem_exec_reloc@basic-write-wc.html

  * igt@gem_exec_schedule@preempt-queue:
    - shard-dg2:          NOTRUN -> [SKIP][17] ([i915#4537] / [i915#4812])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@gem_exec_schedule@preempt-queue.html

  * igt@gem_fence_thrash@bo-write-verify-y:
    - shard-dg2:          NOTRUN -> [SKIP][18] ([i915#4860])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@gem_fence_thrash@bo-write-verify-y.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglu:         NOTRUN -> [SKIP][19] ([i915#2190])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-rkl:          NOTRUN -> [SKIP][20] ([i915#4613]) +1 other test skip
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@massive:
    - shard-glk:          NOTRUN -> [SKIP][21] ([i915#4613]) +2 other tests skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk1/igt@gem_lmem_swapping@massive.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-tglu:         NOTRUN -> [SKIP][22] ([i915#4613]) +1 other test skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@random:
    - shard-tglu-1:       NOTRUN -> [SKIP][23] ([i915#4613])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@gem_lmem_swapping@random.html

  * igt@gem_media_vme:
    - shard-tglu:         NOTRUN -> [SKIP][24] ([i915#284])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@gem_media_vme.html

  * igt@gem_pread@exhaustion:
    - shard-tglu-1:       NOTRUN -> [WARN][25] ([i915#2658])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@gem_pread@exhaustion.html
    - shard-glk10:        NOTRUN -> [WARN][26] ([i915#2658])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk10/igt@gem_pread@exhaustion.html

  * igt@gem_pread@snoop:
    - shard-rkl:          NOTRUN -> [SKIP][27] ([i915#3282]) +1 other test skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@gem_pread@snoop.html

  * igt@gem_pxp@reject-modify-context-protection-off-2:
    - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#4270]) +1 other test skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@gem_pxp@reject-modify-context-protection-off-2.html

  * igt@gem_readwrite@write-bad-handle:
    - shard-dg2:          NOTRUN -> [SKIP][29] ([i915#3282])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@gem_readwrite@write-bad-handle.html

  * igt@gem_render_copy@yf-tiled-to-vebox-linear:
    - shard-dg2:          NOTRUN -> [SKIP][30] ([i915#5190] / [i915#8428])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@gem_render_copy@yf-tiled-to-vebox-linear.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-glk:          NOTRUN -> [SKIP][31] ([i915#3323])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk6/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@readonly-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][32] ([i915#3297])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@gem_userptr_blits@readonly-unsync.html

  * igt@gem_userptr_blits@relocations:
    - shard-rkl:          NOTRUN -> [SKIP][33] ([i915#3281] / [i915#3297])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@gem_userptr_blits@relocations.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][34] ([i915#13356])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk11/igt@gem_workarounds@suspend-resume-context.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-rkl:          [PASS][35] -> [INCOMPLETE][36] ([i915#13356])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-7/igt@gem_workarounds@suspend-resume-fd.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-rkl:          NOTRUN -> [SKIP][37] ([i915#2527]) +1 other test skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@gen9_exec_parse@allowed-all.html
    - shard-tglu-1:       NOTRUN -> [SKIP][38] ([i915#2527] / [i915#2856]) +1 other test skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-tglu:         NOTRUN -> [SKIP][39] ([i915#2527] / [i915#2856]) +2 other tests skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@gen9_exec_parse@basic-rejected-ctx-param.html
    - shard-dg2:          NOTRUN -> [SKIP][40] ([i915#2856])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@i915_module_load@fault-injection@__uc_init:
    - shard-rkl:          NOTRUN -> [SKIP][41] ([i915#15479]) +4 other tests skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@i915_module_load@fault-injection@__uc_init.html

  * igt@i915_module_load@fault-injection@intel_connector_register:
    - shard-rkl:          NOTRUN -> [ABORT][42] ([i915#15342]) +1 other test abort
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@i915_module_load@fault-injection@intel_connector_register.html

  * igt@i915_module_load@reload-no-display:
    - shard-tglu-1:       NOTRUN -> [DMESG-WARN][43] ([i915#13029] / [i915#14545])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@i915_module_load@reload-no-display.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-tglu-1:       NOTRUN -> [WARN][44] ([i915#13790] / [i915#2681]) +1 other test warn
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-glk:          NOTRUN -> [INCOMPLETE][45] ([i915#13356] / [i915#15172])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk2/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_query@hwconfig_table:
    - shard-tglu-1:       NOTRUN -> [SKIP][46] ([i915#6245])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@i915_query@hwconfig_table.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-tglu-1:       NOTRUN -> [SKIP][47] ([i915#16109])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@i915_query@query-topology-known-pci-ids.html

  * igt@i915_suspend@forcewake:
    - shard-glk:          NOTRUN -> [INCOMPLETE][48] ([i915#16182] / [i915#4817])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk6/igt@i915_suspend@forcewake.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-tglu:         NOTRUN -> [SKIP][49] ([i915#12454] / [i915#12712])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_async_flips@alternate-sync-async-flip-atomic:
    - shard-dg1:          [PASS][50] -> [FAIL][51] ([i915#14888]) +1 other test fail
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg1-18/igt@kms_async_flips@alternate-sync-async-flip-atomic.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg1-17/igt@kms_async_flips@alternate-sync-async-flip-atomic.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-tglu:         NOTRUN -> [SKIP][52] ([i915#1769] / [i915#3555])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
    - shard-mtlp:         [PASS][53] -> [FAIL][54] ([i915#5956]) +1 other test fail
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-mtlp-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-mtlp-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-tglu:         NOTRUN -> [SKIP][55] ([i915#5286]) +2 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#5286]) +2 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
    - shard-tglu-1:       NOTRUN -> [SKIP][57] ([i915#5286]) +2 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-16bpp-rotate-0:
    - shard-tglu-1:       NOTRUN -> [FAIL][58] ([i915#16308])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_big_fb@linear-16bpp-rotate-0.html

  * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#3828])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip.html
    - shard-tglu:         NOTRUN -> [SKIP][60] ([i915#3828])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][61] ([i915#3638])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-32bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][62] ([i915#4538] / [i915#5190]) +2 other tests skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#10307] / [i915#6095]) +69 other tests skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-7/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][64] ([i915#6095]) +44 other tests skip
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#6095]) +47 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][66] ([i915#10307] / [i915#10434] / [i915#6095]) +2 other tests skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-4/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
    - shard-glk:          NOTRUN -> [SKIP][67] +351 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk9/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][68] ([i915#14098] / [i915#6095]) +26 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][69] ([i915#6095]) +7 other tests skip
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-4/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][70] ([i915#6095]) +159 other tests skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg1-19/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][71] ([i915#6095]) +29 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_edid@dp-edid-read:
    - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#11151] / [i915#7828]) +1 other test skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_chamelium_edid@dp-edid-read.html

  * igt@kms_chamelium_edid@dp-mode-timings:
    - shard-tglu:         NOTRUN -> [SKIP][73] ([i915#11151] / [i915#7828]) +3 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_chamelium_edid@dp-mode-timings.html

  * igt@kms_chamelium_hpd@dp-hpd:
    - shard-tglu-1:       NOTRUN -> [SKIP][74] ([i915#11151] / [i915#7828]) +4 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd.html

  * igt@kms_color@deep-color:
    - shard-dg2:          [PASS][75] -> [SKIP][76] ([i915#12655] / [i915#3555])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg2-10/igt@kms_color@deep-color.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-4/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#15865])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_content_protection@atomic.html
    - shard-tglu:         NOTRUN -> [SKIP][78] ([i915#15865]) +1 other test skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][79] ([i915#15330] / [i915#3116] / [i915#3299])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-tglu:         NOTRUN -> [SKIP][80] ([i915#15330] / [i915#3116] / [i915#3299])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-tglu-1:       NOTRUN -> [SKIP][81] ([i915#15865])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@uevent-hdcp14:
    - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#15865])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@kms_content_protection@uevent-hdcp14.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-tglu-1:       NOTRUN -> [SKIP][83] ([i915#13049])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85:
    - shard-tglu:         NOTRUN -> [FAIL][84] ([i915#13566]) +1 other test fail
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_cursor_crc@cursor-onscreen-256x85.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [FAIL][85] ([i915#13566])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#3555]) +2 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#13049])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#3555])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html
    - shard-tglu:         NOTRUN -> [SKIP][89] ([i915#3555])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#4103])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#13046] / [i915#5354])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-glk10:        NOTRUN -> [FAIL][92] ([i915#15804])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          NOTRUN -> [FAIL][93] ([i915#15804])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#9067])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-dg2:          [PASS][95] -> [SKIP][96] ([i915#3555])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#3804])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dp_link_training@non-uhbr-mst:
    - shard-dg2:          NOTRUN -> [SKIP][98] ([i915#13749])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_dp_link_training@non-uhbr-mst.html
    - shard-tglu:         NOTRUN -> [SKIP][99] ([i915#13749])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@kms_dp_link_training@non-uhbr-mst.html

  * igt@kms_dsc@dsc-basic:
    - shard-tglu:         NOTRUN -> [SKIP][100] ([i915#3555] / [i915#3840])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-9/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#3555] / [i915#3840])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-tglu-1:       NOTRUN -> [SKIP][102] ([i915#3555] / [i915#3840])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_fbcon_fbt@psr:
    - shard-dg2:          NOTRUN -> [SKIP][103] ([i915#3469])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_fbcon_fbt@psr.html
    - shard-tglu:         NOTRUN -> [SKIP][104] ([i915#3469])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@kms_fbcon_fbt@psr.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-tglu-1:       NOTRUN -> [SKIP][105] ([i915#3469])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@display-2x:
    - shard-tglu-1:       NOTRUN -> [SKIP][106] ([i915#16081])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_feature_discovery@display-2x.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-tglu:         NOTRUN -> [SKIP][107] ([i915#3637] / [i915#9934])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-9/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][108] ([i915#12745] / [i915#4839])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk11/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][109] ([i915#12745])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk11/igt@kms_flip@2x-flip-vs-suspend-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#9934]) +1 other test skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-tglu-1:       NOTRUN -> [SKIP][111] ([i915#3637] / [i915#9934]) +2 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-rkl:          [PASS][112] -> [INCOMPLETE][113] ([i915#16276] / [i915#6113]) +3 other tests incomplete
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_flip@flip-vs-suspend.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][114] ([i915#15643]) +2 other tests skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#15991] / [i915#5354]) +2 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-tglu-1:       NOTRUN -> [SKIP][116] +51 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-4:
    - shard-tglu:         NOTRUN -> [SKIP][117] ([i915#5439])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-shrfb-draw-mmap-wc:
    - shard-tglu-1:       NOTRUN -> [SKIP][118] ([i915#15989]) +7 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-move:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#15989]) +2 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-onoff:
    - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#15989]) +11 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-shrfb-plflip-blt:
    - shard-tglu:         NOTRUN -> [SKIP][121] +58 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-shrfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-mmap-cpu:
    - shard-dg2:          [PASS][122] -> [SKIP][123] ([i915#15989]) +6 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg2-10/igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-mmap-cpu.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbchdr-tiling-4:
    - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#5439])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbchdr-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#15104] / [i915#15990])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#15990] / [i915#8708]) +1 other test skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-indfb-fliptrack-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][127] ([i915#15102]) +26 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][128] ([i915#15989]) +11 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-rkl:          [PASS][129] -> [SKIP][130] ([i915#15989]) +13 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-1/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@hdr-rgb101010-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][131] ([i915#15990]) +6 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_frontbuffer_tracking@hdr-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@hdr-rgb565-draw-pwrite:
    - shard-glk:          [PASS][132] -> [SKIP][133] +9 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-glk8/igt@kms_frontbuffer_tracking@hdr-rgb565-draw-pwrite.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk6/igt@kms_frontbuffer_tracking@hdr-rgb565-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#15102]) +6 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#15102] / [i915#3023]) +5 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
    - shard-tglu-1:       NOTRUN -> [SKIP][136] ([i915#15102]) +23 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#1825])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-shrfb-pgflip-blt:
    - shard-glk11:        NOTRUN -> [SKIP][138] +3 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk11/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-spr-indfb-move:
    - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#15102]) +12 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-pri-indfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#15991]) +2 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][141] +29 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch:
    - shard-dg2:          [PASS][142] -> [SKIP][143] ([i915#16012] / [i915#3555] / [i915#8228])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg2-10/igt@kms_hdr@bpc-switch.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-4/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-rkl:          [PASS][144] -> [SKIP][145] ([i915#16012] / [i915#3555] / [i915#8228])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-2-xrgb2101010:
    - shard-rkl:          [PASS][146] -> [SKIP][147] ([i915#16012]) +1 other test skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-2-xrgb2101010.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-2-xrgb2101010.html

  * igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-2-xrgb2101010:
    - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#16012]) +5 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-3/igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-2-xrgb2101010.html

  * igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1-xrgb16161616f:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#16012]) +1 other test skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-4/igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1-xrgb16161616f.html

  * igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-3-xrgb16161616f:
    - shard-dg1:          NOTRUN -> [SKIP][150] ([i915#16012]) +3 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg1-12/igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-3-xrgb16161616f.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-tglu-1:       NOTRUN -> [SKIP][151] ([i915#16011] / [i915#3555] / [i915#8228])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-1-xrgb16161616f:
    - shard-tglu-1:       NOTRUN -> [SKIP][152] ([i915#16011]) +1 other test skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-1-xrgb16161616f.html

  * igt@kms_hdr@static-toggle:
    - shard-rkl:          [PASS][153] -> [SKIP][154] ([i915#16011] / [i915#3555] / [i915#8228])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-1/igt@kms_hdr@static-toggle.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_hdr@static-toggle.html
    - shard-tglu:         NOTRUN -> [SKIP][155] ([i915#16011] / [i915#3555] / [i915#8228])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_hdr@static-toggle.html

  * igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-3-xrgb16161616f:
    - shard-dg1:          NOTRUN -> [SKIP][156] ([i915#16011]) +7 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg1-13/igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-3-xrgb16161616f.html

  * igt@kms_hdr@static-toggle@pipe-a-hdmi-a-1-xrgb16161616f:
    - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#16011]) +3 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_hdr@static-toggle@pipe-a-hdmi-a-1-xrgb16161616f.html
    - shard-tglu:         NOTRUN -> [SKIP][158] ([i915#16011]) +1 other test skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_hdr@static-toggle@pipe-a-hdmi-a-1-xrgb16161616f.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][159] ([i915#15460])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][160] ([i915#15458])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][161] ([i915#12756] / [i915#13409] / [i915#13476]) +1 other test incomplete
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html

  * igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier:
    - shard-glk10:        NOTRUN -> [SKIP][162] +327 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk10/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier.html

  * igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping:
    - shard-rkl:          NOTRUN -> [SKIP][163] ([i915#15709])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier:
    - shard-tglu-1:       NOTRUN -> [SKIP][164] ([i915#15709]) +1 other test skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier.html

  * igt@kms_plane@pixel-format-yf-tiled-modifier-source-clamping:
    - shard-tglu:         NOTRUN -> [SKIP][165] ([i915#15709])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_plane@pixel-format-yf-tiled-modifier-source-clamping.html

  * igt@kms_plane@planar-pixel-format-settings@nv12-tile4-src-y:
    - shard-dg2:          NOTRUN -> [SKIP][166] ([i915#16112])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_plane@planar-pixel-format-settings@nv12-tile4-src-y.html
    - shard-tglu:         NOTRUN -> [SKIP][167] ([i915#16112])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@kms_plane@planar-pixel-format-settings@nv12-tile4-src-y.html

  * igt@kms_plane_multiple@tiling-4:
    - shard-tglu-1:       NOTRUN -> [SKIP][168] ([i915#14259])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_plane_multiple@tiling-4.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-dg2:          NOTRUN -> [SKIP][169] ([i915#13046] / [i915#5354] / [i915#9423])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-rkl:          [PASS][170] -> [SKIP][171] ([i915#6953])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers:
    - shard-dg1:          [PASS][172] -> [DMESG-WARN][173] ([i915#4423]) +3 other tests dmesg-warn
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg1-16/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg1-18/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-tglu-1:       NOTRUN -> [SKIP][174] ([i915#12343] / [i915#9812])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][175] ([i915#12343] / [i915#9812])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#15948])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_pm_dc@dc3co-vpb-simulation.html
    - shard-tglu:         NOTRUN -> [SKIP][177] ([i915#15948])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][178] ([i915#15739])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-dg2:          [PASS][179] -> [SKIP][180] ([i915#15073])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-7/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-rkl:          [PASS][181] -> [SKIP][182] ([i915#15073]) +2 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
    - shard-tglu:         NOTRUN -> [SKIP][183] ([i915#15073])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@pc8-residency:
    - shard-dg2:          NOTRUN -> [SKIP][184] +3 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_pm_rpm@pc8-residency.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#11520]) +3 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#11520])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:
    - shard-tglu-1:       NOTRUN -> [SKIP][187] ([i915#11520]) +1 other test skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-cursor-plane-update-sf:
    - shard-tglu:         NOTRUN -> [SKIP][188] ([i915#11520]) +3 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_psr2_sf@pr-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area:
    - shard-glk10:        NOTRUN -> [SKIP][189] ([i915#11520]) +7 other tests skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk10/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][190] ([i915#11520]) +5 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk9/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-tglu-1:       NOTRUN -> [SKIP][191] ([i915#9683])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@fbc-pr-sprite-render:
    - shard-tglu-1:       NOTRUN -> [SKIP][192] ([i915#9732]) +10 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_psr@fbc-pr-sprite-render.html

  * igt@kms_psr@fbc-psr2-sprite-blt:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#1072] / [i915#9732]) +3 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_psr@fbc-psr2-sprite-blt.html

  * igt@kms_psr@psr-sprite-mmap-cpu:
    - shard-tglu:         NOTRUN -> [SKIP][194] ([i915#9732]) +11 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@kms_psr@psr-sprite-mmap-cpu.html

  * igt@kms_psr@psr2-sprite-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][195] ([i915#1072] / [i915#9732]) +10 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_psr@psr2-sprite-mmap-cpu.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglu:         NOTRUN -> [SKIP][196] ([i915#15949])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#5190])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html
    - shard-tglu:         NOTRUN -> [SKIP][198] ([i915#5289])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-tglu-1:       NOTRUN -> [SKIP][199] ([i915#5289])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-tglu:         NOTRUN -> [ABORT][200] ([i915#13179]) +1 other test abort
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-9/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_setmode@invalid-clone-exclusive-crtc:
    - shard-tglu-1:       NOTRUN -> [SKIP][201] ([i915#3555])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_setmode@invalid-clone-exclusive-crtc.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-glk:          NOTRUN -> [FAIL][202] ([i915#10959])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk6/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglu:         NOTRUN -> [SKIP][203] ([i915#8623])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@negative-basic:
    - shard-dg2:          [PASS][204] -> [SKIP][205] ([i915#3555] / [i915#9906])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg2-10/igt@kms_vrr@negative-basic.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-7/igt@kms_vrr@negative-basic.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-tglu-1:       NOTRUN -> [SKIP][206] ([i915#9906])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-virtual.html

  * igt@perf@mi-rpc:
    - shard-rkl:          NOTRUN -> [SKIP][207] ([i915#2434])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@perf@mi-rpc.html

  * igt@perf_pmu@busy-double-start@vecs1:
    - shard-dg2:          [PASS][208] -> [FAIL][209] ([i915#4349]) +4 other tests fail
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-4/igt@perf_pmu@busy-double-start@vecs1.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-rkl:          NOTRUN -> [SKIP][210] ([i915#8516])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@vgem_basic@create:
    - shard-glk10:        NOTRUN -> [FAIL][211] ([i915#16296])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk10/igt@vgem_basic@create.html

  
#### Possible fixes ####

  * igt@gem_ctx_freq@sysfs@gt0:
    - shard-dg2:          [FAIL][212] ([i915#9561]) -> [PASS][213] +1 other test pass
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg2-8/igt@gem_ctx_freq@sysfs@gt0.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-4/igt@gem_ctx_freq@sysfs@gt0.html

  * igt@i915_suspend@debugfs-reader:
    - shard-rkl:          [INCOMPLETE][214] ([i915#4817]) -> [PASS][215]
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@i915_suspend@debugfs-reader.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@i915_suspend@debugfs-reader.html

  * igt@i915_suspend@sysfs-reader:
    - shard-dg2:          [ABORT][216] ([i915#15140]) -> [PASS][217]
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg2-10/igt@i915_suspend@sysfs-reader.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@i915_suspend@sysfs-reader.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-mtlp:         [FAIL][218] ([i915#15733] / [i915#5138]) -> [PASS][219]
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:
    - shard-rkl:          [INCOMPLETE][220] ([i915#15582]) -> [PASS][221] +1 other test pass
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_color_pipeline@plane-lut1d-post-ctm3x4:
    - shard-dg1:          [DMESG-WARN][222] ([i915#4423]) -> [PASS][223] +1 other test pass
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg1-15/igt@kms_color_pipeline@plane-lut1d-post-ctm3x4.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg1-17/igt@kms_color_pipeline@plane-lut1d-post-ctm3x4.html

  * igt@kms_cursor_crc@cursor-sliding-256x85:
    - shard-tglu:         [FAIL][224] ([i915#13566]) -> [PASS][225] +1 other test pass
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-tglu-5/igt@kms_cursor_crc@cursor-sliding-256x85.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-7/igt@kms_cursor_crc@cursor-sliding-256x85.html

  * igt@kms_draw_crc@draw-method-blt:
    - shard-glk:          [DMESG-WARN][226] -> [PASS][227] +1 other test pass
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-glk5/igt@kms_draw_crc@draw-method-blt.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk4/igt@kms_draw_crc@draw-method-blt.html

  * igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-pwrite:
    - shard-glk:          [SKIP][228] -> [PASS][229] +3 other tests pass
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-glk3/igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-pwrite.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk8/igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbchdr-tiling-linear:
    - shard-rkl:          [SKIP][230] ([i915#15989]) -> [PASS][231] +16 other tests pass
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_frontbuffer_tracking@fbchdr-tiling-linear.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-tiling-linear.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-rkl:          [SKIP][232] ([i915#16011] / [i915#3555] / [i915#8228]) -> [PASS][233]
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-7/igt@kms_hdr@invalid-metadata-sizes.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-2-xrgb2101010:
    - shard-rkl:          [SKIP][234] ([i915#16011]) -> [PASS][235] +1 other test pass
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-7/igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-2-xrgb2101010.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-2-xrgb2101010.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a:
    - shard-rkl:          [INCOMPLETE][236] ([i915#14412]) -> [PASS][237] +1 other test pass
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-dg2:          [SKIP][238] ([i915#15073]) -> [PASS][239] +1 other test pass
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg2-4/igt@kms_pm_rpm@dpms-non-lpsp.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-7/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-dg1:          [SKIP][240] ([i915#15073]) -> [PASS][241] +1 other test pass
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg1-14/igt@kms_pm_rpm@modeset-non-lpsp.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg1-12/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@system-suspend-modeset:
    - shard-glk:          [INCOMPLETE][242] ([i915#10553]) -> [PASS][243]
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-glk8/igt@kms_pm_rpm@system-suspend-modeset.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk2/igt@kms_pm_rpm@system-suspend-modeset.html

  
#### Warnings ####

  * igt@drm_buddy@drm_buddy:
    - shard-rkl:          [SKIP][244] ([i915#14544] / [i915#15678]) -> [SKIP][245] ([i915#15678])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@drm_buddy@drm_buddy.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@drm_buddy@drm_buddy.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          [SKIP][246] ([i915#14544] / [i915#3555] / [i915#9323]) -> [SKIP][247] ([i915#3555] / [i915#9323])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@suspend-resume:
    - shard-rkl:          [SKIP][248] ([i915#9323]) -> [SKIP][249] ([i915#14544] / [i915#9323])
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-3/igt@gem_ccs@suspend-resume.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@gem_ccs@suspend-resume.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-rkl:          [SKIP][250] ([i915#6335]) -> [SKIP][251] ([i915#14544] / [i915#6335])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-7/igt@gem_create@create-ext-cpu-access-big.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_sseu@engines:
    - shard-rkl:          [SKIP][252] ([i915#280]) -> [SKIP][253] ([i915#14544] / [i915#280])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-3/igt@gem_ctx_sseu@engines.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@gem_ctx_sseu@engines.html

  * igt@gem_exec_balancer@parallel-ordering:
    - shard-rkl:          [SKIP][254] ([i915#14544] / [i915#4525]) -> [SKIP][255] ([i915#4525])
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@gem_exec_balancer@parallel-ordering.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          [SKIP][256] ([i915#14544] / [i915#3281]) -> [SKIP][257] ([i915#3281]) +3 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_exec_reloc@basic-write-read:
    - shard-rkl:          [SKIP][258] ([i915#3281]) -> [SKIP][259] ([i915#14544] / [i915#3281]) +5 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@gem_exec_reloc@basic-write-read.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@gem_exec_reloc@basic-write-read.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-rkl:          [SKIP][260] ([i915#14544] / [i915#4613]) -> [SKIP][261] ([i915#4613])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@gem_lmem_swapping@verify-ccs.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_pwrite@basic-random:
    - shard-rkl:          [SKIP][262] ([i915#14544] / [i915#3282]) -> [SKIP][263] ([i915#3282]) +2 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@gem_pwrite@basic-random.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@gem_pwrite@basic-random.html

  * igt@gem_readwrite@beyond-eob:
    - shard-rkl:          [SKIP][264] ([i915#3282]) -> [SKIP][265] ([i915#14544] / [i915#3282]) +2 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@gem_readwrite@beyond-eob.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@gem_readwrite@beyond-eob.html

  * igt@gem_set_tiling_vs_blt@tiled-to-tiled:
    - shard-rkl:          [SKIP][266] ([i915#14544] / [i915#8411]) -> [SKIP][267] ([i915#8411])
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-rkl:          [SKIP][268] ([i915#3297]) -> [SKIP][269] ([i915#14544] / [i915#3297])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@gem_userptr_blits@unsync-overlap.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-rkl:          [SKIP][270] ([i915#14544] / [i915#3297]) -> [SKIP][271] ([i915#3297])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-cycles.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-rkl:          [SKIP][272] ([i915#14544] / [i915#2527]) -> [SKIP][273] ([i915#2527])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@gen9_exec_parse@batch-invalid-length.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-rkl:          [SKIP][274] ([i915#2527]) -> [SKIP][275] ([i915#14544] / [i915#2527]) +2 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@gen9_exec_parse@batch-without-end.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@gen9_exec_parse@batch-without-end.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          [SKIP][276] ([i915#5723]) -> [SKIP][277] ([i915#14544] / [i915#5723])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-3/igt@i915_query@test-query-geometry-subslices.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-dg1:          [SKIP][278] ([i915#1769] / [i915#3555]) -> [SKIP][279] ([i915#1769] / [i915#3555] / [i915#4423])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg1-16/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg1-18/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-rkl:          [SKIP][280] ([i915#5286]) -> [SKIP][281] ([i915#14544] / [i915#5286]) +4 other tests skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-3/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-rkl:          [SKIP][282] ([i915#14544] / [i915#5286]) -> [SKIP][283] ([i915#5286]) +1 other test skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-rkl:          [SKIP][284] ([i915#14544] / [i915#3638]) -> [SKIP][285] ([i915#3638])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-90.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][286] ([i915#3828]) -> [SKIP][287] ([i915#14544] / [i915#3828])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
    - shard-rkl:          [SKIP][288] ([i915#3638]) -> [SKIP][289] ([i915#14544] / [i915#3638])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-dg1:          [SKIP][290] ([i915#4538]) -> [SKIP][291] ([i915#4423] / [i915#4538])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg1-16/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          [SKIP][292] ([i915#14098] / [i915#6095]) -> [SKIP][293] ([i915#14098] / [i915#14544] / [i915#6095]) +9 other tests skip
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][294] ([i915#12313] / [i915#14544]) -> [SKIP][295] ([i915#12313])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-2:
    - shard-rkl:          [SKIP][296] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][297] ([i915#14098] / [i915#6095]) +7 other tests skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-2.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1:
    - shard-glk:          [INCOMPLETE][298] ([i915#14694] / [i915#15582] / [i915#16205]) -> [INCOMPLETE][299] ([i915#15582] / [i915#16205]) +1 other test incomplete
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-glk1/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk5/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          [SKIP][300] ([i915#14544] / [i915#6095]) -> [SKIP][301] ([i915#6095]) +4 other tests skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][302] ([i915#6095]) -> [SKIP][303] ([i915#14544] / [i915#6095]) +9 other tests skip
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
    - shard-rkl:          [SKIP][304] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][305] ([i915#11151] / [i915#7828]) +5 other tests skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html

  * igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
    - shard-rkl:          [SKIP][306] ([i915#11151] / [i915#7828]) -> [SKIP][307] ([i915#11151] / [i915#14544] / [i915#7828]) +2 other tests skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-rkl:          [SKIP][308] ([i915#14544] / [i915#15865]) -> [SKIP][309] ([i915#15865]) +1 other test skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_content_protection@atomic-dpms.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@atomic-hdcp14:
    - shard-dg2:          [FAIL][310] ([i915#7173]) -> [SKIP][311] ([i915#15865])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg2-10/igt@kms_content_protection@atomic-hdcp14.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-7/igt@kms_content_protection@atomic-hdcp14.html

  * igt@kms_content_protection@dp-mst-type-0-hdcp14:
    - shard-rkl:          [SKIP][312] ([i915#14544] / [i915#15330]) -> [SKIP][313] ([i915#15330])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0-hdcp14.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_content_protection@dp-mst-type-0-hdcp14.html

  * igt@kms_content_protection@dp-mst-type-1-suspend-resume:
    - shard-rkl:          [SKIP][314] ([i915#15330]) -> [SKIP][315] ([i915#14544] / [i915#15330])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html

  * igt@kms_content_protection@legacy-hdcp14:
    - shard-rkl:          [SKIP][316] ([i915#15865]) -> [SKIP][317] ([i915#14544] / [i915#15865])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_content_protection@legacy-hdcp14.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_content_protection@legacy-hdcp14.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-rkl:          [SKIP][318] ([i915#13049] / [i915#14544]) -> [SKIP][319] ([i915#13049])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x512.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-32x10:
    - shard-rkl:          [SKIP][320] ([i915#3555]) -> [SKIP][321] ([i915#14544] / [i915#3555])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-32x10.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-32x10.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          [SKIP][322] ([i915#4103]) -> [SKIP][323] ([i915#14544] / [i915#4103]) +1 other test skip
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-dg1:          [SKIP][324] ([i915#4103]) -> [SKIP][325] ([i915#4103] / [i915#4423])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg1-16/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg1-18/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-rkl:          [SKIP][326] ([i915#14544] / [i915#3840]) -> [SKIP][327] ([i915#3840])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          [SKIP][328] ([i915#14544] / [i915#3955]) -> [SKIP][329] ([i915#3955])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@display-2x:
    - shard-rkl:          [SKIP][330] ([i915#14544] / [i915#16081]) -> [SKIP][331] ([i915#16081])
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_feature_discovery@display-2x.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_feature_discovery@display-2x.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-glk:          [INCOMPLETE][332] ([i915#12314] / [i915#12745] / [i915#4839]) -> [INCOMPLETE][333] ([i915#12745] / [i915#4839])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-glk8/igt@kms_flip@2x-flip-vs-suspend.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk6/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@kms_flip@2x-flip-vs-suspend@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [INCOMPLETE][334] ([i915#12314] / [i915#12745]) -> [INCOMPLETE][335] ([i915#12745])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-glk8/igt@kms_flip@2x-flip-vs-suspend@ac-hdmi-a1-hdmi-a2.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk6/igt@kms_flip@2x-flip-vs-suspend@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-rkl:          [SKIP][336] ([i915#14544] / [i915#9934]) -> [SKIP][337] ([i915#9934]) +6 other tests skip
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_flip@2x-wf_vblank-ts-check.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-glk:          [INCOMPLETE][338] ([i915#12314] / [i915#12745] / [i915#4839] / [i915#6113]) -> [INCOMPLETE][339] ([i915#12314] / [i915#12745] / [i915#4839])
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-glk5/igt@kms_flip@flip-vs-suspend-interruptible.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk8/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-rkl:          [SKIP][340] ([i915#14544] / [i915#15643]) -> [SKIP][341] ([i915#15643]) +1 other test skip
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
    - shard-dg1:          [SKIP][342] ([i915#15643]) -> [SKIP][343] ([i915#15643] / [i915#4423])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg1-16/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-rkl:          [SKIP][344] ([i915#15643]) -> [SKIP][345] ([i915#14544] / [i915#15643]) +3 other tests skip
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-rkl:          [SKIP][346] ([i915#15102] / [i915#3023]) -> [SKIP][347] ([i915#14544] / [i915#15102] / [i915#3023]) +7 other tests skip
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
    - shard-dg2:          [SKIP][348] ([i915#15102]) -> [SKIP][349] ([i915#10433] / [i915#15102]) +2 other tests skip
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][350] ([i915#1825]) -> [SKIP][351] ([i915#14544] / [i915#1825]) +2 other tests skip
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:
    - shard-dg1:          [SKIP][352] ([i915#15990] / [i915#8708]) -> [SKIP][353] ([i915#15990] / [i915#4423] / [i915#8708])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
    - shard-dg2:          [SKIP][354] ([i915#10433] / [i915#15102]) -> [SKIP][355] ([i915#15102])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt:
    - shard-rkl:          [SKIP][356] ([i915#15102]) -> [SKIP][357] ([i915#14544] / [i915#15102]) +11 other tests skip
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-rkl:          [SKIP][358] ([i915#14544] / [i915#15102]) -> [SKIP][359] ([i915#15102]) +10 other tests skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-cpu.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][360] ([i915#14544]) -> [SKIP][361] +48 other tests skip
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-spr-indfb-draw-mmap-wc.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:
    - shard-rkl:          [SKIP][362] -> [SKIP][363] ([i915#14544]) +33 other tests skip
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-dg1:          [SKIP][364] ([i915#15990] / [i915#4423] / [i915#8708]) -> [SKIP][365] ([i915#15990] / [i915#8708])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][366] ([i915#14544] / [i915#1825]) -> [SKIP][367] ([i915#1825])
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
    - shard-rkl:          [SKIP][368] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][369] ([i915#15102] / [i915#3023]) +10 other tests skip
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-rkl:          [SKIP][370] ([i915#15460]) -> [SKIP][371] ([i915#14544] / [i915#15460])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-7/igt@kms_joiner@basic-big-joiner.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
    - shard-rkl:          [SKIP][372] ([i915#14544] / [i915#15638] / [i915#15722]) -> [SKIP][373] ([i915#15638] / [i915#15722])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html

  * igt@kms_panel_fitting@legacy:
    - shard-rkl:          [SKIP][374] ([i915#6301]) -> [SKIP][375] ([i915#14544] / [i915#6301])
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_panel_fitting@legacy.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier:
    - shard-rkl:          [SKIP][376] ([i915#15709]) -> [SKIP][377] ([i915#14544] / [i915#15709]) +2 other tests skip
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier.html

  * igt@kms_plane_multiple@2x-tiling-none:
    - shard-rkl:          [SKIP][378] ([i915#13958] / [i915#14544]) -> [SKIP][379] ([i915#13958])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-none.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_plane_multiple@2x-tiling-none.html

  * igt@kms_plane_multiple@tiling-4:
    - shard-rkl:          [SKIP][380] ([i915#14259] / [i915#14544]) -> [SKIP][381] ([i915#14259])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_plane_multiple@tiling-4.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_plane_multiple@tiling-4.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-rkl:          [SKIP][382] ([i915#14259]) -> [SKIP][383] ([i915#14259] / [i915#14544])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_plane_multiple@tiling-yf.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-rkl:          [SKIP][384] ([i915#12343] / [i915#14544] / [i915#5354]) -> [SKIP][385] ([i915#12343] / [i915#5354])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_pm_backlight@basic-brightness.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          [SKIP][386] ([i915#9340]) -> [SKIP][387] ([i915#14544] / [i915#9340])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html
    - shard-dg1:          [SKIP][388] ([i915#3828]) -> [SKIP][389] ([i915#9340])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg1-14/igt@kms_pm_lpsp@kms-lpsp.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg1-12/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [SKIP][390] ([i915#14544] / [i915#15073]) -> [SKIP][391] ([i915#15073])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_pm_rpm@dpms-lpsp.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-rkl:          [SKIP][392] ([i915#14544] / [i915#6524]) -> [SKIP][393] ([i915#6524])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:
    - shard-rkl:          [SKIP][394] ([i915#11520] / [i915#14544]) -> [SKIP][395] ([i915#11520]) +2 other tests skip
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
    - shard-rkl:          [SKIP][396] ([i915#11520]) -> [SKIP][397] ([i915#11520] / [i915#14544]) +3 other tests skip
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-rkl:          [SKIP][398] ([i915#14544] / [i915#9683]) -> [SKIP][399] ([i915#9683])
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_psr2_su@page_flip-xrgb8888.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr-cursor-render:
    - shard-rkl:          [SKIP][400] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][401] ([i915#1072] / [i915#9732]) +8 other tests skip
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_psr@psr-cursor-render.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_psr@psr-cursor-render.html

  * igt@kms_psr@psr-sprite-plane-onoff:
    - shard-rkl:          [SKIP][402] ([i915#1072] / [i915#9732]) -> [SKIP][403] ([i915#1072] / [i915#14544] / [i915#9732]) +8 other tests skip
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_psr@psr-sprite-plane-onoff.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_psr@psr-sprite-plane-onoff.html

  * igt@kms_scaling_modes@scaling-mode-full-aspect:
    - shard-rkl:          [SKIP][404] ([i915#14544] / [i915#3555]) -> [SKIP][405] ([i915#3555])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_scaling_modes@scaling-mode-full-aspect.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_scaling_modes@scaling-mode-full-aspect.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-rkl:          [SKIP][406] ([i915#14544] / [i915#9906]) -> [SKIP][407] ([i915#9906])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-drrs.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-rkl:          [SKIP][408] ([i915#14544] / [i915#2436]) -> [SKIP][409] ([i915#2436])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-rkl:          [SKIP][410] ([i915#2435]) -> [SKIP][411] ([i915#14544] / [i915#2435])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-3/igt@perf@per-context-mode-unprivileged.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@perf@per-context-mode-unprivileged.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          [SKIP][412] ([i915#3708]) -> [SKIP][413] ([i915#14544] / [i915#3708]) +1 other test skip
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-3/igt@prime_vgem@coherency-gtt.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@prime_vgem@coherency-gtt.html

  * igt@sriov_basic@bind-unbind-vf:
    - shard-rkl:          [SKIP][414] ([i915#14544] / [i915#9917]) -> [SKIP][415] ([i915#9917])
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@sriov_basic@bind-unbind-vf.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@sriov_basic@bind-unbind-vf.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10553]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10959]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10959
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314
  [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
  [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
  [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
  [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#12756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756
  [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
  [i915#13029]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13409]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409
  [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
  [i915#13790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
  [i915#14412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14412
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
  [i915#14694]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14694
  [i915#14888]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14888
  [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
  [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
  [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
  [i915#15140]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15140
  [i915#15172]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15172
  [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
  [i915#15342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342
  [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
  [i915#15460]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460
  [i915#15479]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15479
  [i915#15582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582
  [i915#15638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15638
  [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
  [i915#15678]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15678
  [i915#15709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
  [i915#15722]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15722
  [i915#15733]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733
  [i915#15739]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15739
  [i915#15804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15804
  [i915#15865]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865
  [i915#15871]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15871
  [i915#15931]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15931
  [i915#15948]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15948
  [i915#15949]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15949
  [i915#15989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989
  [i915#15990]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990
  [i915#15991]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991
  [i915#16011]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011
  [i915#16012]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012
  [i915#16081]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16081
  [i915#16109]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16109
  [i915#16112]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16112
  [i915#16182]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16182
  [i915#16205]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16205
  [i915#16276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16276
  [i915#16296]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16296
  [i915#16308]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16308
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
  [i915#2435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435
  [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
  [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
  [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
  [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
  [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9561]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9561
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_18597 -> Patchwork_167672v1

  CI-20190529: 20190529
  CI_DRM_18597: b64812e86f4a787e10be1ab9f48b9e6dab23376c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8943: 8943
  Patchwork_167672v1: b64812e86f4a787e10be1ab9f48b9e6dab23376c @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/index.html

--===============3498572003880685400==
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
<tr><td><b>Series:</b></td><td>drm/i915/drrs: Synchronize drrs activate with debugfs</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/167672/">https://patchwork.freedesktop.org/series/167672/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18597_full -&gt; Patchwork_167672v1_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_167672v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@api_intel_bb@blit-reloc-purge-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@device_reset@cold-reset-bound.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">i915#11078</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@dmabuf@all-tests:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@dmabuf@all-tests.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15931">i915#15931</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@dmabuf@all-tests.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15931">i915#15931</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@gem_ccs@large-ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008">i915#13008</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg2-5/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-3/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hog:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@gem_exec_balancer@hog.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@gem_exec_balancer@parallel-ordering.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_big@single:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-mtlp-3/igt@gem_exec_big@single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-mtlp-5/igt@gem_exec_big@single.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15871">i915#15871</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk10/igt@gem_exec_capture@capture-invisible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334">i915#6334</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@gem_exec_reloc@basic-write-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@gem_exec_reloc@basic-write-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@preempt-queue:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@gem_exec_schedule@preempt-queue.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537">i915#4537</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@gem_fence_thrash@bo-write-verify-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@gem_lmem_swapping@heavy-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk1/igt@gem_lmem_swapping@massive.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@gem_lmem_swapping@random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@gem_media_vme.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284">i915#284</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@gem_pread@exhaustion.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658">i915#2658</a>)</li>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk10/igt@gem_pread@exhaustion.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@gem_pread@snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@gem_pxp@reject-modify-context-protection-off-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@write-bad-handle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@gem_readwrite@write-bad-handle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-linear:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@gem_render_copy@yf-tiled-to-vebox-linear.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk6/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@gem_userptr_blits@readonly-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@gem_userptr_blits@relocations.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk11/igt@gem_workarounds@suspend-resume-context.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-7/igt@gem_workarounds@suspend-resume-fd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@gem_workarounds@suspend-resume-fd.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@gen9_exec_parse@allowed-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@gen9_exec_parse@allowed-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +2 other tests skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@fault-injection@__uc_init:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@i915_module_load@fault-injection@__uc_init.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15479">i915#15479</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@fault-injection@intel_connector_register:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@i915_module_load@fault-injection@intel_connector_register.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342">i915#15342</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-no-display:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@i915_module_load@reload-no-display.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029">i915#13029</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545">i915#14545</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790">i915#13790</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681">i915#2681</a>) +1 other test warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk2/igt@i915_pm_rpm@system-suspend-execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15172">i915#15172</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@i915_query@hwconfig_table.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245">i915#6245</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@i915_query@query-topology-known-pci-ids.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16109">i915#16109</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk6/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16182">i915#16182</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454">i915#12454</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712">i915#12712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip-atomic:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg1-18/igt@kms_async_flips@alternate-sync-async-flip-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg1-17/igt@kms_async_flips@alternate-sync-async-flip-atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14888">i915#14888</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-mtlp-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-mtlp-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_big_fb@linear-16bpp-rotate-0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16308">i915#16308</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_big_fb@yf-tiled-32bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-7/igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +69 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +44 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +47 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-4/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk9/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> +351 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +26 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-4/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg1-19/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +159 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_ccs@missing-ccs-buffer-y-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_chamelium_edid@dp-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-mode-timings:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_chamelium_edid@dp-mode-timings.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg2-10/igt@kms_color@deep-color.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-4/igt@kms_color@deep-color.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_content_protection@atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@kms_content_protection@atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent-hdcp14:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@kms_content_protection@uevent-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_cursor_crc@cursor-offscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_cursor_crc@cursor-onscreen-256x85.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15804">i915#15804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15804">i915#15804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-4/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-mst:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_dp_link_training@non-uhbr-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749">i915#13749</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@kms_dp_link_training@non-uhbr-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749">i915#13749</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-9/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@kms_dsc@dsc-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_dsc@dsc-with-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469">i915#3469</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469">i915#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469">i915#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_feature_discovery@display-2x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16081">i915#16081</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-9/igt@kms_flip@2x-flip-vs-expired-vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk11/igt@kms_flip@2x-flip-vs-suspend-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk11/igt@kms_flip@2x-flip-vs-suspend-interruptible@ac-hdmi-a1-hdmi-a2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@kms_flip@2x-modeset-vs-vblank-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_flip@2x-wf_vblank-ts-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_flip@flip-vs-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16276">i915#16276</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>) +3 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> +51 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-4:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_frontbuffer_tracking@fbc-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-shrfb-plflip-blt.html">SKIP</a> +58 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg2-10/igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-mmap-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-tiling-4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbchdr-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104">i915#15104</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +26 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-1/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_frontbuffer_tracking@hdr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-rgb565-draw-pwrite:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-glk8/igt@kms_frontbuffer_tracking@hdr-rgb565-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk6/igt@kms_frontbuffer_tracking@hdr-rgb565-draw-pwrite.html">SKIP</a> +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +5 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +23 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk11/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-shrfb-pgflip-blt.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-spr-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg2-10/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-4/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-2-xrgb2101010:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-2-xrgb2101010.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-2-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-2-xrgb2101010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-3/igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-2-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1-xrgb16161616f:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-4/igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1-xrgb16161616f.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-3-xrgb16161616f:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg1-12/igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-3-xrgb16161616f.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-1-xrgb16161616f:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-1-xrgb16161616f.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-1/igt@kms_hdr@static-toggle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-3-xrgb16161616f:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg1-13/igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-3-xrgb16161616f.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle@pipe-a-hdmi-a-1-xrgb16161616f:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_hdr@static-toggle@pipe-a-hdmi-a-1-xrgb16161616f.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +3 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_hdr@static-toggle@pipe-a-hdmi-a-1-xrgb16161616f.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_joiner@basic-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460">i915#15460</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458">i915#15458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756">i915#12756</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409">i915#13409</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476">i915#13476</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk10/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier.html">SKIP</a> +327 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-yf-tiled-modifier-source-clamping:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_plane@pixel-format-yf-tiled-modifier-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@planar-pixel-format-settings@nv12-tile4-src-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_plane@planar-pixel-format-settings@nv12-tile4-src-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16112">i915#16112</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@kms_plane@planar-pixel-format-settings@nv12-tile4-src-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16112">i915#16112</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-4:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_plane_multiple@tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_plane_scaling@intel-max-src-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg1-16/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg1-18/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-modifiers.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) +3 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_pm_backlight@fade-with-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15948">i915#15948</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15948">i915#15948</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15739">i915#15739</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg2-4/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-7/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) +2 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@pc8-residency:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_pm_rpm@pc8-residency.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-update-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_psr2_sf@pr-cursor-plane-update-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk10/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk9/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-sprite-render:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_psr@fbc-pr-sprite-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_psr@fbc-psr2-sprite-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-mmap-cpu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@kms_psr@psr-sprite-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_psr@psr2-sprite-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15949">i915#15949</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-2/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-9/igt@kms_selftest@drm_framebuffer.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179">i915#13179</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-exclusive-crtc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_setmode@invalid-clone-exclusive-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk6/igt@kms_tiled_display@basic-test-pattern.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10959">i915#10959</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-5/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg2-10/igt@kms_vrr@negative-basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-7/igt@kms_vrr@negative-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-virtual.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@perf@mi-rpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434">i915#2434</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@vecs1:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg2-6/igt@perf_pmu@busy-double-start@vecs1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-4/igt@perf_pmu@busy-double-start@vecs1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915#4349</a>) +4 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@perf_pmu@rc6@other-idle-gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@create:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk10/igt@vgem_basic@create.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16296">i915#16296</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_freq@sysfs@gt0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg2-8/igt@gem_ctx_freq@sysfs@gt0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9561">i915#9561</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-4/igt@gem_ctx_freq@sysfs@gt0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@i915_suspend@debugfs-reader.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg2-10/igt@i915_suspend@sysfs-reader.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15140">i915#15140</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-5/igt@i915_suspend@sysfs-reader.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733">i915#15733</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582">i915#15582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_color_pipeline@plane-lut1d-post-ctm3x4:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg1-15/igt@kms_color_pipeline@plane-lut1d-post-ctm3x4.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg1-17/igt@kms_color_pipeline@plane-lut1d-post-ctm3x4.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-256x85:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-tglu-5/igt@kms_cursor_crc@cursor-sliding-256x85.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-tglu-7/igt@kms_cursor_crc@cursor-sliding-256x85.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-blt:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-glk5/igt@kms_draw_crc@draw-method-blt.html">DMESG-WARN</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk4/igt@kms_draw_crc@draw-method-blt.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-pwrite:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-glk3/igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-pwrite.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk8/igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-pwrite.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-tiling-linear:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_frontbuffer_tracking@fbchdr-tiling-linear.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-tiling-linear.html">PASS</a> +16 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-7/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_hdr@invalid-metadata-sizes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-2-xrgb2101010:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-7/igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-2-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-2-xrgb2101010.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14412">i915#14412</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg2-4/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-7/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg1-14/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg1-12/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-glk8/igt@kms_pm_rpm@system-suspend-modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk2/igt@kms_pm_rpm@system-suspend-modeset.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@drm_buddy@drm_buddy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@drm_buddy@drm_buddy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15678">i915#15678</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@drm_buddy@drm_buddy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15678">i915#15678</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@gem_ccs@block-copy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-3/igt@gem_ccs@suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@gem_ccs@suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-7/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@gem_create@create-ext-cpu-access-big.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-3/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@gem_exec_balancer@parallel-ordering.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@gem_exec_balancer@parallel-ordering.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@gem_exec_reloc@basic-write-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@gem_exec_reloc@basic-write-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-random:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@gem_pwrite@basic-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@gem_pwrite@basic-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@gem_readwrite@beyond-eob.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@gem_readwrite@beyond-eob.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-tiled:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@gem_set_tiling_vs_blt@tiled-to-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@gen9_exec_parse@batch-invalid-length.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@gen9_exec_parse@batch-without-end.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@gen9_exec_parse@batch-without-end.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-3/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723">i915#5723</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723">i915#5723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg1-16/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg1-18/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-3/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg1-16/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg1-18/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-glk1/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14694">i915#14694</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582">i915#15582</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16205">i915#16205</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk5/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582">i915#15582</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16205">i915#16205</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_content_protection@atomic-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_content_protection@atomic-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-hdcp14:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg2-10/igt@kms_content_protection@atomic-hdcp14.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-7/igt@kms_content_protection@atomic-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0-hdcp14:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_content_protection@dp-mst-type-0-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy-hdcp14:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_content_protection@legacy-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_content_protection@legacy-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_cursor_crc@cursor-offscreen-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x10:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg1-16/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg1-18/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_feature_discovery@display-2x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16081">i915#16081</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_feature_discovery@display-2x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16081">i915#16081</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-glk8/igt@kms_flip@2x-flip-vs-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk6/igt@kms_flip@2x-flip-vs-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-glk8/igt@kms_flip@2x-flip-vs-suspend@ac-hdmi-a1-hdmi-a2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk6/igt@kms_flip@2x-flip-vs-suspend@ac-hdmi-a1-hdmi-a2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_flip@2x-wf_vblank-ts-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_flip@2x-wf_vblank-ts-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-glk5/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-glk8/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg1-16/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> +48 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +33 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-7/igt@kms_joiner@basic-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460">i915#15460</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_joiner@basic-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460">i915#15460</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15638">i915#15638</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15722">i915#15722</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15638">i915#15638</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15722">i915#15722</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-none:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_plane_multiple@2x-tiling-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-4:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_plane_multiple@tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_plane_multiple@tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>)</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-dg1-14/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-dg1-12/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_prime@basic-modeset-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-render:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_psr@psr-cursor-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_psr@psr-cursor-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-onoff:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-4/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full-aspect:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_scaling_modes@scaling-mode-full-aspect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_scaling_modes@scaling-mode-full-aspect.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436">i915#2436</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-2/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-3/igt@perf@per-context-mode-unprivileged.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435">i915#2435</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@perf@per-context-mode-unprivileged.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435">i915#2435</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-3/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-6/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18597/shard-rkl-6/igt@sriov_basic@bind-unbind-vf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167672v1/shard-rkl-7/igt@sriov_basic@bind-unbind-vf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18597 -&gt; Patchwork_167672v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18597: b64812e86f4a787e10be1ab9f48b9e6dab23376c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8943: 8943<br />
  Patchwork_167672v1: b64812e86f4a787e10be1ab9f48b9e6dab23376c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============3498572003880685400==--
