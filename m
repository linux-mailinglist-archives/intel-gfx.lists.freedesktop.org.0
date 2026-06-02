Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qoWEHEBtH2pqlwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 01:54:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A2563304C
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 01:54:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=none
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3747910F6B7;
	Tue,  2 Jun 2026 23:54:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6beec6c84f66 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B416910F6BB;
 Tue,  2 Jun 2026 23:54:35 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5753496870812652848=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915=3A_Do_not_cance?=
 =?utf-8?q?l_live_requests?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Krzysztof Karas" <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 02 Jun 2026 23:54:35 -0000
Message-ID: <178044447571.37170.730793528645087790@6beec6c84f66>
X-Patchwork-Hint: ignore
References: <20260602121431.3321203-1-krzysztof.karas@intel.com>
In-Reply-To: <20260602121431.3321203-1-krzysztof.karas@intel.com>
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
X-Rspamd-Queue-Id: 42A2563304C
X-Spam: Yes

--===============5753496870812652848==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Do not cancel live requests
URL   : https://patchwork.freedesktop.org/series/167741/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_18603_full -> Patchwork_167741v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_167741v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_167741v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_167741v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_lmem_swapping@heavy-random@lmem0:
    - shard-dg1:          [PASS][1] -> [ABORT][2] +7 other tests abort
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg1-15/igt@gem_lmem_swapping@heavy-random@lmem0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg1-12/igt@gem_lmem_swapping@heavy-random@lmem0.html

  * igt@gem_lmem_swapping@parallel-random-engines@lmem0:
    - shard-dg2:          [PASS][3] -> [ABORT][4] +5 other tests abort
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg2-3/igt@gem_lmem_swapping@parallel-random-engines@lmem0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-1/igt@gem_lmem_swapping@parallel-random-engines@lmem0.html

  * igt@gem_watchdog@default-physical:
    - shard-mtlp:         [PASS][5] -> [FAIL][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-mtlp-3/igt@gem_watchdog@default-physical.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-mtlp-7/igt@gem_watchdog@default-physical.html
    - shard-rkl:          [PASS][7] -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-4/igt@gem_watchdog@default-physical.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-5/igt@gem_watchdog@default-physical.html
    - shard-tglu-1:       NOTRUN -> [FAIL][9]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@gem_watchdog@default-physical.html

  * igt@gem_watchdog@default-virtual:
    - shard-tglu:         [PASS][10] -> [FAIL][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-tglu-10/igt@gem_watchdog@default-virtual.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-6/igt@gem_watchdog@default-virtual.html
    - shard-mtlp:         [PASS][12] -> [TIMEOUT][13]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-mtlp-8/igt@gem_watchdog@default-virtual.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-mtlp-7/igt@gem_watchdog@default-virtual.html
    - shard-glk:          [PASS][14] -> [FAIL][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-glk3/igt@gem_watchdog@default-virtual.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk5/igt@gem_watchdog@default-virtual.html
    - shard-rkl:          [PASS][16] -> [TIMEOUT][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-8/igt@gem_watchdog@default-virtual.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-4/igt@gem_watchdog@default-virtual.html
    - shard-dg1:          [PASS][18] -> [TIMEOUT][19]
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg1-13/igt@gem_watchdog@default-virtual.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg1-13/igt@gem_watchdog@default-virtual.html

  
Known issues
------------

  Here are the changes found in Patchwork_167741v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@unbind-cold-reset-rebind:
    - shard-rkl:          NOTRUN -> [SKIP][20] ([i915#11078])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@device_reset@unbind-cold-reset-rebind.html
    - shard-tglu-1:       NOTRUN -> [SKIP][21] ([i915#11078])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@device_reset@unbind-cold-reset-rebind.html

  * igt@gem_busy@semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][22] ([i915#3936])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@gem_busy@semaphore.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          NOTRUN -> [SKIP][23] ([i915#3555] / [i915#9323])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-tglu-1:       NOTRUN -> [SKIP][24] ([i915#3555] / [i915#9323])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][25] ([i915#13356]) +1 other test incomplete
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@gem_ccs@suspend-resume.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-glk:          NOTRUN -> [INCOMPLETE][26] ([i915#13356]) +1 other test incomplete
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk4/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-tglu:         NOTRUN -> [SKIP][27] ([i915#4525]) +2 other tests skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-rkl:          NOTRUN -> [SKIP][28] ([i915#4525]) +1 other test skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-tglu-1:       NOTRUN -> [SKIP][29] ([i915#4525])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_reloc@basic-gtt-wc:
    - shard-rkl:          NOTRUN -> [SKIP][30] ([i915#3281]) +2 other tests skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@gem_exec_reloc@basic-gtt-wc.html

  * igt@gem_exec_reloc@basic-wc-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][31] ([i915#3281]) +2 other tests skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@gem_exec_reloc@basic-wc-gtt.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          [PASS][32] -> [INCOMPLETE][33] ([i915#13356]) +1 other test incomplete
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg2-8/igt@gem_exec_suspend@basic-s0.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-6/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-rkl:          NOTRUN -> [SKIP][34] ([i915#4613]) +2 other tests skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@gem_lmem_swapping@parallel-multi.html
    - shard-tglu-1:       NOTRUN -> [SKIP][35] ([i915#4613]) +5 other tests skip
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@random:
    - shard-glk:          NOTRUN -> [SKIP][36] ([i915#4613]) +2 other tests skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk5/igt@gem_lmem_swapping@random.html

  * igt@gem_madvise@dontneed-before-exec:
    - shard-dg2:          NOTRUN -> [SKIP][37] ([i915#3282])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@gem_madvise@dontneed-before-exec.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-dg2:          NOTRUN -> [SKIP][38] ([i915#4077]) +2 other tests skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@gem_mmap_wc@bad-object:
    - shard-dg2:          NOTRUN -> [SKIP][39] ([i915#4083])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@gem_mmap_wc@bad-object.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-rkl:          NOTRUN -> [SKIP][40] ([i915#14544] / [i915#3282])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_partial_pwrite_pread@write:
    - shard-rkl:          NOTRUN -> [SKIP][41] ([i915#3282])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@gem_partial_pwrite_pread@write.html

  * igt@gem_pxp@hw-rejects-pxp-context:
    - shard-tglu:         NOTRUN -> [SKIP][42] ([i915#13398])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@gem_pxp@hw-rejects-pxp-context.html

  * igt@gem_pxp@regular-baseline-src-copy-readible:
    - shard-dg2:          NOTRUN -> [SKIP][43] ([i915#4270])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@gem_pxp@regular-baseline-src-copy-readible.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-rkl:          [PASS][44] -> [ABORT][45] ([i915#15131])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-2/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-1/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
    - shard-glk11:        NOTRUN -> [SKIP][46] +30 other tests skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk11/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html

  * igt@gem_softpin@evict-snoop:
    - shard-dg2:          NOTRUN -> [SKIP][47] ([i915#4885])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@gem_softpin@evict-snoop.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-tglu-1:       NOTRUN -> [SKIP][48] ([i915#3297])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-tglu:         NOTRUN -> [SKIP][49] ([i915#3297] / [i915#3323])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@relocations:
    - shard-dg2:          NOTRUN -> [SKIP][50] ([i915#3281] / [i915#3297])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@gem_userptr_blits@relocations.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][51] ([i915#13356])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk10/igt@gem_workarounds@suspend-resume-context.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][52] ([i915#13356] / [i915#14586])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk11/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-tglu-1:       NOTRUN -> [SKIP][53] ([i915#2527] / [i915#2856]) +2 other tests skip
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#2527]) +1 other test skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@gen9_exec_parse@shadow-peek.html
    - shard-tglu:         NOTRUN -> [SKIP][55] ([i915#2527] / [i915#2856]) +1 other test skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@gen9_exec_parse@shadow-peek.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-dg2:          NOTRUN -> [SKIP][56] ([i915#2856])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@gen9_exec_parse@unaligned-access.html

  * igt@i915_module_load@fault-injection@intel_connector_register:
    - shard-glk:          NOTRUN -> [ABORT][57] ([i915#15342]) +1 other test abort
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk5/igt@i915_module_load@fault-injection@intel_connector_register.html

  * igt@i915_query@query-topology-unsupported:
    - shard-tglu:         NOTRUN -> [SKIP][58] ([i915#16079])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@i915_query@query-topology-unsupported.html

  * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#5190])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html

  * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-4:
    - shard-dg1:          [PASS][60] -> [FAIL][61] ([i915#14888]) +1 other test fail
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg1-16/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-4.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg1-17/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-4.html

  * igt@kms_async_flips@async-flip-suspend-resume:
    - shard-dg2:          [PASS][62] -> [ABORT][63] ([i915#15132])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg2-3/igt@kms_async_flips@async-flip-suspend-resume.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-10/igt@kms_async_flips@async-flip-suspend-resume.html
    - shard-glk:          NOTRUN -> [INCOMPLETE][64] ([i915#12761] / [i915#16314]) +1 other test incomplete
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk9/igt@kms_async_flips@async-flip-suspend-resume.html

  * igt@kms_async_flips@async-flip-suspend-resume@pipe-d-dp-3:
    - shard-dg2:          NOTRUN -> [ABORT][65] ([i915#15132])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-10/igt@kms_async_flips@async-flip-suspend-resume@pipe-d-dp-3.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-dg2:          [PASS][66] -> [FAIL][67] ([i915#5956])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg2-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-mtlp:         [PASS][68] -> [FAIL][69] ([i915#5956]) +1 other test fail
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-mtlp-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-mtlp-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [FAIL][70] ([i915#5956])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-3.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
    - shard-tglu-1:       NOTRUN -> [SKIP][71] ([i915#5286]) +2 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][72] ([i915#5286]) +3 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
    - shard-tglu:         NOTRUN -> [SKIP][73] ([i915#5286]) +2 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-glk:          NOTRUN -> [FAIL][74] ([i915#16308]) +2 other tests fail
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk2/igt@kms_big_fb@linear-32bpp-rotate-180.html
    - shard-dg2:          NOTRUN -> [FAIL][75] ([i915#16308]) +1 other test fail
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_big_fb@linear-32bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#3638]) +2 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_big_fb@linear-32bpp-rotate-90.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglu-1:       NOTRUN -> [SKIP][77] ([i915#3828])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#4538] / [i915#5190]) +3 other tests skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][79] ([i915#14544]) +2 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][80] +57 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#14098] / [i915#6095]) +42 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
    - shard-glk:          NOTRUN -> [SKIP][82] +382 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk5/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#12313])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html
    - shard-tglu-1:       NOTRUN -> [SKIP][84] ([i915#12313])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][85] ([i915#12313])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:
    - shard-tglu:         NOTRUN -> [SKIP][86] ([i915#6095]) +24 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][87] ([i915#6095]) +119 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg1-13/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][88] ([i915#6095]) +49 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][89] ([i915#6095]) +73 other tests skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#6095]) +3 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-1/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-d-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#10307] / [i915#6095]) +55 other tests skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition-all-outputs:
    - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#3742])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_cdclk@mode-transition-all-outputs.html
    - shard-tglu-1:       NOTRUN -> [SKIP][94] ([i915#3742])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_cdclk@mode-transition-all-outputs.html

  * igt@kms_chamelium_audio@hdmi-audio-edid:
    - shard-tglu:         NOTRUN -> [SKIP][95] ([i915#11151] / [i915#7828]) +5 other tests skip
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_chamelium_audio@hdmi-audio-edid.html

  * igt@kms_chamelium_color@ctm-negative:
    - shard-dg2:          NOTRUN -> [SKIP][96] +2 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_chamelium_color@ctm-negative.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - shard-dg2:          NOTRUN -> [SKIP][97] ([i915#11151] / [i915#7828]) +1 other test skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#11151] / [i915#7828]) +6 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-fast.html
    - shard-tglu-1:       NOTRUN -> [SKIP][99] ([i915#11151] / [i915#7828]) +6 other tests skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_color@deep-color:
    - shard-tglu-1:       NOTRUN -> [SKIP][100] ([i915#3555] / [i915#9979])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic-dpms-hdcp14:
    - shard-tglu:         NOTRUN -> [SKIP][101] ([i915#15865]) +1 other test skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_content_protection@atomic-dpms-hdcp14.html

  * igt@kms_content_protection@mei-interface:
    - shard-tglu-1:       NOTRUN -> [SKIP][102] ([i915#15865]) +2 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@uevent-hdcp14:
    - shard-rkl:          NOTRUN -> [SKIP][103] ([i915#15865]) +1 other test skip
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_content_protection@uevent-hdcp14.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85:
    - shard-tglu-1:       NOTRUN -> [FAIL][104] ([i915#13566]) +1 other test fail
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-256x85.html

  * igt@kms_cursor_crc@cursor-random-256x85:
    - shard-rkl:          [PASS][105] -> [FAIL][106] ([i915#13566]) +1 other test fail
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-8/igt@kms_cursor_crc@cursor-random-256x85.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-4/igt@kms_cursor_crc@cursor-random-256x85.html

  * igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][107] ([i915#13566]) +1 other test fail
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-4/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-2.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#13049]) +2 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_cursor_crc@cursor-random-512x170.html
    - shard-tglu:         NOTRUN -> [SKIP][109] ([i915#13049]) +1 other test skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-tglu-1:       NOTRUN -> [SKIP][110] ([i915#13049]) +1 other test skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-random-64x21:
    - shard-tglu:         [PASS][111] -> [FAIL][112] ([i915#13566]) +3 other tests fail
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-tglu-5/igt@kms_cursor_crc@cursor-random-64x21.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-2/igt@kms_cursor_crc@cursor-random-64x21.html

  * igt@kms_cursor_crc@cursor-suspend:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][113] ([i915#12358] / [i915#14152] / [i915#7882])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk10/igt@kms_cursor_crc@cursor-suspend.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][114] ([i915#12358] / [i915#14152])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk10/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#13046] / [i915#5354]) +1 other test skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#4103])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
    - shard-dg1:          [PASS][117] -> [FAIL][118] ([i915#15999])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg1-13/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg1-14/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-tglu-1:       NOTRUN -> [SKIP][119] ([i915#9067])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-rkl:          NOTRUN -> [SKIP][120] ([i915#9723])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#3804])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dp_linktrain_fallback@dsc-fallback:
    - shard-tglu:         NOTRUN -> [SKIP][122] ([i915#13707])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_dp_linktrain_fallback@dsc-fallback.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#3840])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#3555] / [i915#3840])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][125] ([i915#9878])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk11/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_feature_discovery@chamelium:
    - shard-tglu-1:       NOTRUN -> [SKIP][126] ([i915#2065])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-2x:
    - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#16081])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_feature_discovery@display-2x.html
    - shard-tglu-1:       NOTRUN -> [SKIP][128] ([i915#16081])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_feature_discovery@display-2x.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#9934])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#9934]) +4 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_flip@2x-flip-vs-panning.html
    - shard-tglu-1:       NOTRUN -> [SKIP][131] ([i915#3637] / [i915#9934]) +1 other test skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][132] ([i915#3637] / [i915#9934]) +1 other test skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a1:
    - shard-dg2:          NOTRUN -> [FAIL][133] ([i915#13027])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-4/igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#15643]) +3 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][135] ([i915#15643]) +5 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][136] ([i915#15643]) +2 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][137] ([i915#15990] / [i915#8708]) +1 other test skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-tglu-1:       NOTRUN -> [SKIP][138] +78 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move:
    - shard-tglu:         NOTRUN -> [SKIP][139] +52 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#15991]) +4 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][141] ([i915#15990]) +11 other tests skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbchdr-indfb-scaledprimary:
    - shard-tglu-1:       NOTRUN -> [SKIP][142] ([i915#15989]) +14 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbchdr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#15989]) +1 other test skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-blt:
    - shard-rkl:          [PASS][144] -> [SKIP][145] ([i915#15989]) +10 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-blt.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbchdr-stridechange:
    - shard-tglu:         NOTRUN -> [SKIP][146] ([i915#15989]) +11 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_frontbuffer_tracking@fbchdr-stridechange.html

  * igt@kms_frontbuffer_tracking@fbchdr-tiling-4:
    - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#5439])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbchdr-tiling-4.html
    - shard-tglu-1:       NOTRUN -> [SKIP][148] ([i915#5439])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbchdr-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#14544] / [i915#15102] / [i915#3023])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
    - shard-rkl:          NOTRUN -> [SKIP][150] ([i915#15102] / [i915#3023]) +9 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt:
    - shard-glk10:        NOTRUN -> [SKIP][151] +60 other tests skip
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#1825]) +6 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#15991] / [i915#5354]) +4 other tests skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:
    - shard-tglu-1:       NOTRUN -> [SKIP][154] ([i915#15102]) +34 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-draw-blt:
    - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#15989]) +12 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-spr-indfb-fullscreen:
    - shard-glk:          [PASS][156] -> [SKIP][157] +12 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-glk8/igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-spr-indfb-fullscreen.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk6/igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([i915#15102]) +4 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#15102]) +19 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-tglu:         NOTRUN -> [SKIP][160] ([i915#15102]) +22 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psrhdr-slowdraw:
    - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#14544] / [i915#15102])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psrhdr-slowdraw.html

  * igt@kms_hdr@bpc-switch:
    - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#16012] / [i915#3555] / [i915#8228])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-3/igt@kms_hdr@bpc-switch.html
    - shard-tglu-1:       NOTRUN -> [SKIP][163] ([i915#16012] / [i915#3555] / [i915#8228])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-rkl:          [PASS][164] -> [SKIP][165] ([i915#16012] / [i915#3555] / [i915#8228])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-2-xrgb2101010:
    - shard-rkl:          [PASS][166] -> [SKIP][167] ([i915#16012]) +1 other test skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-2-xrgb2101010.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-2-xrgb2101010.html

  * igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-1-xrgb2101010:
    - shard-dg1:          NOTRUN -> [SKIP][168] ([i915#16012]) +1 other test skip
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg1-14/igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-1-xrgb2101010.html

  * igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1-xrgb2101010:
    - shard-tglu-1:       NOTRUN -> [SKIP][169] ([i915#16012]) +1 other test skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1-xrgb2101010.html

  * igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-2-xrgb16161616f:
    - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#16012]) +1 other test skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-3/igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-2-xrgb16161616f.html

  * igt@kms_hdr@brightness-with-hdr@pipe-a-hdmi-a-1-xrgb2101010:
    - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#16011]) +7 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-5/igt@kms_hdr@brightness-with-hdr@pipe-a-hdmi-a-1-xrgb2101010.html
    - shard-dg1:          NOTRUN -> [SKIP][172] ([i915#16011]) +3 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg1-15/igt@kms_hdr@brightness-with-hdr@pipe-a-hdmi-a-1-xrgb2101010.html

  * igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-1-xrgb16161616f:
    - shard-dg2:          NOTRUN -> [SKIP][173] ([i915#16012]) +1 other test skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-4/igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-1-xrgb16161616f.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][174] ([i915#16011] / [i915#3555] / [i915#8228])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-1-xrgb2101010:
    - shard-tglu-1:       NOTRUN -> [SKIP][175] ([i915#16011]) +1 other test skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-1-xrgb2101010.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#16011] / [i915#3555] / [i915#8228]) +1 other test skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_hdr@static-toggle-suspend.html
    - shard-tglu:         NOTRUN -> [SKIP][177] ([i915#16011] / [i915#3555] / [i915#8228])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-1-xrgb16161616f:
    - shard-tglu:         NOTRUN -> [SKIP][178] ([i915#16011]) +1 other test skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-1-xrgb16161616f.html

  * igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-3-xrgb16161616f:
    - shard-dg2:          NOTRUN -> [SKIP][179] ([i915#16011]) +3 other tests skip
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-8/igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-3-xrgb16161616f.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][180] ([i915#15459])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][181] ([i915#15458])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier:
    - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#14544] / [i915#15709]) +1 other test skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier.html

  * igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source-clamping:
    - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#15709]) +1 other test skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier:
    - shard-dg2:          NOTRUN -> [SKIP][184] ([i915#15709]) +1 other test skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier.html

  * igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping:
    - shard-tglu:         NOTRUN -> [SKIP][185] ([i915#15709]) +3 other tests skip
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-yf-tiled-modifier-source-clamping:
    - shard-tglu-1:       NOTRUN -> [SKIP][186] ([i915#15709]) +4 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_plane@pixel-format-yf-tiled-modifier-source-clamping.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b:
    - shard-glk:          NOTRUN -> [INCOMPLETE][187] ([i915#13026])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb:
    - shard-glk:          NOTRUN -> [FAIL][188] ([i915#10647] / [i915#12169])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk5/igt@kms_plane_alpha_blend@alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][189] ([i915#10647]) +1 other test fail
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk5/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#13046] / [i915#5354] / [i915#9423])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_plane_scaling@2x-scaler-multi-pipe.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#14544] / [i915#15329]) +3 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#15329] / [i915#3555])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
    - shard-tglu:         NOTRUN -> [SKIP][193] ([i915#15329] / [i915#3555])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
    - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#15329]) +2 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html
    - shard-tglu:         NOTRUN -> [SKIP][195] ([i915#15329]) +3 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html

  * igt@kms_pm_backlight@fade:
    - shard-dg2:          NOTRUN -> [SKIP][196] ([i915#12343] / [i915#5354])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_pm_backlight@fade.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#12343] / [i915#14544] / [i915#5354])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#15739])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_pm_dc@dc9-dpms.html
    - shard-tglu:         NOTRUN -> [SKIP][199] ([i915#15739])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg2:          [PASS][200] -> [SKIP][201] ([i915#9340])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg2-4/igt@kms_pm_lpsp@kms-lpsp.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-1/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-dg1:          [PASS][202] -> [SKIP][203] ([i915#15073])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg1-14/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg1-16/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-tglu-1:       NOTRUN -> [SKIP][204] ([i915#15073])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-rkl:          [PASS][205] -> [SKIP][206] ([i915#15073])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-dg2:          [PASS][207] -> [SKIP][208] ([i915#15073])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg2-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#6524])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_prime@basic-crc-hybrid.html
    - shard-tglu-1:       NOTRUN -> [SKIP][210] ([i915#6524])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:
    - shard-tglu:         NOTRUN -> [SKIP][211] ([i915#11520]) +3 other tests skip
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#11520]) +7 other tests skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-3/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
    - shard-rkl:          NOTRUN -> [SKIP][213] ([i915#11520] / [i915#14544])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area:
    - shard-glk10:        NOTRUN -> [SKIP][214] ([i915#11520]) +1 other test skip
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk10/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:
    - shard-dg2:          NOTRUN -> [SKIP][215] ([i915#11520]) +1 other test skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
    - shard-glk11:        NOTRUN -> [SKIP][216] ([i915#11520])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk11/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][217] ([i915#11520]) +8 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk5/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:
    - shard-tglu-1:       NOTRUN -> [SKIP][218] ([i915#11520]) +6 other tests skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-rkl:          NOTRUN -> [SKIP][219] ([i915#14544] / [i915#9683])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-rkl:          NOTRUN -> [SKIP][220] ([i915#9683])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_psr2_su@page_flip-xrgb8888.html
    - shard-tglu:         NOTRUN -> [SKIP][221] ([i915#9683])
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-pr-sprite-plane-onoff:
    - shard-rkl:          NOTRUN -> [SKIP][222] ([i915#1072] / [i915#9732]) +12 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_psr@fbc-pr-sprite-plane-onoff.html

  * igt@kms_psr@fbc-psr2-cursor-blt:
    - shard-tglu-1:       NOTRUN -> [SKIP][223] ([i915#9732]) +14 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_psr@fbc-psr2-cursor-blt.html

  * igt@kms_psr@fbc-psr2-primary-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][224] ([i915#1072] / [i915#14544] / [i915#9732])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_psr@fbc-psr2-primary-mmap-gtt.html

  * igt@kms_psr@fbc-psr2-sprite-plane-move:
    - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#1072] / [i915#9732]) +5 other tests skip
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_psr@fbc-psr2-sprite-plane-move.html

  * igt@kms_psr@psr-basic:
    - shard-tglu:         NOTRUN -> [SKIP][226] ([i915#9732]) +9 other tests skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_psr@psr-basic.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#15949])
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
    - shard-tglu:         NOTRUN -> [SKIP][228] ([i915#15949])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-rkl:          NOTRUN -> [SKIP][229] ([i915#5289])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html
    - shard-tglu-1:       NOTRUN -> [SKIP][230] ([i915#5289])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - shard-dg2:          NOTRUN -> [SKIP][231] ([i915#12755] / [i915#15867])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_rotation_crc@sprite-rotation-270.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-rkl:          NOTRUN -> [SKIP][232] ([i915#3555]) +1 other test skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_setmode@basic-clone-single-crtc.html
    - shard-tglu-1:       NOTRUN -> [SKIP][233] ([i915#3555]) +1 other test skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][234] ([i915#8623])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html
    - shard-tglu-1:       NOTRUN -> [SKIP][235] ([i915#8623])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@flip-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][236] ([i915#3555]) +1 other test skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_vrr@flip-suspend.html
    - shard-rkl:          NOTRUN -> [SKIP][237] ([i915#15243] / [i915#3555])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_vrr@flip-suspend.html

  * igt@kms_vrr@lobf:
    - shard-rkl:          NOTRUN -> [SKIP][238] ([i915#11920])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_vrr@lobf.html
    - shard-tglu-1:       NOTRUN -> [SKIP][239] ([i915#11920])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_vrr@lobf.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-tglu-1:       NOTRUN -> [SKIP][240] ([i915#9906])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-virtual.html

  * igt@perf_pmu@rc6-suspend:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][241] ([i915#13520])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@perf_pmu@rc6-suspend.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-tglu-1:       NOTRUN -> [SKIP][242] ([i915#8516])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@basic-fence-flip:
    - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#3708])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@prime_vgem@basic-fence-flip.html

  * igt@prime_vgem@basic-fence-read:
    - shard-rkl:          NOTRUN -> [SKIP][244] ([i915#3291] / [i915#3708]) +1 other test skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@prime_vgem@basic-fence-read.html

  * igt@sriov_basic@bind-unbind-vf:
    - shard-rkl:          NOTRUN -> [SKIP][245] ([i915#9917])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@sriov_basic@bind-unbind-vf.html

  * igt@sriov_basic@bind-unbind-vf@vf-4:
    - shard-tglu:         NOTRUN -> [SKIP][246] ([i915#16066]) +9 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@sriov_basic@bind-unbind-vf@vf-4.html

  * igt@vgem_basic@create:
    - shard-glk:          NOTRUN -> [FAIL][247] ([i915#16296])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk2/igt@vgem_basic@create.html

  
#### Possible fixes ####

  * igt@kms_async_flips@async-flip-suspend-resume:
    - shard-rkl:          [INCOMPLETE][248] ([i915#12761]) -> [PASS][249] +1 other test pass
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_async_flips@async-flip-suspend-resume.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_async_flips@async-flip-suspend-resume.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [FAIL][250] ([i915#15733] / [i915#5138]) -> [PASS][251]
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-180:
    - shard-tglu:         [INCOMPLETE][252] -> [PASS][253]
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-tglu-7/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-5/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs:
    - shard-rkl:          [INCOMPLETE][254] ([i915#15582]) -> [PASS][255]
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs.html

  * igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1:
    - shard-tglu:         [FAIL][256] ([i915#13566]) -> [PASS][257] +1 other test pass
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-tglu-10/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-6/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-random-64x21:
    - shard-rkl:          [FAIL][258] ([i915#13566]) -> [PASS][259] +1 other test pass
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_cursor_crc@cursor-random-64x21.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_cursor_crc@cursor-random-64x21.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-rkl:          [INCOMPLETE][260] ([i915#9878]) -> [PASS][261]
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_fbcon_fbt@fbc-suspend.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [FAIL][262] ([i915#13027]) -> [PASS][263] +1 other test pass
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-onoff:
    - shard-rkl:          [SKIP][264] ([i915#15989]) -> [PASS][265] +21 other tests pass
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-2/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-onoff.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-move:
    - shard-glk:          [SKIP][266] -> [PASS][267] +12 other tests pass
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-glk2/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-move.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk8/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-move.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a:
    - shard-glk:          [INCOMPLETE][268] ([i915#13026]) -> [PASS][269]
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-glk8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          [SKIP][270] ([i915#15073]) -> [PASS][271] +2 other tests pass
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [SKIP][272] ([i915#15073]) -> [PASS][273] +1 other test pass
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
    - shard-dg1:          [SKIP][274] ([i915#15073]) -> [PASS][275]
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg1-15/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg1-12/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_setmode@basic:
    - shard-dg2:          [FAIL][276] ([i915#15106]) -> [PASS][277] +1 other test pass
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg2-3/igt@kms_setmode@basic.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-1/igt@kms_setmode@basic.html

  * igt@kms_setmode@basic@pipe-a-hdmi-a-1:
    - shard-tglu:         [FAIL][278] ([i915#15106]) -> [PASS][279]
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-tglu-2/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-8/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html

  * igt@kms_setmode@basic@pipe-b-edp-1:
    - shard-mtlp:         [FAIL][280] ([i915#15106]) -> [PASS][281] +2 other tests pass
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-mtlp-5/igt@kms_setmode@basic@pipe-b-edp-1.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-mtlp-8/igt@kms_setmode@basic@pipe-b-edp-1.html

  * igt@kms_vblank@ts-continuation-dpms-suspend:
    - shard-rkl:          [ABORT][282] ([i915#15132]) -> [PASS][283] +1 other test pass
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-1/igt@kms_vblank@ts-continuation-dpms-suspend.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-3/igt@kms_vblank@ts-continuation-dpms-suspend.html

  * igt@perf_pmu@rc6-suspend:
    - shard-glk:          [INCOMPLETE][284] ([i915#13356] / [i915#14242] / [i915#16236]) -> [PASS][285]
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-glk9/igt@perf_pmu@rc6-suspend.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk4/igt@perf_pmu@rc6-suspend.html

  
#### Warnings ####

  * igt@gem_basic@multigpu-create-close:
    - shard-rkl:          [SKIP][286] ([i915#7697]) -> [SKIP][287] ([i915#14544] / [i915#7697]) +1 other test skip
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@gem_basic@multigpu-create-close.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-rkl:          [SKIP][288] ([i915#9323]) -> [SKIP][289] ([i915#14544] / [i915#9323])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-rkl:          [SKIP][290] ([i915#13008] / [i915#14544]) -> [SKIP][291] ([i915#13008])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@gem_ccs@large-ctrl-surf-copy.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_ctx_sseu@engines:
    - shard-rkl:          [SKIP][292] ([i915#280]) -> [SKIP][293] ([i915#14544] / [i915#280])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@gem_ctx_sseu@engines.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@gem_ctx_sseu@engines.html

  * igt@gem_exec_reloc@basic-gtt-cpu:
    - shard-rkl:          [SKIP][294] ([i915#14544] / [i915#3281]) -> [SKIP][295] ([i915#3281]) +1 other test skip
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@gem_exec_reloc@basic-gtt-cpu.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          [SKIP][296] ([i915#3281]) -> [SKIP][297] ([i915#14544] / [i915#3281]) +7 other tests skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-rkl:          [SKIP][298] ([i915#4613]) -> [SKIP][299] ([i915#14544] / [i915#4613]) +2 other tests skip
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@gem_lmem_swapping@verify-ccs.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_pread@self:
    - shard-rkl:          [SKIP][300] ([i915#3282]) -> [SKIP][301] ([i915#14544] / [i915#3282])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@gem_pread@self.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@gem_pread@self.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-rkl:          [SKIP][302] ([i915#14544] / [i915#3282]) -> [SKIP][303] ([i915#3282]) +1 other test skip
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@gem_pwrite@basic-exhaustion.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_set_tiling_vs_blt@tiled-to-untiled:
    - shard-rkl:          [SKIP][304] ([i915#8411]) -> [SKIP][305] ([i915#14544] / [i915#8411]) +1 other test skip
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-rkl:          [SKIP][306] ([i915#2527]) -> [SKIP][307] ([i915#14544] / [i915#2527]) +1 other test skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@gen9_exec_parse@bb-start-far.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@gen9_exec_parse@bb-start-far.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-rkl:          [SKIP][308] ([i915#14544] / [i915#2527]) -> [SKIP][309] ([i915#2527])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@gen9_exec_parse@secure-batches.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_pm_freq_api@freq-basic-api:
    - shard-rkl:          [SKIP][310] ([i915#8399]) -> [SKIP][311] ([i915#14544] / [i915#8399])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@i915_pm_freq_api@freq-basic-api.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@i915_pm_freq_api@freq-basic-api.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-rkl:          [SKIP][312] ([i915#6590]) -> [SKIP][313] ([i915#14544] / [i915#6590]) +1 other test skip
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@i915_pm_freq_mult@media-freq@gt0.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
    - shard-dg1:          [SKIP][314] ([i915#4538] / [i915#5286]) -> [SKIP][315] ([i915#4423] / [i915#4538] / [i915#5286])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg1-14/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg1-16/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-rkl:          [SKIP][316] ([i915#5286]) -> [SKIP][317] ([i915#14544] / [i915#5286]) +2 other tests skip
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-rkl:          [SKIP][318] ([i915#14544] / [i915#5286]) -> [SKIP][319] ([i915#5286]) +1 other test skip
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-rkl:          [SKIP][320] ([i915#14544] / [i915#3638]) -> [SKIP][321] ([i915#3638]) +1 other test skip
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][322] ([i915#3828]) -> [SKIP][323] ([i915#14544] / [i915#3828])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          [SKIP][324] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][325] ([i915#14098] / [i915#6095]) +10 other tests skip
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][326] ([i915#12313]) -> [SKIP][327] ([i915#12313] / [i915#14544]) +1 other test skip
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][328] ([i915#12805]) -> [SKIP][329] ([i915#12805] / [i915#14544])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          [SKIP][330] ([i915#6095]) -> [SKIP][331] ([i915#14544] / [i915#6095]) +11 other tests skip
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          [SKIP][332] ([i915#14098] / [i915#6095]) -> [SKIP][333] ([i915#14098] / [i915#14544] / [i915#6095]) +11 other tests skip
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][334] ([i915#14544] / [i915#6095]) -> [SKIP][335] ([i915#6095]) +7 other tests skip
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_chamelium_edid@vga-edid-read:
    - shard-rkl:          [SKIP][336] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][337] ([i915#11151] / [i915#7828]) +1 other test skip
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_chamelium_edid@vga-edid-read.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_chamelium_edid@vga-edid-read.html

  * igt@kms_chamelium_frames@hdmi-frame-dump:
    - shard-rkl:          [SKIP][338] ([i915#11151] / [i915#7828]) -> [SKIP][339] ([i915#11151] / [i915#14544] / [i915#7828]) +3 other tests skip
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_chamelium_frames@hdmi-frame-dump.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_chamelium_frames@hdmi-frame-dump.html

  * igt@kms_content_protection@atomic:
    - shard-rkl:          [SKIP][340] ([i915#14544] / [i915#15865]) -> [SKIP][341] ([i915#15865])
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_content_protection@atomic.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-rkl:          [SKIP][342] ([i915#14544] / [i915#15330] / [i915#3116]) -> [SKIP][343] ([i915#15330] / [i915#3116])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-1.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-0-suspend-resume:
    - shard-rkl:          [SKIP][344] ([i915#15330]) -> [SKIP][345] ([i915#14544] / [i915#15330])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-rkl:          [SKIP][346] ([i915#15330] / [i915#3116]) -> [SKIP][347] ([i915#14544] / [i915#15330] / [i915#3116])
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_content_protection@dp-mst-type-1.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-rkl:          [SKIP][348] ([i915#3555]) -> [SKIP][349] ([i915#14544] / [i915#3555])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_cursor_crc@cursor-offscreen-32x10.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-rkl:          [SKIP][350] ([i915#13049] / [i915#14544]) -> [SKIP][351] ([i915#13049]) +1 other test skip
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-rkl:          [SKIP][352] ([i915#4103]) -> [SKIP][353] ([i915#14544] / [i915#4103])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dp_link_training@uhbr-sst:
    - shard-rkl:          [SKIP][354] ([i915#13748]) -> [SKIP][355] ([i915#13748] / [i915#14544])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_dp_link_training@uhbr-sst.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_dp_link_training@uhbr-sst.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-rkl:          [SKIP][356] ([i915#13707] / [i915#14544]) -> [SKIP][357] ([i915#13707])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_dp_linktrain_fallback@dp-fallback.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][358] ([i915#14544] / [i915#3955]) -> [SKIP][359] ([i915#3955])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_fbcon_fbt@psr.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_fbcon_fbt@psr.html

  * igt@kms_feature_discovery@display-3x:
    - shard-rkl:          [SKIP][360] ([i915#14544] / [i915#16081]) -> [SKIP][361] ([i915#16081])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_feature_discovery@display-3x.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_feature_discovery@display-3x.html

  * igt@kms_flip@2x-plain-flip:
    - shard-rkl:          [SKIP][362] ([i915#9934]) -> [SKIP][363] ([i915#14544] / [i915#9934]) +3 other tests skip
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_flip@2x-plain-flip.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-rkl:          [SKIP][364] ([i915#14544] / [i915#9934]) -> [SKIP][365] ([i915#9934]) +1 other test skip
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_flip@2x-plain-flip-interruptible.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
    - shard-rkl:          [SKIP][366] ([i915#15643]) -> [SKIP][367] ([i915#14544] / [i915#15643])
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-rkl:          [SKIP][368] ([i915#14544] / [i915#15643]) -> [SKIP][369] ([i915#15643]) +1 other test skip
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][370] ([i915#14544] / [i915#1825]) -> [SKIP][371] ([i915#1825]) +2 other tests skip
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][372] ([i915#1825]) -> [SKIP][373] ([i915#14544] / [i915#1825]) +3 other tests skip
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
    - shard-dg2:          [SKIP][374] ([i915#15102]) -> [SKIP][375] ([i915#10433] / [i915#15102]) +3 other tests skip
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-rkl:          [SKIP][376] ([i915#14544] / [i915#5439]) -> [SKIP][377] ([i915#5439])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-rkl:          [SKIP][378] ([i915#14544] / [i915#15102]) -> [SKIP][379] ([i915#15102]) +6 other tests skip
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-spr-indfb-draw-render:
    - shard-rkl:          [SKIP][380] -> [SKIP][381] ([i915#14544]) +46 other tests skip
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-spr-indfb-draw-render.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@hdr-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-rkl:          [SKIP][382] ([i915#14544]) -> [SKIP][383] +26 other tests skip
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@pipe-fbc-rte:
    - shard-rkl:          [SKIP][384] ([i915#9766]) -> [SKIP][385] ([i915#14544] / [i915#9766])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][386] ([i915#10433] / [i915#15102]) -> [SKIP][387] ([i915#15102]) +5 other tests skip
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
    - shard-rkl:          [SKIP][388] ([i915#15102] / [i915#3023]) -> [SKIP][389] ([i915#14544] / [i915#15102] / [i915#3023]) +8 other tests skip
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-rkl:          [SKIP][390] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][391] ([i915#15102] / [i915#3023]) +9 other tests skip
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-shrfb-msflip-blt:
    - shard-rkl:          [SKIP][392] ([i915#15102]) -> [SKIP][393] ([i915#14544] / [i915#15102]) +12 other tests skip
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-shrfb-msflip-blt.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-shrfb-pgflip-blt:
    - shard-dg1:          [SKIP][394] ([i915#15102] / [i915#4423]) -> [SKIP][395] ([i915#15102])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg1-12/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-shrfb-pgflip-blt.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg1-18/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_hdr@invalid-hdr:
    - shard-rkl:          [SKIP][396] ([i915#16012] / [i915#3555] / [i915#8228]) -> [SKIP][397] ([i915#14544] / [i915#3555] / [i915#8228])
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_hdr@invalid-hdr.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-2-xrgb2101010:
    - shard-rkl:          [SKIP][398] ([i915#16012]) -> [SKIP][399] ([i915#14544] / [i915#16025]) +1 other test skip
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-2-xrgb2101010.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-2-xrgb2101010.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-rkl:          [SKIP][400] ([i915#15458]) -> [SKIP][401] ([i915#14544] / [i915#15458])
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          [SKIP][402] ([i915#14544] / [i915#6301]) -> [SKIP][403] ([i915#6301]) +1 other test skip
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_plane@pixel-format-yf-tiled-modifier:
    - shard-rkl:          [SKIP][404] ([i915#14544] / [i915#15709]) -> [SKIP][405] ([i915#15709])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_plane@pixel-format-yf-tiled-modifier.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_plane@pixel-format-yf-tiled-modifier.html

  * igt@kms_plane_multiple@2x-tiling-yf:
    - shard-rkl:          [SKIP][406] ([i915#13958] / [i915#14544]) -> [SKIP][407] ([i915#13958])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-yf.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_plane_multiple@2x-tiling-yf.html

  * igt@kms_plane_multiple@tiling-4:
    - shard-rkl:          [SKIP][408] ([i915#14259]) -> [SKIP][409] ([i915#14259] / [i915#14544])
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_plane_multiple@tiling-4.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_plane_multiple@tiling-4.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:
    - shard-rkl:          [SKIP][410] ([i915#14544] / [i915#15329]) -> [SKIP][411] ([i915#15329]) +3 other tests skip
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-rkl:          [SKIP][412] ([i915#12343] / [i915#5354]) -> [SKIP][413] ([i915#12343] / [i915#14544] / [i915#5354])
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_pm_backlight@basic-brightness.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu:         [SKIP][414] ([i915#15128]) -> [FAIL][415] ([i915#15752])
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-10/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc6-psr:
    - shard-rkl:          [SKIP][416] ([i915#15948]) -> [SKIP][417] ([i915#14544] / [i915#15948])
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_pm_dc@dc6-psr.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_pm_dc@dc6-psr.html

  * igt@kms_pm_rpm@package-g7:
    - shard-rkl:          [SKIP][418] ([i915#14544] / [i915#15403]) -> [SKIP][419] ([i915#15403])
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_pm_rpm@package-g7.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_pm_rpm@package-g7.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:
    - shard-rkl:          [SKIP][420] ([i915#11520] / [i915#14544]) -> [SKIP][421] ([i915#11520]) +1 other test skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:
    - shard-rkl:          [SKIP][422] ([i915#11520]) -> [SKIP][423] ([i915#11520] / [i915#14544]) +3 other tests skip
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr@psr-sprite-plane-onoff:
    - shard-rkl:          [SKIP][424] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][425] ([i915#1072] / [i915#9732]) +7 other tests skip
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_psr@psr-sprite-plane-onoff.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_psr@psr-sprite-plane-onoff.html

  * igt@kms_psr@psr2-basic:
    - shard-rkl:          [SKIP][426] ([i915#1072] / [i915#9732]) -> [SKIP][427] ([i915#1072] / [i915#14544] / [i915#9732]) +9 other tests skip
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_psr@psr2-basic.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_psr@psr2-basic.html

  * igt@kms_rotation_crc@multiplane-rotation:
    - shard-glk:          [INCOMPLETE][428] ([i915#15492] / [i915#16184]) -> [DMESG-FAIL][429] ([i915#118])
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-glk3/igt@kms_rotation_crc@multiplane-rotation.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk5/igt@kms_rotation_crc@multiplane-rotation.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-rkl:          [SKIP][430] ([i915#5289]) -> [SKIP][431] ([i915#14544] / [i915#5289])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-rkl:          [SKIP][432] ([i915#9906]) -> [SKIP][433] ([i915#14544] / [i915#9906])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_vrr@flip-basic-fastset.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_vrr@flip-basic-fastset.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-rkl:          [SKIP][434] ([i915#2436]) -> [SKIP][435] ([i915#14544] / [i915#2436])
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-rkl:          [SKIP][436] ([i915#14544] / [i915#8516]) -> [SKIP][437] ([i915#8516])
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@perf_pmu@rc6-all-gts.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@perf_pmu@rc6-all-gts.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          [SKIP][438] ([i915#3708]) -> [SKIP][439] ([i915#14544] / [i915#3708])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@prime_vgem@coherency-gtt.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@prime_vgem@coherency-gtt.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/118
  [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
  [i915#12169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12169
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
  [i915#12358]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358
  [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
  [i915#12761]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
  [i915#13026]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026
  [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13398]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398
  [i915#13520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
  [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152
  [i915#14242]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14242
  [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14586]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14586
  [i915#14888]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14888
  [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
  [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
  [i915#15106]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15106
  [i915#15128]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15128
  [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
  [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
  [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
  [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
  [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
  [i915#15342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342
  [i915#15403]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15403
  [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
  [i915#15459]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459
  [i915#15492]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15492
  [i915#15582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582
  [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
  [i915#15709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
  [i915#15733]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733
  [i915#15739]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15739
  [i915#15752]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15752
  [i915#15865]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865
  [i915#15867]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15867
  [i915#15948]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15948
  [i915#15949]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15949
  [i915#15989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989
  [i915#15990]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990
  [i915#15991]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991
  [i915#15999]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15999
  [i915#16011]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011
  [i915#16012]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012
  [i915#16025]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16025
  [i915#16066]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16066
  [i915#16079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16079
  [i915#16081]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16081
  [i915#16184]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16184
  [i915#16236]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16236
  [i915#16296]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16296
  [i915#16308]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16308
  [i915#16314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16314
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#2065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065
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
  [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#3936]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3936
  [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4885]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885
  [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7882
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9766]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766
  [i915#9878]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
  [i915#9979]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9979


Build changes
-------------

  * Linux: CI_DRM_18603 -> Patchwork_167741v1

  CI-20190529: 20190529
  CI_DRM_18603: 5ffc4d14699b2de05ebbaa8d838f83dcf5da2b6a @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8946: 8946
  Patchwork_167741v1: 5ffc4d14699b2de05ebbaa8d838f83dcf5da2b6a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/index.html

--===============5753496870812652848==
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
<tr><td><b>Series:</b></td><td>drm/i915: Do not cancel live requests</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/167741/">https://patchwork.freedesktop.org/series/167741/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18603_full -&gt; Patchwork_167741v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_167741v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_167741v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_167741v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@heavy-random@lmem0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg1-15/igt@gem_lmem_swapping@heavy-random@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg1-12/igt@gem_lmem_swapping@heavy-random@lmem0.html">ABORT</a> +7 other tests abort</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines@lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg2-3/igt@gem_lmem_swapping@parallel-random-engines@lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-1/igt@gem_lmem_swapping@parallel-random-engines@lmem0.html">ABORT</a> +5 other tests abort</li>
</ul>
</li>
<li>
<p>igt@gem_watchdog@default-physical:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-mtlp-3/igt@gem_watchdog@default-physical.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-mtlp-7/igt@gem_watchdog@default-physical.html">FAIL</a></li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-4/igt@gem_watchdog@default-physical.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-5/igt@gem_watchdog@default-physical.html">FAIL</a></li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@gem_watchdog@default-physical.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_watchdog@default-virtual:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-tglu-10/igt@gem_watchdog@default-virtual.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-6/igt@gem_watchdog@default-virtual.html">FAIL</a></li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-mtlp-8/igt@gem_watchdog@default-virtual.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-mtlp-7/igt@gem_watchdog@default-virtual.html">TIMEOUT</a></li>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-glk3/igt@gem_watchdog@default-virtual.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk5/igt@gem_watchdog@default-virtual.html">FAIL</a></li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-8/igt@gem_watchdog@default-virtual.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-4/igt@gem_watchdog@default-virtual.html">TIMEOUT</a></li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg1-13/igt@gem_watchdog@default-virtual.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg1-13/igt@gem_watchdog@default-virtual.html">TIMEOUT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_167741v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@unbind-cold-reset-rebind:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">i915#11078</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@device_reset@unbind-cold-reset-rebind.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@gem_busy@semaphore.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3936">i915#3936</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@gem_ccs@block-copy-compressed.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk4/igt@gem_ctx_isolation@preservation-s3@rcs0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@gem_exec_balancer@parallel-bb-first.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@gem_exec_balancer@parallel-keep-submit-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@gem_exec_reloc@basic-gtt-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@gem_exec_reloc@basic-wc-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg2-8/igt@gem_exec_suspend@basic-s0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-6/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk5/igt@gem_lmem_swapping@random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_madvise@dontneed-before-exec:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@gem_madvise@dontneed-before-exec.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-object:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@gem_mmap_wc@bad-object.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@gem_partial_pwrite_pread@reads-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@gem_partial_pwrite_pread@write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-context:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@gem_pxp@hw-rejects-pxp-context.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398">i915#13398</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@regular-baseline-src-copy-readible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@gem_pxp@regular-baseline-src-copy-readible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-2/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-1/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131">i915#15131</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk11/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html">SKIP</a> +30 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@gem_softpin@evict-snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4885">i915#4885</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@gem_userptr_blits@relocations.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk10/igt@gem_workarounds@suspend-resume-context.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk11/igt@gem_workarounds@suspend-resume-fd.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14586">i915#14586</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@gen9_exec_parse@bb-start-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@gen9_exec_parse@unaligned-access.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@fault-injection@intel_connector_register:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk5/igt@i915_module_load@fault-injection@intel_connector_register.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342">i915#15342</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@i915_query@query-topology-unsupported.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16079">i915#16079</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg1-16/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-4.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg1-17/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-a-hdmi-a-4.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14888">i915#14888</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg2-3/igt@kms_async_flips@async-flip-suspend-resume.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-10/igt@kms_async_flips@async-flip-suspend-resume.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132">i915#15132</a>)</li>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk9/igt@kms_async_flips@async-flip-suspend-resume.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761">i915#12761</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16314">i915#16314</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume@pipe-d-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-10/igt@kms_async_flips@async-flip-suspend-resume@pipe-d-dp-3.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132">i915#15132</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg2-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-mtlp-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-mtlp-2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing@pipe-a-hdmi-a-3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +3 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk2/igt@kms_big_fb@linear-32bpp-rotate-180.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16308">i915#16308</a>) +2 other tests fail</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_big_fb@linear-32bpp-rotate-180.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16308">i915#16308</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_big_fb@linear-32bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_big_fb@y-tiled-8bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">SKIP</a> +57 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_ccs@bad-pixel-format-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +42 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk5/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> +382 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_ccs@crc-primary-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg1-13/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +119 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +49 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +73 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-1/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-d-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +55 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-yf-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition-all-outputs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_cdclk@mode-transition-all-outputs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio-edid:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_chamelium_audio@hdmi-audio-edid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-negative:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_chamelium_color@ctm-negative.html">SKIP</a> +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_chamelium_frames@dp-crc-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +6 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_color@deep-color.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9979">i915#9979</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms-hdcp14:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_content_protection@atomic-dpms-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent-hdcp14:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_content_protection@uevent-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-256x85.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x85:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-8/igt@kms_cursor_crc@cursor-random-256x85.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-4/igt@kms_cursor_crc@cursor-random-256x85.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-4/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) +2 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_cursor_crc@cursor-random-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-64x21:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-tglu-5/igt@kms_cursor_crc@cursor-random-64x21.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-2/igt@kms_cursor_crc@cursor-random-64x21.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk10/igt@kms_cursor_crc@cursor-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358">i915#12358</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152">i915#14152</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7882">i915#7882</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk10/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358">i915#12358</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152">i915#14152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_cursor_legacy@2x-cursor-vs-flip-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg1-13/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg1-14/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15999">i915#15999</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dsc-fallback:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_dp_linktrain_fallback@dsc-fallback.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707">i915#13707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk11/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878">i915#9878</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_feature_discovery@chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065">i915#2065</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_feature_discovery@display-2x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16081">i915#16081</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_feature_discovery@display-2x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16081">i915#16081</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_flip@2x-flip-vs-panning.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +4 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_flip@2x-flip-vs-panning.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-4/igt@kms_flip@flip-vs-expired-vblank@d-hdmi-a1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027">i915#13027</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> +78 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move.html">SKIP</a> +52 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-indfb-scaledprimary:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbchdr-indfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbchdr-rgb565-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-stridechange:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_frontbuffer_tracking@fbchdr-stridechange.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-tiling-4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbchdr-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbchdr-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk10/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-blt.html">SKIP</a> +60 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-glk8/igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-spr-indfb-fullscreen.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk6/igt@kms_frontbuffer_tracking@hdr-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a> +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-slowdraw:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psrhdr-slowdraw.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-3/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-2-xrgb2101010:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-2-xrgb2101010.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_hdr@bpc-switch-dpms@pipe-a-hdmi-a-2-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-1-xrgb2101010:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg1-14/igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-1-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1-xrgb2101010:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-2-xrgb16161616f:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-3/igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-2-xrgb16161616f.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr@pipe-a-hdmi-a-1-xrgb2101010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-5/igt@kms_hdr@brightness-with-hdr@pipe-a-hdmi-a-1-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +7 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg1-15/igt@kms_hdr@brightness-with-hdr@pipe-a-hdmi-a-1-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-1-xrgb16161616f:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-4/igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-1-xrgb16161616f.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-1-xrgb2101010:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_hdr@static-toggle-dpms@pipe-a-hdmi-a-1-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-1-xrgb16161616f:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-1-xrgb16161616f.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-3-xrgb16161616f:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-8/igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-3-xrgb16161616f.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_joiner@basic-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459">i915#15459</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458">i915#15458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source-clamping:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-yf-tiled-modifier-source-clamping:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_plane@pixel-format-yf-tiled-modifier-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk5/igt@kms_plane_alpha_blend@alpha-opaque-fb.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647">i915#10647</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12169">i915#12169</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk5/igt@kms_plane_alpha_blend@alpha-opaque-fb@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647">i915#10647</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@2x-scaler-multi-pipe:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_plane_scaling@2x-scaler-multi-pipe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +2 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_pm_backlight@fade.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_pm_backlight@fade-with-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15739">i915#15739</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15739">i915#15739</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg2-4/igt@kms_pm_lpsp@kms-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-1/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg1-14/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg1-16/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg2-3/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-3/igt@kms_psr2_sf@fbc-pr-primary-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk10/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk11/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk5/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area-big-fb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-sprite-plane-onoff:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_psr@fbc-pr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-cursor-blt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_psr@fbc-psr2-cursor-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-primary-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_psr@fbc-psr2-primary-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-plane-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_psr@fbc-psr2-sprite-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_psr@psr-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15949">i915#15949</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15949">i915#15949</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@kms_rotation_crc@sprite-rotation-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755">i915#12755</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15867">i915#15867</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@kms_vrr@flip-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_vrr@flip-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243">i915#15243</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@lobf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_vrr@lobf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920">i915#11920</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_vrr@lobf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920">i915#11920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-virtual.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@perf_pmu@rc6-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520">i915#13520</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-1/igt@perf_pmu@rc6@other-idle-gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-5/igt@prime_vgem@basic-fence-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#3291</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@sriov_basic@bind-unbind-vf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf@vf-4:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-9/igt@sriov_basic@bind-unbind-vf@vf-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16066">i915#16066</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@vgem_basic@create:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk2/igt@vgem_basic@create.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16296">i915#16296</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_async_flips@async-flip-suspend-resume.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761">i915#12761</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_async_flips@async-flip-suspend-resume.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-mtlp-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733">i915#15733</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-tglu-7/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-5/igt@kms_big_fb@y-tiled-32bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582">i915#15582</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-tglu-10/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-6/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-64x21:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_cursor_crc@cursor-random-64x21.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_cursor_crc@cursor-random-64x21.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878">i915#9878</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027">i915#13027</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-2/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-1/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-onoff.html">PASS</a> +21 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-glk2/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-move.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk8/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-cur-indfb-move.html">PASS</a> +12 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-glk8/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a> +1 other test pass</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg1-15/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg1-12/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg2-3/igt@kms_setmode@basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15106">i915#15106</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-1/igt@kms_setmode@basic.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-tglu-2/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15106">i915#15106</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-8/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-mtlp-5/igt@kms_setmode@basic@pipe-b-edp-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15106">i915#15106</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-mtlp-8/igt@kms_setmode@basic@pipe-b-edp-1.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-1/igt@kms_vblank@ts-continuation-dpms-suspend.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132">i915#15132</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-3/igt@kms_vblank@ts-continuation-dpms-suspend.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-glk9/igt@perf_pmu@rc6-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14242">i915#14242</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16236">i915#16236</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk4/igt@perf_pmu@rc6-suspend.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@gem_basic@multigpu-create-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@gem_basic@multigpu-create-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@gem_ccs@ctrl-surf-copy-new-ctx.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@gem_ccs@large-ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008">i915#13008</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@gem_ccs@large-ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008">i915#13008</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@gem_exec_reloc@basic-gtt-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@self:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@gem_pread@self.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@gem_pread@self.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@gem_pwrite@basic-exhaustion.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@gem_pwrite@basic-exhaustion.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@tiled-to-untiled:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@gem_set_tiling_vs_blt@tiled-to-untiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@gen9_exec_parse@bb-start-far.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@gen9_exec_parse@bb-start-far.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@gen9_exec_parse@secure-batches.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@gen9_exec_parse@secure-batches.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-basic-api:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@i915_pm_freq_api@freq-basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@i915_pm_freq_api@freq-basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590">i915#6590</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590">i915#6590</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg1-14/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg1-16/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805">i915#12805</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805">i915#12805</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@vga-edid-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_chamelium_edid@vga-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_chamelium_edid@vga-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-frame-dump:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_chamelium_frames@hdmi-frame-dump.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_chamelium_frames@hdmi-frame-dump.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_content_protection@atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_content_protection@atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-sst:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_dp_link_training@uhbr-sst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">i915#13748</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_dp_link_training@uhbr-sst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">i915#13748</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707">i915#13707</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707">i915#13707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#3955</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_feature_discovery@display-3x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16081">i915#16081</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_feature_discovery@display-3x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16081">i915#16081</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_flip@2x-plain-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_flip@2x-plain-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_flip@2x-plain-flip-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_flip@2x-plain-flip-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-spr-indfb-draw-render.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-spr-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +46 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> +26 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@pipe-fbc-rte:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766">i915#9766</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_frontbuffer_tracking@pipe-fbc-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9766">i915#9766</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +5 other tests skip</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-dg1-12/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-dg1-18/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_hdr@invalid-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_hdr@invalid-hdr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-2-xrgb2101010:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-2-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-2-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16025">i915#16025</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458">i915#15458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458">i915#15458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-yf-tiled-modifier:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_plane@pixel-format-yf-tiled-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_plane@pixel-format-yf-tiled-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-yf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_plane_multiple@2x-tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-4:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_plane_multiple@tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_plane_multiple@tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-c.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-tglu-6/igt@kms_pm_dc@dc6-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15128">i915#15128</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-tglu-10/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15752">i915#15752</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-psr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_pm_dc@dc6-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15948">i915#15948</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_pm_dc@dc6-psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15948">i915#15948</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@package-g7:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_pm_rpm@package-g7.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15403">i915#15403</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_pm_rpm@package-g7.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15403">i915#15403</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-7/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_psr2_sf@pr-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-onoff:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-basic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_psr@psr2-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_psr@psr2-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@multiplane-rotation:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-glk3/igt@kms_rotation_crc@multiplane-rotation.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15492">i915#15492</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16184">i915#16184</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-glk5/igt@kms_rotation_crc@multiplane-rotation.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/118">i915#118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-3/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436">i915#2436</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-6/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-8/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18603/shard-rkl-7/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167741v1/shard-rkl-6/igt@prime_vgem@coherency-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18603 -&gt; Patchwork_167741v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18603: 5ffc4d14699b2de05ebbaa8d838f83dcf5da2b6a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8946: 8946<br />
  Patchwork_167741v1: 5ffc4d14699b2de05ebbaa8d838f83dcf5da2b6a @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============5753496870812652848==--
