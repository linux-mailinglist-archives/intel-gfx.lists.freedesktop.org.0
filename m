Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2NShASzP3ml0IgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 01:35:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94DBC3FF0DB
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 01:35:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0DB310E04E;
	Tue, 14 Apr 2026 23:35:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38B3A10E04E;
 Tue, 14 Apr 2026 23:35:03 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============8970916986277375679=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/reset=3A_Expose?=
 =?utf-8?q?_=22display=5Freset=5Fcount=22_in_debugfs_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Apr 2026 23:35:03 -0000
Message-ID: <177620970320.462768.5387590321850079210@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260414142247.651-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20260414142247.651-1-ville.syrjala@linux.intel.com>
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
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[intel-gfx@lists.freedesktop.org]
X-Rspamd-Queue-Id: 94DBC3FF0DB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============8970916986277375679==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/reset: Expose "display_reset_count" in debugfs (rev2)
URL   : https://patchwork.freedesktop.org/series/164675/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_18330_full -> Patchwork_164675v2_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_164675v2_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_164675v2_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_164675v2_full:

### CI changes ###

#### Possible regressions ####

  * boot:
    - shard-dg2:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24]) -> ([PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [FAIL][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-8/boot.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-8/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-8/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-8/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-7/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-7/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-7/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-7/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-6/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-6/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-6/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-5/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-5/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-5/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-5/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-4/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-4/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-4/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-3/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-3/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-3/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-1/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-1/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-1/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-5/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-5/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-4/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-4/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-10/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-10/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-1/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-1/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-8/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-8/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-8/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-7/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-1/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-3/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-7/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-7/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-7/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-3/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-3/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-6/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-4/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-6/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-6/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-5/boot.html

  

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_big@single:
    - shard-rkl:          NOTRUN -> [FAIL][50]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@gem_exec_big@single.html
    - shard-tglu-1:       NOTRUN -> [FAIL][51]
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@gem_exec_big@single.html
    - shard-mtlp:         NOTRUN -> [FAIL][52]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-3/igt@gem_exec_big@single.html

  * igt@i915_selftest@mock:
    - shard-snb:          [PASS][53] -> [DMESG-WARN][54] +10 other tests dmesg-warn
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-snb6/igt@i915_selftest@mock.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-snb5/igt@i915_selftest@mock.html
    - shard-tglu:         [PASS][55] -> [DMESG-WARN][56] +10 other tests dmesg-warn
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-tglu-4/igt@i915_selftest@mock.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-2/igt@i915_selftest@mock.html

  * igt@i915_selftest@mock@evict:
    - shard-dg2:          [PASS][57] -> [DMESG-WARN][58] +12 other tests dmesg-warn
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-8/igt@i915_selftest@mock@evict.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-10/igt@i915_selftest@mock@evict.html

  * igt@i915_selftest@mock@gtt:
    - shard-dg1:          [PASS][59] -> [DMESG-WARN][60] +10 other tests dmesg-warn
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg1-14/igt@i915_selftest@mock@gtt.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-15/igt@i915_selftest@mock@gtt.html

  * igt@i915_selftest@mock@phys:
    - shard-mtlp:         [PASS][61] -> [DMESG-WARN][62] +10 other tests dmesg-warn
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-mtlp-6/igt@i915_selftest@mock@phys.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-2/igt@i915_selftest@mock@phys.html

  
Known issues
------------

  Here are the changes found in Patchwork_164675v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-rkl:          NOTRUN -> [SKIP][63] ([i915#8411])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@device_reset@cold-reset-bound:
    - shard-rkl:          NOTRUN -> [SKIP][64] ([i915#11078])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-8/igt@device_reset@cold-reset-bound.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-tglu-1:       NOTRUN -> [SKIP][65] ([i915#3555] / [i915#9323])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@ctrl-surf-copy-new-ctx:
    - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#9323])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
    - shard-dg1:          NOTRUN -> [SKIP][67] ([i915#9323])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-18/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
    - shard-tglu:         NOTRUN -> [SKIP][68] ([i915#9323])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-8/igt@gem_ccs@ctrl-surf-copy-new-ctx.html
    - shard-mtlp:         NOTRUN -> [SKIP][69] ([i915#9323])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-1/igt@gem_ccs@ctrl-surf-copy-new-ctx.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-tglu-1:       NOTRUN -> [SKIP][70] ([i915#7697])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#280])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-6/igt@gem_ctx_sseu@invalid-args.html
    - shard-dg1:          NOTRUN -> [SKIP][72] ([i915#280])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-15/igt@gem_ctx_sseu@invalid-args.html
    - shard-tglu:         NOTRUN -> [SKIP][73] ([i915#280]) +1 other test skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-2/igt@gem_ctx_sseu@invalid-args.html
    - shard-mtlp:         NOTRUN -> [SKIP][74] ([i915#280])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-4/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-tglu-1:       NOTRUN -> [SKIP][75] ([i915#280]) +1 other test skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#280]) +2 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_eio@in-flight-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][77] ([i915#13390])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk1/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#4525])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-1/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-tglu:         NOTRUN -> [SKIP][79] ([i915#4525])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-3/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_flush@basic-wb-rw-default:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#3539] / [i915#4852]) +1 other test skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-6/igt@gem_exec_flush@basic-wb-rw-default.html
    - shard-dg1:          NOTRUN -> [SKIP][81] ([i915#3539] / [i915#4852])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-17/igt@gem_exec_flush@basic-wb-rw-default.html

  * igt@gem_exec_params@secure-non-master:
    - shard-dg2:          NOTRUN -> [SKIP][82] +7 other tests skip
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-8/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_reloc@basic-gtt-cpu-noreloc:
    - shard-mtlp:         NOTRUN -> [SKIP][83] ([i915#3281]) +1 other test skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-1/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-wc-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][84] ([i915#3281]) +4 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-6/igt@gem_exec_reloc@basic-wc-cpu.html

  * igt@gem_exec_reloc@basic-wc-gtt-noreloc:
    - shard-dg1:          NOTRUN -> [SKIP][85] ([i915#3281]) +2 other tests skip
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-17/igt@gem_exec_reloc@basic-wc-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#3281]) +8 other tests skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][87] ([i915#13196] / [i915#13356]) +1 other test incomplete
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk11/igt@gem_exec_suspend@basic-s3.html
    - shard-rkl:          NOTRUN -> [INCOMPLETE][88] ([i915#13356]) +1 other test incomplete
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@gem_exec_suspend@basic-s3.html

  * igt@gem_fence_thrash@bo-write-verify-threaded-none:
    - shard-dg1:          NOTRUN -> [SKIP][89] ([i915#4860])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-14/igt@gem_fence_thrash@bo-write-verify-threaded-none.html
    - shard-mtlp:         NOTRUN -> [SKIP][90] ([i915#4860])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-8/igt@gem_fence_thrash@bo-write-verify-threaded-none.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#4860]) +1 other test skip
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-8/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html

  * igt@gem_huc_copy@huc-copy:
    - shard-glk:          NOTRUN -> [SKIP][92] ([i915#2190])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk4/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#4613] / [i915#7582])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@massive-random:
    - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#4613]) +2 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-7/igt@gem_lmem_swapping@massive-random.html
    - shard-mtlp:         NOTRUN -> [SKIP][95] ([i915#4613])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-5/igt@gem_lmem_swapping@massive-random.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][96] ([i915#4613]) +3 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-2/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@random:
    - shard-tglu-1:       NOTRUN -> [SKIP][97] ([i915#4613]) +1 other test skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@gem_lmem_swapping@random.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-glk:          NOTRUN -> [SKIP][98] ([i915#4613]) +8 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk6/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_media_vme:
    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#284])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-6/igt@gem_media_vme.html
    - shard-rkl:          NOTRUN -> [SKIP][100] ([i915#284])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-7/igt@gem_media_vme.html
    - shard-dg1:          NOTRUN -> [SKIP][101] ([i915#284])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-15/igt@gem_media_vme.html
    - shard-tglu:         NOTRUN -> [SKIP][102] ([i915#284])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-2/igt@gem_media_vme.html
    - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#284])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-4/igt@gem_media_vme.html

  * igt@gem_mmap_gtt@basic-small-copy-odd:
    - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#4077]) +2 other tests skip
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-18/igt@gem_mmap_gtt@basic-small-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#4077]) +4 other tests skip
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-3/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_mmap_gtt@medium-copy:
    - shard-mtlp:         NOTRUN -> [SKIP][106] ([i915#4077]) +2 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-1/igt@gem_mmap_gtt@medium-copy.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-snoop:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([i915#3282]) +3 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-6/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
    - shard-dg1:          NOTRUN -> [SKIP][108] ([i915#3282]) +3 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-17/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html
    - shard-mtlp:         NOTRUN -> [SKIP][109] ([i915#3282]) +3 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-5/igt@gem_partial_pwrite_pread@writes-after-reads-snoop.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          NOTRUN -> [SKIP][110] ([i915#3282]) +4 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_pread@exhaustion:
    - shard-glk:          NOTRUN -> [WARN][111] ([i915#2658])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk5/igt@gem_pread@exhaustion.html
    - shard-tglu:         NOTRUN -> [WARN][112] ([i915#2658]) +1 other test warn
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-6/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-snb:          NOTRUN -> [WARN][113] ([i915#2658])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-snb1/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:
    - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#4270]) +1 other test skip
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-7/igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted.html

  * igt@gem_pxp@hw-rejects-pxp-context:
    - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#13717])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@gem_pxp@hw-rejects-pxp-context.html
    - shard-tglu-1:       NOTRUN -> [SKIP][116] ([i915#13398])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@gem_pxp@hw-rejects-pxp-context.html

  * igt@gem_pxp@reject-modify-context-protection-off-3:
    - shard-rkl:          [PASS][117] -> [SKIP][118] ([i915#4270])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-4/igt@gem_pxp@reject-modify-context-protection-off-3.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@gem_pxp@reject-modify-context-protection-off-3.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-rkl:          NOTRUN -> [ABORT][119] ([i915#15131])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-1/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_render_copy@x-tiled-to-vebox-y-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][120] ([i915#8428])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-8/igt@gem_render_copy@x-tiled-to-vebox-y-tiled.html

  * igt@gem_render_copy@yf-tiled-to-vebox-linear:
    - shard-dg2:          NOTRUN -> [SKIP][121] ([i915#5190] / [i915#8428]) +2 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-6/igt@gem_render_copy@yf-tiled-to-vebox-linear.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][122] ([i915#4079])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-16/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_tiled_pread_pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#4079]) +1 other test skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-5/igt@gem_tiled_pread_pwrite.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-tglu-1:       NOTRUN -> [SKIP][124] ([i915#3297]) +1 other test skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@forbidden-operations:
    - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#3282] / [i915#3297])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@gem_userptr_blits@forbidden-operations.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:
    - shard-dg2:          NOTRUN -> [SKIP][126] ([i915#3297] / [i915#4880])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-8/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-tglu:         NOTRUN -> [SKIP][127] ([i915#3297])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-7/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_workarounds@suspend-resume:
    - shard-glk:          [PASS][128] -> [INCOMPLETE][129] ([i915#13356] / [i915#14586])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-glk6/igt@gem_workarounds@suspend-resume.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk2/igt@gem_workarounds@suspend-resume.html

  * igt@gen3_render_tiledx_blits:
    - shard-glk10:        NOTRUN -> [SKIP][130] +140 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk10/igt@gen3_render_tiledx_blits.html

  * igt@gen7_exec_parse@batch-without-end:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#14544])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@gen7_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-tglu-1:       NOTRUN -> [SKIP][132] ([i915#2527] / [i915#2856])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-tglu:         NOTRUN -> [SKIP][133] ([i915#2527] / [i915#2856]) +2 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-3/igt@gen9_exec_parse@batch-zero-length.html
    - shard-mtlp:         NOTRUN -> [SKIP][134] ([i915#2856]) +1 other test skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-4/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#2527]) +5 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@gen9_exec_parse@shadow-peek.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-dg2:          NOTRUN -> [SKIP][136] ([i915#2856]) +2 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-4/igt@gen9_exec_parse@valid-registers.html
    - shard-dg1:          NOTRUN -> [SKIP][137] ([i915#2527]) +1 other test skip
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-16/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_module_load@fault-injection@__uc_init:
    - shard-tglu-1:       NOTRUN -> [SKIP][138] ([i915#15479]) +4 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@i915_module_load@fault-injection@__uc_init.html

  * igt@i915_module_load@fault-injection@i915_driver_mmio_probe:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][139] ([i915#15481])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-16/igt@i915_module_load@fault-injection@i915_driver_mmio_probe.html

  * igt@i915_module_load@fault-injection@intel_connector_register:
    - shard-tglu-1:       NOTRUN -> [ABORT][140] ([i915#15342]) +1 other test abort
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@i915_module_load@fault-injection@intel_connector_register.html

  * igt@i915_module_load@resize-bar:
    - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#6412])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@i915_module_load@resize-bar.html
    - shard-tglu:         NOTRUN -> [SKIP][142] ([i915#6412])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-2/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-tglu:         NOTRUN -> [SKIP][143] ([i915#14498])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-10/igt@i915_pm_rc6_residency@rc6-idle.html
    - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#14498])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-rkl:          [PASS][145] -> [INCOMPLETE][146] ([i915#13356])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-5/igt@i915_pm_rpm@system-suspend.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_pm_rps@reset:
    - shard-mtlp:         [PASS][147] -> [FAIL][148] ([i915#15365])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-mtlp-4/igt@i915_pm_rps@reset.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-1/igt@i915_pm_rps@reset.html

  * igt@i915_pm_rps@thresholds-park:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#11681])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-7/igt@i915_pm_rps@thresholds-park.html
    - shard-dg1:          NOTRUN -> [SKIP][150] ([i915#11681])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-19/igt@i915_pm_rps@thresholds-park.html
    - shard-mtlp:         NOTRUN -> [SKIP][151] ([i915#11681])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-1/igt@i915_pm_rps@thresholds-park.html

  * igt@i915_suspend@debugfs-reader:
    - shard-rkl:          [PASS][152] -> [INCOMPLETE][153] ([i915#4817]) +1 other test incomplete
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-3/igt@i915_suspend@debugfs-reader.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@i915_suspend@debugfs-reader.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#12454] / [i915#12712])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
    - shard-tglu:         NOTRUN -> [SKIP][155] ([i915#12454] / [i915#12712])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-8/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html
    - shard-mtlp:         NOTRUN -> [SKIP][156] ([i915#12454] / [i915#12712])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-8/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_async_flips@async-flip-suspend-resume:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][157] ([i915#12761]) +1 other test incomplete
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_async_flips@async-flip-suspend-resume.html
    - shard-glk:          NOTRUN -> [INCOMPLETE][158] ([i915#12761]) +1 other test incomplete
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk6/igt@kms_async_flips@async-flip-suspend-resume.html

  * igt@kms_async_flips@crc:
    - shard-dg1:          [PASS][159] -> [DMESG-WARN][160] ([i915#4423]) +4 other tests dmesg-warn
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg1-15/igt@kms_async_flips@crc.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-17/igt@kms_async_flips@crc.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-glk:          NOTRUN -> [SKIP][161] ([i915#1769])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk2/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
    - shard-mtlp:         [PASS][162] -> [FAIL][163] ([i915#5956]) +1 other test fail
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-mtlp-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3:
    - shard-dg2:          [PASS][164] -> [FAIL][165] ([i915#5956]) +1 other test fail
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-5/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-3/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
    - shard-tglu:         NOTRUN -> [SKIP][166] ([i915#5286]) +3 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-4/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][167] ([i915#5286]) +2 other tests skip
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-180:
    - shard-mtlp:         [PASS][168] -> [FAIL][169] ([i915#15733] / [i915#5138])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-1/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-0:
    - shard-dg1:          NOTRUN -> [SKIP][170] ([i915#4538] / [i915#5286]) +1 other test skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-12/igt@kms_big_fb@4-tiled-8bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#5286]) +5 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#3638]) +6 other tests skip
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@kms_big_fb@linear-64bpp-rotate-90.html
    - shard-dg1:          NOTRUN -> [SKIP][173] ([i915#3638]) +1 other test skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-18/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#3828]) +1 other test skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-5/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - shard-dg1:          NOTRUN -> [SKIP][175] ([i915#4538])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-18/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][176] ([i915#4538] / [i915#5190]) +4 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-5/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-glk11:        NOTRUN -> [SKIP][177] +50 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk11/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#10307] / [i915#6095]) +85 other tests skip
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-5/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][179] ([i915#12313])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][180] ([i915#6095]) +39 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-2/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][181] ([i915#12313]) +1 other test skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][182] ([i915#12313]) +1 other test skip
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][183] ([i915#6095]) +34 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#6095]) +71 other tests skip
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#12805])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-1/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs:
    - shard-glk:          NOTRUN -> [INCOMPLETE][186] ([i915#15582]) +1 other test incomplete
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk9/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][187] ([i915#14098] / [i915#6095]) +45 other tests skip
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][188] ([i915#6095]) +210 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-14/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html
    - shard-glk11:        NOTRUN -> [INCOMPLETE][189] ([i915#15582]) +1 other test incomplete
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk11/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#6095]) +61 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:
    - shard-rkl:          NOTRUN -> [SKIP][191] ([i915#14098] / [i915#14544] / [i915#6095]) +1 other test skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#14544] / [i915#6095]) +1 other test skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][193] ([i915#10307] / [i915#10434] / [i915#6095]) +2 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][194] ([i915#6095]) +29 other tests skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-6/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][195] +387 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk3/igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition:
    - shard-rkl:          NOTRUN -> [SKIP][196] ([i915#3742])
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-8/igt@kms_cdclk@mode-transition.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#13781]) +3 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-4/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1.html

  * igt@kms_chamelium_audio@hdmi-audio-edid:
    - shard-tglu-1:       NOTRUN -> [SKIP][198] ([i915#11151] / [i915#7828]) +4 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_chamelium_audio@hdmi-audio-edid.html

  * igt@kms_chamelium_frames@dp-crc-single:
    - shard-dg2:          NOTRUN -> [SKIP][199] ([i915#11151] / [i915#7828]) +1 other test skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-4/igt@kms_chamelium_frames@dp-crc-single.html

  * igt@kms_chamelium_frames@hdmi-aspect-ratio:
    - shard-tglu:         NOTRUN -> [SKIP][200] ([i915#11151] / [i915#7828]) +4 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-8/igt@kms_chamelium_frames@hdmi-aspect-ratio.html

  * igt@kms_chamelium_frames@hdmi-frame-dump:
    - shard-rkl:          NOTRUN -> [SKIP][201] ([i915#11151] / [i915#7828]) +5 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@kms_chamelium_frames@hdmi-frame-dump.html
    - shard-dg1:          NOTRUN -> [SKIP][202] ([i915#11151] / [i915#7828])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-18/igt@kms_chamelium_frames@hdmi-frame-dump.html
    - shard-mtlp:         NOTRUN -> [SKIP][203] ([i915#11151] / [i915#7828])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-3/igt@kms_chamelium_frames@hdmi-frame-dump.html

  * igt@kms_content_protection@atomic-hdcp14:
    - shard-tglu:         NOTRUN -> [SKIP][204] ([i915#15865]) +1 other test skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-6/igt@kms_content_protection@atomic-hdcp14.html

  * igt@kms_content_protection@atomic@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][205] ([i915#7173])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-10/igt@kms_content_protection@atomic@pipe-a-dp-3.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#15330] / [i915#3116])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-0-hdcp14:
    - shard-dg2:          NOTRUN -> [SKIP][207] ([i915#15330])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-6/igt@kms_content_protection@dp-mst-type-0-hdcp14.html

  * igt@kms_content_protection@mei-interface:
    - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#15865]) +1 other test skip
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-5/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@suspend-resume:
    - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#15865])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-7/igt@kms_content_protection@suspend-resume.html
    - shard-dg1:          NOTRUN -> [SKIP][210] ([i915#15865])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-19/igt@kms_content_protection@suspend-resume.html
    - shard-mtlp:         NOTRUN -> [SKIP][211] ([i915#15865])
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-1/igt@kms_content_protection@suspend-resume.html

  * igt@kms_content_protection@type1:
    - shard-tglu-1:       NOTRUN -> [SKIP][212] ([i915#15865]) +1 other test skip
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-dg2:          NOTRUN -> [SKIP][213] ([i915#13049] / [i915#3359])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-10/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][214] ([i915#13566]) +2 other tests fail
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2.html

  * igt@kms_cursor_crc@cursor-onscreen-32x32:
    - shard-rkl:          NOTRUN -> [SKIP][215] ([i915#3555]) +1 other test skip
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-32x32.html
    - shard-dg1:          NOTRUN -> [SKIP][216] ([i915#3555]) +1 other test skip
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-14/igt@kms_cursor_crc@cursor-onscreen-32x32.html
    - shard-tglu:         NOTRUN -> [SKIP][217] ([i915#3555]) +2 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-8/igt@kms_cursor_crc@cursor-onscreen-32x32.html
    - shard-mtlp:         NOTRUN -> [SKIP][218] ([i915#3555] / [i915#8814]) +1 other test skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-8/igt@kms_cursor_crc@cursor-onscreen-32x32.html

  * igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [FAIL][219] ([i915#13566]) +1 other test fail
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [FAIL][220] ([i915#13566]) +1 other test fail
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-8/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-random-max-size:
    - shard-dg2:          NOTRUN -> [SKIP][221] ([i915#3555]) +2 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-4/igt@kms_cursor_crc@cursor-random-max-size.html

  * igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1:
    - shard-tglu:         [PASS][222] -> [FAIL][223] ([i915#13566]) +5 other tests fail
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-tglu-7/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-4/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-tglu:         NOTRUN -> [SKIP][224] ([i915#13049])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-3/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_crc@cursor-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][225] ([i915#12358] / [i915#14152] / [i915#7882])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk1/igt@kms_cursor_crc@cursor-suspend.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][226] ([i915#12358] / [i915#14152])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk1/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][227] +16 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][228] ([i915#4103])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][229] ([i915#13046] / [i915#5354]) +1 other test skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#9067])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-tglu:         NOTRUN -> [SKIP][231] ([i915#4103])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-rkl:          NOTRUN -> [SKIP][232] ([i915#13691])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-tglu:         NOTRUN -> [SKIP][233] ([i915#1769] / [i915#3555] / [i915#3804])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-10/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][234] ([i915#3804])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-10/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dp_link_training@uhbr-mst:
    - shard-tglu-1:       NOTRUN -> [SKIP][235] ([i915#13748])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_dp_link_training@uhbr-mst.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-tglu-1:       NOTRUN -> [SKIP][236] ([i915#3840])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-mtlp:         NOTRUN -> [SKIP][237] ([i915#3555] / [i915#3840])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-3/igt@kms_dsc@dsc-with-formats.html
    - shard-dg2:          NOTRUN -> [SKIP][238] ([i915#3555] / [i915#3840])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-5/igt@kms_dsc@dsc-with-formats.html
    - shard-tglu-1:       NOTRUN -> [SKIP][239] ([i915#3555] / [i915#3840])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_dsc@dsc-with-formats.html
    - shard-dg1:          NOTRUN -> [SKIP][240] ([i915#3555] / [i915#3840])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-13/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_feature_discovery@chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][241] ([i915#4854])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-1/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-2x:
    - shard-rkl:          NOTRUN -> [SKIP][242] ([i915#1839])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-8/igt@kms_feature_discovery@display-2x.html

  * igt@kms_flip@2x-dpms-vs-vblank-race:
    - shard-dg2:          NOTRUN -> [SKIP][243] ([i915#9934]) +4 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-7/igt@kms_flip@2x-dpms-vs-vblank-race.html
    - shard-dg1:          NOTRUN -> [SKIP][244] ([i915#9934]) +1 other test skip
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-18/igt@kms_flip@2x-dpms-vs-vblank-race.html
    - shard-mtlp:         NOTRUN -> [SKIP][245] ([i915#3637] / [i915#9934]) +1 other test skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-1/igt@kms_flip@2x-dpms-vs-vblank-race.html

  * igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][246] ([i915#14544] / [i915#9934])
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible.html

  * igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][247] -> [FAIL][248] ([i915#13027]) +1 other test fail
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-tglu:         NOTRUN -> [SKIP][249] ([i915#3637] / [i915#9934]) +6 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-2/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][250] ([i915#12745] / [i915#4839])
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk10/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][251] ([i915#12745])
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk10/igt@kms_flip@2x-flip-vs-suspend-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-plain-flip:
    - shard-tglu-1:       NOTRUN -> [SKIP][252] ([i915#3637] / [i915#9934]) +2 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-wf_vblank-ts-check:
    - shard-rkl:          NOTRUN -> [SKIP][253] ([i915#9934]) +5 other tests skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-5/igt@kms_flip@2x-wf_vblank-ts-check.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank:
    - shard-snb:          [PASS][254] -> [FAIL][255] ([i915#14600]) +1 other test fail
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-snb6/igt@kms_flip@flip-vs-blocking-wf-vblank.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-snb1/igt@kms_flip@flip-vs-blocking-wf-vblank.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1:
    - shard-tglu:         [PASS][256] -> [FAIL][257] ([i915#10826]) +1 other test fail
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-tglu-4/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-2/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][258] ([i915#15643] / [i915#5190])
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html
    - shard-mtlp:         NOTRUN -> [SKIP][259] ([i915#15643])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][260] ([i915#15643])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][261] ([i915#15643])
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][262] ([i915#15643]) +1 other test skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][263] ([i915#8708]) +11 other tests skip
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:
    - shard-rkl:          NOTRUN -> [SKIP][264] ([i915#1825]) +29 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:
    - shard-dg1:          NOTRUN -> [SKIP][265] ([i915#8708]) +7 other tests skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][266] ([i915#14544] / [i915#15102] / [i915#3023]) +1 other test skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html
    - shard-tglu-1:       NOTRUN -> [SKIP][267] ([i915#15102]) +6 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][268] ([i915#15102]) +1 other test skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render.html
    - shard-rkl:          NOTRUN -> [SKIP][269] ([i915#14544] / [i915#15102])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render.html
    - shard-dg1:          NOTRUN -> [SKIP][270] ([i915#15102])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-wc:
    - shard-snb:          NOTRUN -> [SKIP][271] +65 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-snb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-wc.html
    - shard-dg2:          NOTRUN -> [SKIP][272] ([i915#15104]) +1 other test skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-onoff:
    - shard-dg1:          NOTRUN -> [SKIP][273] ([i915#15102] / [i915#3458])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg1:          NOTRUN -> [SKIP][274] +3 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][275] ([i915#14544] / [i915#1825]) +4 other tests skip
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][276] ([i915#5354]) +9 other tests skip
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-mtlp:         NOTRUN -> [SKIP][277] ([i915#1825]) +4 other tests skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][278] ([i915#15102]) +14 other tests skip
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html
    - shard-mtlp:         NOTRUN -> [SKIP][279] ([i915#8708]) +2 other tests skip
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-4/igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-tglu:         NOTRUN -> [SKIP][280] ([i915#5439])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-4/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][281] ([i915#15104]) +1 other test skip
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-19/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
    - shard-mtlp:         NOTRUN -> [SKIP][282] ([i915#15104])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-1/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][283] ([i915#15102]) +2 other tests skip
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][284] ([i915#15102] / [i915#3023]) +18 other tests skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][285] ([i915#15102] / [i915#3458]) +2 other tests skip
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][286] +37 other tests skip
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-9/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite:
    - shard-tglu-1:       NOTRUN -> [SKIP][287] +20 other tests skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite.html

  * igt@kms_hdmi_inject@inject-audio:
    - shard-mtlp:         [PASS][288] -> [SKIP][289] ([i915#15725])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-mtlp-6/igt@kms_hdmi_inject@inject-audio.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-1/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][290] ([i915#3555] / [i915#8228]) +1 other test skip
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-4/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][291] ([i915#15458])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-9/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_joiner@basic-max-non-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][292] ([i915#13688])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-3/igt@kms_joiner@basic-max-non-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][293] ([i915#15459])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-8/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][294] ([i915#15638] / [i915#15722])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          NOTRUN -> [SKIP][295] ([i915#6301])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-5/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:
    - shard-mtlp:         NOTRUN -> [SKIP][296] +6 other tests skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-3/igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - shard-glk:          NOTRUN -> [INCOMPLETE][297] ([i915#12756] / [i915#13409] / [i915#13476])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk9/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][298] ([i915#13409] / [i915#13476])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk9/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2.html

  * igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping:
    - shard-tglu-1:       NOTRUN -> [SKIP][299] ([i915#15709]) +1 other test skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier:
    - shard-tglu:         NOTRUN -> [SKIP][300] ([i915#15709]) +1 other test skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-6/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier.html

  * igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier:
    - shard-dg2:          NOTRUN -> [SKIP][301] ([i915#15709]) +2 other tests skip
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-4/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier.html

  * igt@kms_plane@pixel-format-yf-tiled-ccs-modifier:
    - shard-rkl:          NOTRUN -> [SKIP][302] ([i915#15709]) +3 other tests skip
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-8/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a:
    - shard-glk:          [PASS][303] -> [INCOMPLETE][304] ([i915#13026])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-glk9/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb:
    - shard-glk:          NOTRUN -> [FAIL][305] ([i915#10647] / [i915#12177])
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk2/igt@kms_plane_alpha_blend@alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][306] ([i915#10647]) +1 other test fail
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk2/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1.html

  * igt@kms_plane_multiple@2x-tiling-x:
    - shard-rkl:          NOTRUN -> [SKIP][307] ([i915#13958])
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-7/igt@kms_plane_multiple@2x-tiling-x.html

  * igt@kms_plane_multiple@2x-tiling-y:
    - shard-tglu:         NOTRUN -> [SKIP][308] ([i915#13958])
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-4/igt@kms_plane_multiple@2x-tiling-y.html

  * igt@kms_plane_multiple@tiling-4:
    - shard-tglu:         NOTRUN -> [SKIP][309] ([i915#14259])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-7/igt@kms_plane_multiple@tiling-4.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][310] ([i915#12343])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-4/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_backlight@fade:
    - shard-tglu:         NOTRUN -> [SKIP][311] ([i915#9812]) +1 other test skip
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-2/igt@kms_pm_backlight@fade.html
    - shard-rkl:          NOTRUN -> [SKIP][312] ([i915#5354])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-7/igt@kms_pm_backlight@fade.html
    - shard-dg1:          NOTRUN -> [SKIP][313] ([i915#5354])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-15/igt@kms_pm_backlight@fade.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][314] ([i915#9812])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-rkl:          NOTRUN -> [SKIP][315] ([i915#3828])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu:         NOTRUN -> [FAIL][316] ([i915#15752])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-2/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-tglu-1:       NOTRUN -> [SKIP][317] ([i915#15073])
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-dg1:          [PASS][318] -> [SKIP][319] ([i915#15073]) +1 other test skip
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg1-13/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-15/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@system-suspend-modeset:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][320] ([i915#10553])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk10/igt@kms_pm_rpm@system-suspend-modeset.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:
    - shard-rkl:          NOTRUN -> [SKIP][321] ([i915#11520] / [i915#14544])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][322] ([i915#11520]) +9 other tests skip
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk8/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:
    - shard-dg2:          NOTRUN -> [SKIP][323] ([i915#11520]) +4 other tests skip
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-5/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html
    - shard-tglu-1:       NOTRUN -> [SKIP][324] ([i915#11520]) +2 other tests skip
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html
    - shard-glk10:        NOTRUN -> [SKIP][325] ([i915#11520]) +3 other tests skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk10/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
    - shard-rkl:          NOTRUN -> [SKIP][326] ([i915#11520]) +7 other tests skip
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][327] ([i915#9808]) +1 other test skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-7/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-a-edp-1.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-b-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][328] ([i915#12316]) +3 other tests skip
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-7/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-b-edp-1.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
    - shard-snb:          NOTRUN -> [SKIP][329] ([i915#11520]) +2 other tests skip
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-snb4/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html
    - shard-dg1:          NOTRUN -> [SKIP][330] ([i915#11520]) +2 other tests skip
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-19/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-tglu:         NOTRUN -> [SKIP][331] ([i915#11520]) +5 other tests skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-6/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:
    - shard-glk11:        NOTRUN -> [SKIP][332] ([i915#11520])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk11/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-rkl:          NOTRUN -> [SKIP][333] ([i915#1072] / [i915#9732]) +17 other tests skip
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_psr@pr-cursor-plane-onoff:
    - shard-dg1:          NOTRUN -> [SKIP][334] ([i915#1072] / [i915#9732]) +6 other tests skip
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-18/igt@kms_psr@pr-cursor-plane-onoff.html
    - shard-mtlp:         NOTRUN -> [SKIP][335] ([i915#9688]) +7 other tests skip
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-1/igt@kms_psr@pr-cursor-plane-onoff.html

  * igt@kms_psr@psr-basic:
    - shard-tglu:         NOTRUN -> [SKIP][336] ([i915#9732]) +13 other tests skip
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-8/igt@kms_psr@psr-basic.html

  * igt@kms_psr@psr-cursor-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][337] ([i915#1072] / [i915#9732]) +8 other tests skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-6/igt@kms_psr@psr-cursor-mmap-cpu.html

  * igt@kms_psr@psr-cursor-plane-move:
    - shard-tglu-1:       NOTRUN -> [SKIP][338] ([i915#9732]) +8 other tests skip
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_psr@psr-cursor-plane-move.html

  * igt@kms_psr@psr-no-drrs:
    - shard-rkl:          NOTRUN -> [SKIP][339] ([i915#1072] / [i915#14544] / [i915#9732]) +3 other tests skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_psr@psr-no-drrs.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-dg2:          NOTRUN -> [SKIP][340] ([i915#9685])
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:
    - shard-glk:          NOTRUN -> [INCOMPLETE][341] ([i915#15500])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk5/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
    - shard-dg2:          NOTRUN -> [SKIP][342] ([i915#5190])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-8/igt@kms_rotation_crc@primary-y-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-rkl:          NOTRUN -> [SKIP][343] ([i915#5289]) +1 other test skip
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-tglu:         NOTRUN -> [SKIP][344] ([i915#5289])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@sprite-rotation-90:
    - shard-dg2:          NOTRUN -> [SKIP][345] ([i915#12755] / [i915#15867])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-3/igt@kms_rotation_crc@sprite-rotation-90.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-glk:          NOTRUN -> [ABORT][346] ([i915#13179]) +1 other test abort
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-glk9/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:
    - shard-dg2:          NOTRUN -> [ABORT][347] ([i915#13179]) +1 other test abort
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-6/igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free.html

  * igt@kms_setmode@basic@pipe-b-edp-1:
    - shard-mtlp:         [PASS][348] -> [FAIL][349] ([i915#15106]) +2 other tests fail
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-mtlp-5/igt@kms_setmode@basic@pipe-b-edp-1.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-4/igt@kms_setmode@basic@pipe-b-edp-1.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-dg2:          NOTRUN -> [SKIP][350] ([i915#8623])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-tglu:         NOTRUN -> [SKIP][351] ([i915#9906])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-8/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@lobf:
    - shard-dg2:          NOTRUN -> [SKIP][352] ([i915#11920])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-8/igt@kms_vrr@lobf.html
    - shard-rkl:          NOTRUN -> [SKIP][353] ([i915#11920])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@kms_vrr@lobf.html
    - shard-dg1:          NOTRUN -> [SKIP][354] ([i915#11920])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-12/igt@kms_vrr@lobf.html
    - shard-tglu:         NOTRUN -> [SKIP][355] ([i915#11920])
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-5/igt@kms_vrr@lobf.html
    - shard-mtlp:         NOTRUN -> [SKIP][356] ([i915#11920])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-7/igt@kms_vrr@lobf.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-rkl:          NOTRUN -> [SKIP][357] ([i915#2435])
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@perf@per-context-mode-unprivileged.html
    - shard-dg1:          NOTRUN -> [SKIP][358] ([i915#2433])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-18/igt@perf@per-context-mode-unprivileged.html

  * igt@perf_pmu@rc6-suspend:
    - shard-rkl:          [PASS][359] -> [INCOMPLETE][360] ([i915#13520])
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-2/igt@perf_pmu@rc6-suspend.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@perf_pmu@rc6-suspend.html

  * igt@prime_vgem@basic-write:
    - shard-dg2:          NOTRUN -> [SKIP][361] ([i915#3291] / [i915#3708])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-4/igt@prime_vgem@basic-write.html

  * igt@prime_vgem@fence-flip-hang:
    - shard-rkl:          NOTRUN -> [SKIP][362] ([i915#3708])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-5/igt@prime_vgem@fence-flip-hang.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-rkl:          NOTRUN -> [SKIP][363] ([i915#9917])
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-5/igt@sriov_basic@enable-vfs-autoprobe-on.html

  
#### Possible fixes ####

  * igt@gem_ccs@suspend-resume:
    - shard-dg2:          [INCOMPLETE][364] ([i915#13356]) -> [PASS][365] +1 other test pass
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-1/igt@gem_ccs@suspend-resume.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-4/igt@gem_ccs@suspend-resume.html

  * igt@i915_pm_rc6_residency@rc6-accuracy:
    - shard-dg2:          [FAIL][366] ([i915#12964]) -> [PASS][367] +1 other test pass
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-4/igt@i915_pm_rc6_residency@rc6-accuracy.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-1/igt@i915_pm_rc6_residency@rc6-accuracy.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-rkl:          [INCOMPLETE][368] ([i915#13356]) -> [PASS][369]
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-4/igt@i915_pm_rpm@system-suspend-execbuf.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@i915_pm_rpm@system-suspend-execbuf.html
    - shard-dg1:          [DMESG-WARN][370] ([i915#4423]) -> [PASS][371]
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg1-18/igt@i915_pm_rpm@system-suspend-execbuf.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-14/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_selftest@live:
    - shard-mtlp:         [DMESG-FAIL][372] ([i915#12061] / [i915#15560]) -> [PASS][373]
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-mtlp-3/igt@i915_selftest@live.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [DMESG-FAIL][374] ([i915#12061]) -> [PASS][375]
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-mtlp-3/igt@i915_selftest@live@workarounds.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-8/igt@i915_selftest@live@workarounds.html

  * igt@kms_cursor_crc@cursor-sliding-256x85:
    - shard-tglu:         [FAIL][376] ([i915#13566]) -> [PASS][377] +1 other test pass
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-tglu-4/igt@kms_cursor_crc@cursor-sliding-256x85.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-5/igt@kms_cursor_crc@cursor-sliding-256x85.html

  * igt@kms_hdr@bpc-switch:
    - shard-dg2:          [SKIP][378] ([i915#3555] / [i915#8228]) -> [PASS][379]
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-8/igt@kms_hdr@bpc-switch.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-10/igt@kms_hdr@bpc-switch.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          [SKIP][380] ([i915#15073]) -> [PASS][381] +1 other test pass
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-8/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-dg1:          [SKIP][382] ([i915#15073]) -> [PASS][383]
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg1-18/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-15/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_vblank@ts-continuation-dpms-suspend:
    - shard-rkl:          [INCOMPLETE][384] ([i915#12276]) -> [PASS][385]
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-6/igt@kms_vblank@ts-continuation-dpms-suspend.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-5/igt@kms_vblank@ts-continuation-dpms-suspend.html

  * igt@kms_vrr@negative-basic:
    - shard-dg2:          [SKIP][386] ([i915#3555] / [i915#9906]) -> [PASS][387]
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-1/igt@kms_vrr@negative-basic.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-10/igt@kms_vrr@negative-basic.html
    - shard-mtlp:         [FAIL][388] ([i915#15420]) -> [PASS][389] +1 other test pass
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-mtlp-2/igt@kms_vrr@negative-basic.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-2/igt@kms_vrr@negative-basic.html

  
#### Warnings ####

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-rkl:          [SKIP][390] ([i915#3555] / [i915#9323]) -> [SKIP][391] ([i915#14544] / [i915#3555] / [i915#9323])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-3/igt@gem_ccs@block-multicopy-inplace.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-rkl:          [SKIP][392] ([i915#280]) -> [SKIP][393] ([i915#14544] / [i915#280])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-4/igt@gem_ctx_sseu@invalid-sseu.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-rkl:          [SKIP][394] ([i915#4525]) -> [SKIP][395] ([i915#14544] / [i915#4525])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-7/igt@gem_exec_balancer@parallel-bb-first.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_reloc@basic-gtt-cpu:
    - shard-rkl:          [SKIP][396] ([i915#14544] / [i915#3281]) -> [SKIP][397] ([i915#3281]) +2 other tests skip
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-cpu.html

  * igt@gem_exec_reloc@basic-write-read-active:
    - shard-rkl:          [SKIP][398] ([i915#3281]) -> [SKIP][399] ([i915#14544] / [i915#3281]) +3 other tests skip
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-7/igt@gem_exec_reloc@basic-write-read-active.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@gem_exec_reloc@basic-write-read-active.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-rkl:          [SKIP][400] ([i915#4613]) -> [SKIP][401] ([i915#14544] / [i915#4613]) +1 other test skip
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-7/igt@gem_lmem_swapping@heavy-random.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@massive:
    - shard-rkl:          [SKIP][402] ([i915#14544] / [i915#4613]) -> [SKIP][403] ([i915#4613])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-6/igt@gem_lmem_swapping@massive.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-5/igt@gem_lmem_swapping@massive.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          [SKIP][404] ([i915#3282]) -> [SKIP][405] ([i915#14544] / [i915#3282]) +1 other test skip
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_pread@uncached:
    - shard-rkl:          [SKIP][406] ([i915#14544] / [i915#3282]) -> [SKIP][407] ([i915#3282])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-6/igt@gem_pread@uncached.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@gem_pread@uncached.html

  * igt@i915_module_load@fault-injection:
    - shard-dg1:          [ABORT][408] -> [ABORT][409] ([i915#15481]) +1 other test abort
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg1-16/igt@i915_module_load@fault-injection.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-16/igt@i915_module_load@fault-injection.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          [SKIP][410] ([i915#14544] / [i915#4387]) -> [SKIP][411] ([i915#4387])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-6/igt@i915_pm_sseu@full-enable.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@i915_pm_sseu@full-enable.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-rkl:          [SKIP][412] ([i915#5286]) -> [SKIP][413] ([i915#14544] / [i915#5286]) +2 other tests skip
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-2/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-dg1:          [SKIP][414] ([i915#5286]) -> [SKIP][415] ([i915#4423] / [i915#5286])
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg1-19/igt@kms_big_fb@4-tiled-addfb.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-18/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][416] ([i915#14544] / [i915#5286]) -> [SKIP][417] ([i915#5286])
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
    - shard-rkl:          [SKIP][418] -> [SKIP][419] ([i915#14544]) +6 other tests skip
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2:
    - shard-rkl:          [SKIP][420] ([i915#6095]) -> [SKIP][421] ([i915#14544] / [i915#6095]) +7 other tests skip
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc:
    - shard-rkl:          [SKIP][422] ([i915#14098] / [i915#6095]) -> [SKIP][423] ([i915#14098] / [i915#14544] / [i915#6095]) +7 other tests skip
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-3/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][424] ([i915#12805] / [i915#14544]) -> [SKIP][425] ([i915#12805]) +1 other test skip
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs:
    - shard-rkl:          [SKIP][426] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][427] ([i915#14098] / [i915#6095]) +5 other tests skip
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2:
    - shard-rkl:          [SKIP][428] ([i915#14544] / [i915#6095]) -> [SKIP][429] ([i915#6095]) +3 other tests skip
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html

  * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
    - shard-rkl:          [SKIP][430] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][431] ([i915#11151] / [i915#7828]) +1 other test skip
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-6/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-rkl:          [SKIP][432] ([i915#11151] / [i915#7828]) -> [SKIP][433] ([i915#11151] / [i915#14544] / [i915#7828]) +3 other tests skip
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_content_protection@atomic:
    - shard-dg2:          [SKIP][434] ([i915#15865]) -> [FAIL][435] ([i915#7173])
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-3/igt@kms_content_protection@atomic.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-10/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-rkl:          [SKIP][436] ([i915#15865]) -> [SKIP][437] ([i915#14544] / [i915#15865]) +1 other test skip
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-1/igt@kms_content_protection@atomic-dpms.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-type-0-hdcp14:
    - shard-rkl:          [SKIP][438] ([i915#14544] / [i915#15330]) -> [SKIP][439] ([i915#15330])
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0-hdcp14.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-7/igt@kms_content_protection@dp-mst-type-0-hdcp14.html

  * igt@kms_content_protection@lic-type-0-hdcp14:
    - shard-rkl:          [SKIP][440] ([i915#14544] / [i915#15865]) -> [SKIP][441] ([i915#15865])
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-6/igt@kms_content_protection@lic-type-0-hdcp14.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-7/igt@kms_content_protection@lic-type-0-hdcp14.html

  * igt@kms_cursor_crc@cursor-random-32x32:
    - shard-rkl:          [SKIP][442] ([i915#14544] / [i915#3555]) -> [SKIP][443] ([i915#3555]) +1 other test skip
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-6/igt@kms_cursor_crc@cursor-random-32x32.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-5/igt@kms_cursor_crc@cursor-random-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-rkl:          [SKIP][444] ([i915#3555]) -> [SKIP][445] ([i915#14544] / [i915#3555]) +1 other test skip
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-3/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-rkl:          [SKIP][446] ([i915#13049] / [i915#14544]) -> [SKIP][447] ([i915#13049])
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-7/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-rkl:          [SKIP][448] ([i915#4103]) -> [SKIP][449] ([i915#14544] / [i915#4103])
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:
    - shard-rkl:          [SKIP][450] ([i915#14544]) -> [SKIP][451] +4 other tests skip
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.html

  * igt@kms_dp_link_training@uhbr-sst:
    - shard-rkl:          [SKIP][452] ([i915#13748] / [i915#14544]) -> [SKIP][453] ([i915#13748])
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-6/igt@kms_dp_link_training@uhbr-sst.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-7/igt@kms_dp_link_training@uhbr-sst.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-rkl:          [SKIP][454] ([i915#13707] / [i915#14544]) -> [SKIP][455] ([i915#13707])
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-6/igt@kms_dp_linktrain_fallback@dp-fallback.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_feature_discovery@psr1:
    - shard-rkl:          [SKIP][456] ([i915#658]) -> [SKIP][457] ([i915#14544] / [i915#658])
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-1/igt@kms_feature_discovery@psr1.html
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_feature_discovery@psr1.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-rkl:          [SKIP][458] ([i915#9934]) -> [SKIP][459] ([i915#14544] / [i915#9934]) +2 other tests skip
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-7/igt@kms_flip@2x-flip-vs-panning.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@2x-wf_vblank-ts-check-interruptible:
    - shard-rkl:          [SKIP][460] ([i915#14544] / [i915#9934]) -> [SKIP][461] ([i915#9934]) +1 other test skip
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-6/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
    - shard-rkl:          [SKIP][462] ([i915#15643]) -> [SKIP][463] ([i915#14544] / [i915#15643]) +1 other test skip
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
    - shard-rkl:          [SKIP][464] ([i915#1825]) -> [SKIP][465] ([i915#14544] / [i915#1825]) +10 other tests skip
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][466] ([i915#15102] / [i915#3458]) -> [SKIP][467] ([i915#10433] / [i915#15102] / [i915#3458]) +3 other tests skip
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu.html
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg1:          [SKIP][468] ([i915#8708]) -> [SKIP][469] ([i915#4423] / [i915#8708])
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-render:
    - shard-rkl:          [SKIP][470] ([i915#15102]) -> [SKIP][471] ([i915#14544] / [i915#15102])
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-render.html
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][472] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][473] ([i915#15102] / [i915#3458]) +3 other tests skip
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-rkl:          [SKIP][474] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][475] ([i915#15102] / [i915#3023]) +2 other tests skip
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][476] ([i915#14544] / [i915#1825]) -> [SKIP][477] ([i915#1825]) +7 other tests skip
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:
    - shard-dg1:          [SKIP][478] -> [SKIP][479] ([i915#4423])
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move.html
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:
    - shard-rkl:          [SKIP][480] ([i915#15102] / [i915#3023]) -> [SKIP][481] ([i915#14544] / [i915#15102] / [i915#3023]) +3 other tests skip
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-rkl:          [SKIP][482] ([i915#1187] / [i915#12713]) -> [SKIP][483] ([i915#12713])
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-3/igt@kms_hdr@brightness-with-hdr.html
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-7/igt@kms_hdr@brightness-with-hdr.html
    - shard-dg1:          [SKIP][484] ([i915#1187] / [i915#12713]) -> [SKIP][485] ([i915#12713])
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-15/igt@kms_hdr@brightness-with-hdr.html
    - shard-tglu:         [SKIP][486] ([i915#12713]) -> [SKIP][487] ([i915#1187] / [i915#12713])
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-tglu-5/igt@kms_hdr@brightness-with-hdr.html
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tglu-2/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-dg1:          [SKIP][488] ([i915#15458] / [i915#4423]) -> [SKIP][489] ([i915#15458])
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg1-18/igt@kms_joiner@basic-force-ultra-joiner.html
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-15/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_joiner@basic-max-non-joiner:
    - shard-rkl:          [SKIP][490] ([i915#13688] / [i915#14544]) -> [SKIP][491] ([i915#13688])
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-6/igt@kms_joiner@basic-max-non-joiner.html
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@kms_joiner@basic-max-non-joiner.html

  * igt@kms_pipe_stress@stress-xrgb8888-yftiled:
    - shard-rkl:          [SKIP][492] ([i915#14712]) -> [SKIP][493] ([i915#14544] / [i915#14712])
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-4/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html

  * igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier:
    - shard-rkl:          [SKIP][494] ([i915#14544] / [i915#15709]) -> [SKIP][495] ([i915#15709]) +1 other test skip
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier.html
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier.html

  * igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping:
    - shard-dg1:          [SKIP][496] ([i915#15709]) -> [SKIP][497] ([i915#15709] / [i915#4423])
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg1-13/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-18/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping:
    - shard-rkl:          [SKIP][498] ([i915#15709]) -> [SKIP][499] ([i915#14544] / [i915#15709])
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-3/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping.html
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping.html

  * igt@kms_plane_multiple@2x-tiling-none:
    - shard-rkl:          [SKIP][500] ([i915#13958]) -> [SKIP][501] ([i915#13958] / [i915#14544])
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-4/igt@kms_plane_multiple@2x-tiling-none.html
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-none.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:
    - shard-rkl:          [SKIP][502] ([i915#15329]) -> [SKIP][503] ([i915#14544] / [i915#15329]) +3 other tests skip
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-rkl:          [SKIP][504] ([i915#5354]) -> [SKIP][505] ([i915#14544] / [i915#5354]) +1 other test skip
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-5/igt@kms_pm_backlight@fade-with-dpms.html
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg1:          [SKIP][506] ([i915#9340]) -> [SKIP][507] ([i915#3828])
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg1-13/igt@kms_pm_lpsp@kms-lpsp.html
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-14/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@system-suspend-idle:
    - shard-rkl:          [INCOMPLETE][508] ([i915#14419]) -> [ABORT][509] ([i915#15132])
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-3/igt@kms_pm_rpm@system-suspend-idle.html
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-1/igt@kms_pm_rpm@system-suspend-idle.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:
    - shard-rkl:          [SKIP][510] ([i915#11520] / [i915#14544]) -> [SKIP][511] ([i915#11520]) +1 other test skip
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-rkl:          [SKIP][512] ([i915#11520]) -> [SKIP][513] ([i915#11520] / [i915#14544])
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-3/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr@psr-cursor-plane-move:
    - shard-rkl:          [SKIP][514] ([i915#1072] / [i915#9732]) -> [SKIP][515] ([i915#1072] / [i915#14544] / [i915#9732]) +7 other tests skip
   [514]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-2/igt@kms_psr@psr-cursor-plane-move.html
   [515]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_psr@psr-cursor-plane-move.html

  * igt@kms_psr@psr2-cursor-mmap-gtt:
    - shard-rkl:          [SKIP][516] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][517] ([i915#1072] / [i915#9732]) +4 other tests skip
   [516]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-6/igt@kms_psr@psr2-cursor-mmap-gtt.html
   [517]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-7/igt@kms_psr@psr2-cursor-mmap-gtt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          [SKIP][518] ([i915#14544] / [i915#9685]) -> [SKIP][519] ([i915#9685])
   [518]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [519]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-dg2:          [SKIP][520] ([i915#12755] / [i915#15867] / [i915#5190]) -> [SKIP][521] ([i915#15867] / [i915#5190])
   [520]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
   [521]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-10/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_vrr@max-min:
    - shard-rkl:          [SKIP][522] ([i915#9906]) -> [SKIP][523] ([i915#14544] / [i915#9906])
   [522]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-3/igt@kms_vrr@max-min.html
   [523]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_vrr@max-min.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-rkl:          [SKIP][524] ([i915#14544] / [i915#2436]) -> [SKIP][525] ([i915#2436])
   [524]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.html
   [525]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@perf@gen8-unprivileged-single-ctx-counters.html

  
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10553]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553
  [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#1187]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187
  [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12177]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12177
  [i915#12276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12276
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
  [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
  [i915#12358]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358
  [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
  [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
  [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
  [i915#12756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756
  [i915#12761]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
  [i915#13026]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026
  [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
  [i915#13196]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13196
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13390]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390
  [i915#13398]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398
  [i915#13409]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409
  [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
  [i915#13520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13520
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688
  [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
  [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
  [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
  [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
  [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152
  [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
  [i915#14419]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419
  [i915#14498]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14586]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14586
  [i915#14600]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600
  [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
  [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
  [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
  [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
  [i915#15106]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15106
  [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
  [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
  [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
  [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
  [i915#15342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342
  [i915#15365]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15365
  [i915#15420]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15420
  [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
  [i915#15459]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459
  [i915#15479]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15479
  [i915#15481]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15481
  [i915#15500]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15500
  [i915#15560]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15560
  [i915#15582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582
  [i915#15638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15638
  [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
  [i915#15709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
  [i915#15722]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15722
  [i915#15725]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15725
  [i915#15733]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733
  [i915#15752]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15752
  [i915#15865]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865
  [i915#15867]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15867
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
  [i915#2435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435
  [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
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
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
  [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7882
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8814]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8814
  [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * IGT: IGT_8855 -> IGTPW_14969
  * Linux: CI_DRM_18330 -> Patchwork_164675v2

  CI-20190529: 20190529
  CI_DRM_18330: b96553291acba156d4f41bc740daa5de58413cd6 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_14969: 68120f30e06d002f4f69835a6976822180d03cc5 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  IGT_8855: 3c05ee1076cee44a2bc3c176ec21e651f6eca600 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_164675v2: b96553291acba156d4f41bc740daa5de58413cd6 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/index.html

--===============8970916986277375679==
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
<tr><td><b>Series:</b></td><td>drm/i915/reset: Expose &quot;display_reset_c=
ount&quot; in debugfs (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/164675/">https://patchwork.freedesktop.org/series/164675/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_164675v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_164675v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18330_full -&gt; Patchwork_164675v=
2_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_164675v2_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_164675v2_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
164675v2_full:</p>
<h3>CI changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>boot:<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_18330/shard-dg2-8/boot.html">PASS</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-8/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-8/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_18330/shard-dg2-8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_18330/shard-dg2-7/boot.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-7/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_183=
30/shard-dg2-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/CI_DRM_18330/shard-dg2-7/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/sha=
rd-dg2-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/CI_DRM_18330/shard-dg2-6/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-5/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2=
-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-dg2-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-5/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-4/boo=
t.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_18330/shard-dg2-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_18330/shard-dg2-4/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-3/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1833=
0/shard-dg2-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_18330/shard-dg2-3/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shard-dg2-1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18330/shar=
d-dg2-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_18330/shard-dg2-1/boot.html">PASS</a>) -&gt; (<a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-5/boot.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
164675v2/shard-dg2-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-4/boot.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg=
2-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_164675v2/shard-dg2-10/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-10/boot.html">=
FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164=
675v2/shard-dg2-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_164675v2/shard-dg2-1/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-8=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_164675v2/shard-dg2-8/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-8/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2=
/shard-dg2-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_164675v2/shard-dg2-1/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-3/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_164675v2/shard-dg2-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-7/boot.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shar=
d-dg2-7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_164675v2/shard-dg2-6/boot.html">PASS</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-3/boot.html=
">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
64675v2/shard-dg2-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-6/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2=
-4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_164675v2/shard-dg2-6/boot.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675=
v2/shard-dg2-5/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_exec_big@single:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@gem_exec_big@single.html">=
FAIL</a></li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@gem_exec_big@single.html"=
>FAIL</a></li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-mtlp-3/igt@gem_exec_big@single.html"=
>FAIL</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-snb6/igt@i915_selftest@mock.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-snb5=
/igt@i915_selftest@mock.html">DMESG-WARN</a> +10 other tests dmesg-warn</li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-tglu-4/igt@i915_selftest@mock.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-tg=
lu-2/igt@i915_selftest@mock.html">DMESG-WARN</a> +10 other tests dmesg-warn=
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@evict:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-dg2-8/igt@i915_selftest@mock@evict.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/sha=
rd-dg2-10/igt@i915_selftest@mock@evict.html">DMESG-WARN</a> +12 other tests=
 dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@gtt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-dg1-14/igt@i915_selftest@mock@gtt.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shar=
d-dg1-15/igt@i915_selftest@mock@gtt.html">DMESG-WARN</a> +10 other tests dm=
esg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@phys:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-mtlp-6/igt@i915_selftest@mock@phys.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/sha=
rd-mtlp-2/igt@i915_selftest@mock@phys.html">DMESG-WARN</a> +10 other tests =
dmesg-warn</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_164675v2_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@api_intel_bb@object-reloc-=
purge-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-8/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@gem_ccs@block-multicopy-i=
nplace.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy-new-ctx:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy-new=
-ctx.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9323">i915#9323</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-18/igt@gem_ccs@ctrl-surf-copy-ne=
w-ctx.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9323">i915#9323</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-8/igt@gem_ccs@ctrl-surf-copy-ne=
w-ctx.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9323">i915#9323</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-mtlp-1/igt@gem_ccs@ctrl-surf-copy-ne=
w-ctx.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@gem_close_race@multigpu-b=
asic-threads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-6/igt@gem_ctx_sseu@invalid-args.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/280">i915#280</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-15/igt@gem_ctx_sseu@invalid-args=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/280">i915#280</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-2/igt@gem_ctx_sseu@invalid-args=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/280">i915#280</a>) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-mtlp-4/igt@gem_ctx_sseu@invalid-args=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@gem_ctx_sseu@invalid-sseu=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/280">i915#280</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@gem_ctx_sseu@mmap-args.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/280">i915#280</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-glk1/igt@gem_eio@in-flight-suspend.h=
tml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13390">i915#13390</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-1/igt@gem_exec_balancer@parallel=
-balancer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-3/igt@gem_exec_balancer@paralle=
l-keep-submit-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-6/igt@gem_exec_flush@basic-wb-rw=
-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/4852">i915#4852</a>) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-17/igt@gem_exec_flush@basic-wb-r=
w-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-8/igt@gem_exec_params@secure-non=
-master.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-noreloc:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-mtlp-1/igt@gem_exec_reloc@basic-gtt-=
cpu-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-6/igt@gem_exec_reloc@basic-wc-cp=
u.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3281">i915#3281</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt-noreloc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-17/igt@gem_exec_reloc@basic-wc-g=
tt-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@gem_exec_reloc@basic-write=
-read-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3281">i915#3281</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-glk11/igt@gem_exec_suspend@basic-s3.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13196">i915#13196</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) +1 other test incomple=
te</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@gem_exec_suspend@basic-s3.=
html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13356">i915#13356</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-write-verify-threaded-none:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-14/igt@gem_fence_thrash@bo-write=
-verify-threaded-none.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/4860">i915#4860</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-mtlp-8/igt@gem_fence_thrash@bo-write=
-verify-threaded-none.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-8/igt@gem_fenced_exec_thrash@no-=
spare-fences-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-glk4/igt@gem_huc_copy@huc-copy.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@gem_lmem_evict@dontneed-ev=
ict-race.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4613">i915#4613</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/7582">i915#7582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive-random:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-7/igt@gem_lmem_swapping@massive-=
random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-mtlp-5/igt@gem_lmem_swapping@massive=
-random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-2/igt@gem_lmem_swapping@paralle=
l-random-verify-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@gem_lmem_swapping@random.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-glk6/igt@gem_lmem_swapping@verify-cc=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/4613">i915#4613</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-6/igt@gem_media_vme.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284"=
>i915#284</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-7/igt@gem_media_vme.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284"=
>i915#284</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-15/igt@gem_media_vme.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284=
">i915#284</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-2/igt@gem_media_vme.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284=
">i915#284</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-mtlp-4/igt@gem_media_vme.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284=
">i915#284</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-copy-odd:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-18/igt@gem_mmap_gtt@basic-small-=
copy-odd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-3/igt@gem_mmap_gtt@cpuset-big-co=
py.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/4077">i915#4077</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@medium-copy:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-mtlp-1/igt@gem_mmap_gtt@medium-copy.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-6/igt@gem_partial_pwrite_pread@w=
rites-after-reads-snoop.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +3 other tests skip</l=
i>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-17/igt@gem_partial_pwrite_pread@=
writes-after-reads-snoop.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +3 other tests skip</=
li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-mtlp-5/igt@gem_partial_pwrite_pread@=
writes-after-reads-snoop.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +3 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@gem_partial_pwrite_pread@w=
rites-after-reads-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +4 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-glk5/igt@gem_pread@exhaustion.html">=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/2658">i915#2658</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-6/igt@gem_pread@exhaustion.html=
">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/2658">i915#2658</a>) +1 other test warn</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-snb1/igt@gem_pwrite@basic-exhaustion=
.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@dmabuf-shared-protected-dst-is-context-refcounted:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-7/igt@gem_pxp@dmabuf-shared-prot=
ected-dst-is-context-refcounted.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-context:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@gem_pxp@hw-rejects-pxp-con=
text.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13717">i915#13717</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@gem_pxp@hw-rejects-pxp-co=
ntext.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13398">i915#13398</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@reject-modify-context-protection-off-3:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-4/igt@gem_pxp@reject-modify-context-protection-off-=
3.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_164675v2/shard-rkl-3/igt@gem_pxp@reject-modify-context-protection=
-off-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-1/igt@gem_pxp@verify-pxp-key-cha=
nge-after-suspend-resume.html">ABORT</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/15131">i915#15131</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-y-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-mtlp-8/igt@gem_render_copy@x-tiled-t=
o-vebox-y-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/8428">i915#8428</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-to-vebox-linear:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-6/igt@gem_render_copy@yf-tiled-t=
o-vebox-linear.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/5190">i915#5190</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +2 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-16/igt@gem_set_tiling_vs_pwrite.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-5/igt@gem_tiled_pread_pwrite.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/4079">i915#4079</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@gem_userptr_blits@create-=
destroy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@forbidden-operations:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@gem_userptr_blits@forbidde=
n-operations.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3282">i915#3282</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-8/igt@gem_userptr_blits@map-fixe=
d-invalidate-overlap-busy.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-7/igt@gem_userptr_blits@unsync-=
overlap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-glk6/igt@gem_workarounds@suspend-resume.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v=
2/shard-glk2/igt@gem_workarounds@suspend-resume.html">INCOMPLETE</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#1=
3356</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14586">i915#14586</a>)</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledx_blits:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-glk10/igt@gen3_render_tiledx_blits.h=
tml">SKIP</a> +140 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@batch-without-end:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@gen7_exec_parse@batch-with=
out-end.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@gen9_exec_parse@allowed-s=
ingle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-3/igt@gen9_exec_parse@batch-zer=
o-length.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-mtlp-4/igt@gen9_exec_parse@batch-zer=
o-length.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@gen9_exec_parse@shadow-pee=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/2527">i915#2527</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-4/igt@gen9_exec_parse@valid-regi=
sters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/2856">i915#2856</a>) +2 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-16/igt@gen9_exec_parse@valid-reg=
isters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@fault-injection@__uc_init:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@i915_module_load@fault-in=
jection@__uc_init.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/15479">i915#15479</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@fault-injection@i915_driver_mmio_probe:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-16/igt@i915_module_load@fault-in=
jection@i915_driver_mmio_probe.html">INCOMPLETE</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/15481">i915#15481</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@fault-injection@intel_connector_register:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@i915_module_load@fault-in=
jection@intel_connector_register.html">ABORT</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/15342">i915#15342</a>) +1 other t=
est abort</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@i915_module_load@resize-ba=
r.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/6412">i915#6412</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-2/igt@i915_module_load@resize-b=
ar.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/6412">i915#6412</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-10/igt@i915_pm_rc6_residency@rc=
6-idle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14498">i915#14498</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@i915_pm_rc6_residency@rc6-=
idle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14498">i915#14498</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-5/igt@i915_pm_rpm@system-suspend.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/s=
hard-rkl-6/igt@i915_pm_rpm@system-suspend.html">INCOMPLETE</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</=
a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-mtlp-4/igt@i915_pm_rps@reset.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtl=
p-1/igt@i915_pm_rps@reset.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/15365">i915#15365</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds-park:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-7/igt@i915_pm_rps@thresholds-par=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/11681">i915#11681</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-19/igt@i915_pm_rps@thresholds-pa=
rk.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/11681">i915#11681</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-mtlp-1/igt@i915_pm_rps@thresholds-pa=
rk.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@debugfs-reader:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-3/igt@i915_suspend@debugfs-reader.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/=
shard-rkl-3/igt@i915_suspend@debugfs-reader.html">INCOMPLETE</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817=
</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@kms_addfb_basic@invalid-sm=
em-bo-on-discrete.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/12454">i915#12454</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/12712">i915#12712</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-8/igt@kms_addfb_basic@invalid-s=
mem-bo-on-discrete.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/12454">i915#12454</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/12712">i915#12712</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-mtlp-8/igt@kms_addfb_basic@invalid-s=
mem-bo-on-discrete.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/12454">i915#12454</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/12712">i915#12712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_async_flips@async-flip=
-suspend-resume.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/12761">i915#12761</a>) +1 other test incomple=
te</li>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-glk6/igt@kms_async_flips@async-flip-=
suspend-resume.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/12761">i915#12761</a>) +1 other test incomplet=
e</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-dg1-15/igt@kms_async_flips@crc.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-d=
g1-17/igt@kms_async_flips@crc.html">DMESG-WARN</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) +4 other t=
ests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-glk2/igt@kms_atomic_transition@plane=
-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a>=
)</li>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-mtlp-8/igt@kms_atomic_transition@plane-all-modeset-tran=
sition-fencing-internal-panels.html">PASS</a> -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-mtlp-5/igt@kms_atomic=
_transition@plane-all-modeset-transition-fencing-internal-panels.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/59=
56">i915#5956</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-dg2-5/igt@kms_atomic_transition@plane-all-modeset-trans=
ition@pipe-a-hdmi-a-3.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-3/igt@kms_atomic_transitio=
n@plane-all-modeset-transition@pipe-a-hdmi-a-3.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>)=
 +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-4/igt@kms_big_fb@4-tiled-32bpp-=
rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/5286">i915#5286</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_big_fb@4-tiled-64bpp-=
rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-mtlp-8/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
164675v2/shard-mtlp-1/igt@kms_big_fb@4-tiled-64bpp-rotate-180.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733=
">i915#15733</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-12/igt@kms_big_fb@4-tiled-8bpp-r=
otate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@kms_big_fb@4-tiled-addfb.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/5286">i915#5286</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@kms_big_fb@linear-64bpp-ro=
tate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3638">i915#3638</a>) +6 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-18/igt@kms_big_fb@linear-64bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-5/igt@kms_big_fb@linear-max-hw-s=
tride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-18/igt@kms_big_fb@yf-tiled-64bpp=
-rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/4538">i915#4538</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-5/igt@kms_big_fb@yf-tiled-8bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4538">i915#4538</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-glk11/igt@kms_ccs@bad-aux-stride-4-t=
iled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> +50 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-5/igt@kms_ccs@bad-pixel-format-y=
-tiled-gen12-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +85 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_ccs@bad-rotation-90-4=
-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-2/igt@kms_ccs@ccs-on-another-bo=
-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +39 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@kms_ccs@crc-primary-basic-=
4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-8/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1:=
</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_ccs@crc-primary-rotat=
ion-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +34=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +71 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-1/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-glk9/igt@kms_ccs@crc-primary-suspend=
-y-tiled-ccs.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/15582">i915#15582</a>) +1 other test incomplete<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@kms_ccs@crc-primary-suspen=
d-yf-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +45 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-14/igt@kms_ccs@crc-primary-suspe=
nd-yf-tiled-ccs@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +210 other tes=
ts skip</li>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-glk11/igt@kms_ccs@crc-primary-suspen=
d-yf-tiled-ccs@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/15582">i915#15582</a>) +1 othe=
r test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-3:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-7/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-3.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +61 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i=
915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-=
2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i=
915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-4/igt@kms_ccs@crc-sprite-planes-=
basic-yf-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#104=
34</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6095">i915#6095</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-mtlp-6/igt@kms_ccs@random-ccs-data-4=
-tiled-dg2-rc-ccs-cc@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +29 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-glk3/igt@kms_ccs@random-ccs-data-y-t=
iled-gen12-rc-ccs@pipe-a-hdmi-a-1.html">SKIP</a> +387 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-8/igt@kms_cdclk@mode-transition.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-4/igt@kms_cdclk@mode-transition@=
pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/13781">i915#13781</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_audio@hdmi-audio-edid:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_chamelium_audio@hdmi-=
audio-edid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-single:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-4/igt@kms_chamelium_frames@dp-cr=
c-single.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-aspect-ratio:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-8/igt@kms_chamelium_frames@hdmi=
-aspect-ratio.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-frame-dump:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@kms_chamelium_frames@hdmi-=
frame-dump.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +5 other tests skip=
</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-18/igt@kms_chamelium_frames@hdmi=
-frame-dump.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-mtlp-3/igt@kms_chamelium_frames@hdmi=
-frame-dump.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-hdcp14:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-6/igt@kms_content_protection@at=
omic-hdcp14.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/15865">i915#15865</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-10/igt@kms_content_protection@at=
omic@pipe-a-dp-3.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@kms_content_protection@dp-=
mst-lic-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/15330">i915#15330</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0-hdcp14:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-6/igt@kms_content_protection@dp-=
mst-type-0-hdcp14.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-5/igt@kms_content_protection@mei=
-interface.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/15865">i915#15865</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-7/igt@kms_content_protection@sus=
pend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/15865">i915#15865</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-19/igt@kms_content_protection@su=
spend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/15865">i915#15865</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-mtlp-1/igt@kms_content_protection@su=
spend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/15865">i915#15865</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_content_protection@ty=
pe1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15865">i915#15865</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-10/igt@kms_cursor_crc@cursor-off=
screen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/13049">i915#13049</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-256x85@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-7/igt@kms_cursor_crc@cursor-onsc=
reen-256x85@pipe-a-hdmi-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +2 other tests f=
ail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@kms_cursor_crc@cursor-onsc=
reen-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-14/igt@kms_cursor_crc@cursor-ons=
creen-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-8/igt@kms_cursor_crc@cursor-ons=
creen-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-mtlp-8/igt@kms_cursor_crc@cursor-ons=
creen-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/8814">i915#8814</a>) +1 other test skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-128x42@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_cursor_crc@cursor-ran=
dom-128x42@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fai=
l</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-8/igt@kms_cursor_crc@cursor-ran=
dom-256x85@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fai=
l</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-max-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-4/igt@kms_cursor_crc@cursor-rand=
om-max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-tglu-7/igt@kms_cursor_crc@cursor-sliding-128x42@pipe-a-=
hdmi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_164675v2/shard-tglu-4/igt@kms_cursor_crc@cursor-sliding-12=
8x42@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-3/igt@kms_cursor_crc@cursor-sli=
ding-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-glk1/igt@kms_cursor_crc@cursor-suspe=
nd.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/12358">i915#12358</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14152">i915#14152</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/7882">i915#7882</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-glk1/igt@kms_cursor_crc@cursor-suspe=
nd@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/12358">i915#12358</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152">i915#14152</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@kms_cursor_legacy@2x-flip-=
vs-cursor-legacy.html">SKIP</a> +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-8/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-legacy.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-1/igt@kms_cursor_legacy@cursorb-=
vs-flipb-legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/13046">i915#13046</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@kms_cursor_legacy@modeset-=
atomic-cursor-hotspot.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-3/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-atomic-transitions.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@kms_display_modes@extended=
-mode-basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/13691">i915#13691</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-10/igt@kms_dither@fb-8bpc-vs-pa=
nel-6bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/1769">i915#1769</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-10/igt@kms_dither@fb-8bpc-vs-pa=
nel-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-mst:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_dp_link_training@uhbr=
-mst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13748">i915#13748</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_dsc@dsc-fractional-bp=
p.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-mtlp-3/igt@kms_dsc@dsc-with-formats.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3840">i915#3840</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-5/igt@kms_dsc@dsc-with-formats.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3840">i915#3840</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_dsc@dsc-with-formats.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3840">i915#3840</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-13/igt@kms_dsc@dsc-with-formats.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-1/igt@kms_feature_discovery@cham=
elium.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-8/igt@kms_feature_discovery@disp=
lay-2x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-7/igt@kms_flip@2x-dpms-vs-vblank=
-race.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9934">i915#9934</a>) +4 other tests skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-18/igt@kms_flip@2x-dpms-vs-vblan=
k-race.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-mtlp-1/igt@kms_flip@2x-dpms-vs-vblan=
k-race.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms-o=
n-nop-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank@ac-hdmi-a1-=
hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_164675v2/shard-glk8/igt@kms_flip@2x-flip-vs-expired-vblank@=
ac-hdmi-a1-hdmi-a2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/13027">i915#13027</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-2/igt@kms_flip@2x-flip-vs-panni=
ng-vs-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +6 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-glk10/igt@kms_flip@2x-flip-vs-suspen=
d-interruptible.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-glk10/igt@kms_flip@2x-flip-vs-suspen=
d-interruptible@ac-hdmi-a1-hdmi-a2.html">INCOMPLETE</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_flip@2x-plain-flip.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-5/igt@kms_flip@2x-wf_vblank-ts-c=
heck.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9934">i915#9934</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-snb6/igt@kms_flip@flip-vs-blocking-wf-vblank.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16=
4675v2/shard-snb1/igt@kms_flip@flip-vs-blocking-wf-vblank.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600">i9=
15#14600</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-tglu-4/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a=
1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_164675v2/shard-tglu-2/igt@kms_flip@flip-vs-blocking-wf-vblank@a-h=
dmi-a1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/10826">i915#10826</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downsc=
aling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-4/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/519=
0">i915#5190</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
32bpp-ytileccs-to-64bpp-ytile-upscaling.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-8/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +1 oth=
er test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-8/igt@kms_frontbuffer_tracking@f=
bc-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +11 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-cur-indfb-draw-render.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +29 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-13/igt@kms_frontbuffer_tracking@=
fbc-rgb565-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +7 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#151=
02</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3023">i915#3023</a>) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +6 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-3/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-offscreen-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +1 =
other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-offscreen-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i91=
5#15102</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-17/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-offscreen-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-wc:=
</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-snb6/igt@kms_frontbuffer_tracking@fb=
cpsr-1p-offscreen-pri-shrfb-draw-mmap-wc.html">SKIP</a> +65 other tests ski=
p</li>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-7/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-offscreen-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104">i915#15104</a>) +1=
 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-18/igt@kms_frontbuffer_tracking@=
fbcpsr-1p-primscrn-cur-indfb-onoff.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-12/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> +3 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915=
#1825</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-6/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +9 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-mtlp-4/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +4 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-10/igt@kms_frontbuffer_tracking=
@fbcpsr-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +14 other te=
sts skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-mtlp-4/igt@kms_frontbuffer_tracking@=
fbcpsr-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +2 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-4/igt@kms_frontbuffer_tracking@=
fbcpsr-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt:</=
p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-19/igt@kms_frontbuffer_tracking@=
psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104">i915#15104</a>) +1 =
other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-mtlp-1/igt@kms_frontbuffer_tracking@=
psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104">i915#15104</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@kms_frontbuffer_tracking@p=
sr-1p-offscreen-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +2 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-5/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3=
023</a>) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-1/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3=
458</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-9/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-pri-shrfb-draw-render.html">SKIP</a> +37 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-spr-indfb-draw-pwrite.html">SKIP</a> +20 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-mtlp-6/igt@kms_hdmi_inject@inject-audio.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v=
2/shard-mtlp-1/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15725">i915#15725</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-4/igt@kms_hdr@bpc-switch-suspen=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-9/igt@kms_joiner@basic-force-ul=
tra-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/15458">i915#15458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-max-non-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-3/igt@kms_joiner@basic-max-non-j=
oiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13688">i915#13688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-8/igt@kms_joiner@invalid-modeset=
-force-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/15459">i915#15459</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@kms_joiner@switch-modeset-=
ultra-joiner-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/15638">i915#15638</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/15722">i915#15722</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-5/igt@kms_panel_fitting@atomic-f=
astset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-double-modeset-then-modeset-pipe-c:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-mtlp-3/igt@kms_pipe_b_c_ivb@pipe-b-d=
ouble-modeset-then-modeset-pipe-c.html">SKIP</a> +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-glk9/igt@kms_pipe_crc_basic@suspend-=
read-crc.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12756">i915#12756</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/13409">i915#13409</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476">i915#13476</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-glk9/igt@kms_pipe_crc_basic@suspend-=
read-crc@pipe-b-hdmi-a-2.html">INCOMPLETE</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/13409">i915#13409</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476">i915#13476</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping:<=
/p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_plane@pixel-format-4-=
tiled-dg2-mc-ccs-modifier-source-clamping.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +1=
 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-6/igt@kms_plane@pixel-format-4-=
tiled-mtl-rc-ccs-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-4/igt@kms_plane@pixel-format-y-t=
iled-gen12-mc-ccs-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +2 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-yf-tiled-ccs-modifier:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-8/igt@kms_plane@pixel-format-yf-=
tiled-ccs-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/15709">i915#15709</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-glk9/igt@kms_plane@plane-panning-bottom-right-suspend@p=
ipe-a.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_164675v2/shard-glk3/igt@kms_plane@plane-panning-bottom-right-=
suspend@pipe-a.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/13026">i915#13026</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-glk2/igt@kms_plane_alpha_blend@alpha=
-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/10647">i915#10647</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/12177">i915#12177</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-glk2/igt@kms_plane_alpha_blend@alpha=
-transparent-fb@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/10647">i915#10647</a>) +1 other tes=
t fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-7/igt@kms_plane_multiple@2x-tili=
ng-x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-y:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-4/igt@kms_plane_multiple@2x-til=
ing-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-4:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-7/igt@kms_plane_multiple@tiling=
-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-4/igt@kms_pm_backlight@brightnes=
s-with-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/12343">i915#12343</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-2/igt@kms_pm_backlight@fade.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9812">i915#9812</a>) +1 other test skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-7/igt@kms_pm_backlight@fade.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/5354">i915#5354</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-15/igt@kms_pm_backlight@fade.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_pm_backlight@fade-wit=
h-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@kms_pm_dc@dc5-retention-fl=
ops.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-2/igt@kms_pm_dc@dc6-dpms.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/15752">i915#15752</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_pm_rpm@dpms-mode-unse=
t-non-lpsp.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-dg1-13/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_164675v2/shard-dg1-15/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/15073">i915#15073</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-glk10/igt@kms_pm_rpm@system-suspend-=
modeset.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/10553">i915#10553</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay=
-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-glk8/igt@kms_psr2_sf@fbc-pr-plane-mo=
ve-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/11520">i915#11520</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-5/igt@kms_psr2_sf@fbc-psr2-curso=
r-plane-move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tests sk=
ip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-curs=
or-plane-move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests s=
kip</li>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-glk10/igt@kms_psr2_sf@fbc-psr2-curso=
r-plane-move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@kms_psr2_sf@fbc-psr2-overl=
ay-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +7 other =
tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-a-edp-1:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-mtlp-7/igt@kms_psr2_sf@fbc-psr2-over=
lay-plane-move-continuous-sf@pipe-a-edp-1.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808">i915#9808</a>) +1 o=
ther test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf@pipe-b-edp-1:<=
/p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-mtlp-7/igt@kms_psr2_sf@fbc-psr2-over=
lay-plane-move-continuous-sf@pipe-b-edp-1.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316">i915#12316</a>) +3=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-snb4/igt@kms_psr2_sf@fbc-psr2-overla=
y-primary-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests =
skip</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-19/igt@kms_psr2_sf@fbc-psr2-over=
lay-primary-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-6/igt@kms_psr2_sf@pr-overlay-pl=
ane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +5 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-glk11/igt@kms_psr2_sf@psr2-overlay-p=
lane-move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@kms_psr@fbc-psr2-sprite-re=
nder.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9732">i915#9732</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-plane-onoff:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-18/igt@kms_psr@pr-cursor-plane-o=
noff.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9732">i915#9732</a>) +6 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-mtlp-1/igt@kms_psr@pr-cursor-plane-o=
noff.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9688">i915#9688</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-8/igt@kms_psr@psr-basic.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/9732">i915#9732</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-6/igt@kms_psr@psr-cursor-mmap-cp=
u.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/9732">i915#9732</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-plane-move:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-1/igt@kms_psr@psr-cursor-plane-=
move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9732">i915#9732</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-no-drrs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_psr@psr-no-drrs.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-5/igt@kms_psr_stress_test@flip-p=
rimary-invalidate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-glk5/igt@kms_rotation_crc@multiplane=
-rotation-cropping-bottom.html">INCOMPLETE</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/15500">i915#15500</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-8/igt@kms_rotation_crc@primary-y=
-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-5/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-5/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-3/igt@kms_rotation_crc@sprite-ro=
tation-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/12755">i915#12755</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/15867">i915#15867</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-glk9/igt@kms_selftest@drm_framebuffe=
r.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/13179">i915#13179</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer@drm_test_framebuffer_free:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-6/igt@kms_selftest@drm_framebuff=
er@drm_test_framebuffer_free.html">ABORT</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/13179">i915#13179</a>) +1 other test =
abort</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-mtlp-5/igt@kms_setmode@basic@pipe-b-edp-1.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16467=
5v2/shard-mtlp-4/igt@kms_setmode@basic@pipe-b-edp-1.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15106">i915#151=
06</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-6/igt@kms_tiled_display@basic-te=
st-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-8/igt@kms_vrr@flip-basic-fastse=
t.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@lobf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-8/igt@kms_vrr@lobf.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920=
">i915#11920</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@kms_vrr@lobf.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920=
">i915#11920</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-12/igt@kms_vrr@lobf.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1192=
0">i915#11920</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-tglu-5/igt@kms_vrr@lobf.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1192=
0">i915#11920</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-mtlp-7/igt@kms_vrr@lobf.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1192=
0">i915#11920</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@perf@per-context-mode-unpr=
ivileged.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/2435">i915#2435</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg1-18/igt@perf@per-context-mode-unp=
rivileged.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/2433">i915#2433</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-2/igt@perf_pmu@rc6-suspend.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-r=
kl-6/igt@perf_pmu@rc6-suspend.html">INCOMPLETE</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/13520">i915#13520</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-dg2-4/igt@prime_vgem@basic-write.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-flip-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-5/igt@prime_vgem@fence-flip-hang=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164675v2/shard-rkl-5/igt@sriov_basic@enable-vfs-aut=
oprobe-on.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-dg2-1/igt@gem_ccs@suspend-resume.html">INCOMPLETE</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i=
915#13356</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_164675v2/shard-dg2-4/igt@gem_ccs@suspend-resume.html">PASS</a> +1 o=
ther test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-accuracy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-dg2-4/igt@i915_pm_rc6_residency@rc6-accuracy.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
964">i915#12964</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_164675v2/shard-dg2-1/igt@i915_pm_rc6_residency@rc6-accuracy.h=
tml">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-4/igt@i915_pm_rpm@system-suspend-execbuf.html">INCO=
MPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/13356">i915#13356</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@i915_pm_rpm@system-suspend-exe=
cbuf.html">PASS</a></li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-dg1-18/igt@i915_pm_rpm@system-suspend-execbuf.html">DME=
SG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/4423">i915#4423</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_164675v2/shard-dg1-14/igt@i915_pm_rpm@system-suspend-exe=
cbuf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-mtlp-3/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915=
#12061</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/15560">i915#15560</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_164675v2/shard-mtlp-8/igt@i915_selftest@live.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-mtlp-3/igt@i915_selftest@live@workarounds.html">DMESG-F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/12061">i915#12061</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_164675v2/shard-mtlp-8/igt@i915_selftest@live@workarounds.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-256x85:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-tglu-4/igt@kms_cursor_crc@cursor-sliding-256x85.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/13566">i915#13566</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_164675v2/shard-tglu-5/igt@kms_cursor_crc@cursor-sliding-25=
6x85.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-dg2-8/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228=
">i915#8228</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_164675v2/shard-dg2-10/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-8/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
5073">i915#15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_164675v2/shard-rkl-3/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp=
.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-dg1-18/igt@kms_pm_rpm@modeset-lpsp-stress-no-wait.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/15073">i915#15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_164675v2/shard-dg1-15/igt@kms_pm_rpm@modeset-lpsp-stress=
-no-wait.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-6/igt@kms_vblank@ts-continuation-dpms-suspend.html"=
>INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/12276">i915#12276</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_164675v2/shard-rkl-5/igt@kms_vblank@ts-continuatio=
n-dpms-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-dg2-1/igt@kms_vrr@negative-basic.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#355=
5</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
9906">i915#9906</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_164675v2/shard-dg2-10/igt@kms_vrr@negative-basic.html">PASS</=
a></li>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-mtlp-2/igt@kms_vrr@negative-basic.html">FAIL</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15420">i915#1=
5420</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_164675v2/shard-mtlp-2/igt@kms_vrr@negative-basic.html">PASS</a> +1 other=
 test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-3/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555"=
>i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9323">i915#9323</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@gem_ccs@block-multicopy-inp=
lace.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-4/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#2=
80</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_164675v2/shard-rkl-6/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-7/igt@gem_exec_balancer@parallel-bb-first.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4=
525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_164675v2/shard-rkl-6/igt@gem_exec_balancer@parallel-bb-first.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i=
915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3281">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-cpu=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-active:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-7/igt@gem_exec_reloc@basic-write-read-active.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/3281">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_164675v2/shard-rkl-6/igt@gem_exec_reloc@basic-write-read-ac=
tive.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-7/igt@gem_lmem_swapping@heavy-random.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">=
i915#4613</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_164675v2/shard-rkl-6/igt@gem_lmem_swapping@heavy-random.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@massive:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-6/igt@gem_lmem_swapping@massive.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915=
#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/4613">i915#4613</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_164675v2/shard-rkl-5/igt@gem_lmem_swapping@massive.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-4/igt@gem_partial_pwrite_pread@writes-after-reads.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3282">i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@gem_partial_pwrite_pread@writ=
es-after-reads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test s=
kip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@uncached:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-6/igt@gem_pread@uncached.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/32=
82">i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_164675v2/shard-rkl-3/igt@gem_pread@uncached.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#=
3282</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@fault-injection:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-dg1-16/igt@i915_module_load@fault-injection.html">ABORT=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16=
4675v2/shard-dg1-16/igt@i915_module_load@fault-injection.html">ABORT</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15481">i9=
15#15481</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-6/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#=
14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/4387">i915#4387</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_164675v2/shard-rkl-2/igt@i915_pm_sseu@full-enable.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-2/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/52=
86">i915#5286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_164675v2/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-90.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-dg1-19/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#=
5286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_164675v2/shard-dg1-18/igt@kms_big_fb@4-tiled-addfb.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#44=
23</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate=
-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@kms=
_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-5/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html">SKI=
P</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
64675v2/shard-rkl-6/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc=
@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_ccs@bad=
-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6095">i915#6095</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-3/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-=
cc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_ccs@c=
cs-on-another-bo-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#=
14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/6095">i915#6095</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/12805">i915#12805</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-5/igt@kms_ccs@crc=
-primary-suspend-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/12805">i915#12805</a>) +1 other te=
st skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-m=
c-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-=
rkl-8/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098"=
>i915#14098</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/6095">i915#6095</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc=
@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-4=
/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-6/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-4=
/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#111=
51</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-2/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_chamelium_hpd=
@vga-hpd-for-each-pipe.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7=
828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-dg2-3/igt@kms_content_protection@atomic.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">=
i915#15865</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_164675v2/shard-dg2-10/igt@kms_content_protection@atomic.html">FAIL=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/71=
73">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-1/igt@kms_content_protection@atomic-dpms.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15=
865">i915#15865</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_164675v2/shard-rkl-6/igt@kms_content_protection@atomic-dpms.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/15865">i915#15865</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0-hdcp14:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0-hdcp14.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/15330">i915#15330</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-7/igt@kms_content=
_protection@dp-mst-type-0-hdcp14.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0-hdcp14:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-6/igt@kms_content_protection@lic-type-0-hdcp14.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/15865">i915#15865</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-7/igt@kms_content_pr=
otection@lic-type-0-hdcp14.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x32:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-6/igt@kms_cursor_crc@cursor-random-32x32.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-5/igt@kms_cursor_crc@cursor-=
random-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-3/igt@kms_cursor_crc@cursor-rapid-movement-32x32.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-mo=
vement-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-512x512.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/13049">i915#13049</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-7/igt@kms_cursor=
_crc@cursor-rapid-movement-512x512.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-curs=
or-atomic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_cursor_legacy@=
basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#410=
3</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipb-legacy.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_164675v2/shard-rkl-2/igt@kms_cursor_legacy@cursorb-vs-=
flipb-legacy.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-sst:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-6/igt@kms_dp_link_training@uhbr-sst.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">=
i915#13748</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_164675v2/shard-rkl-7/igt@kms_dp_link_training@uhbr=
-sst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13748">i915#13748</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-6/igt@kms_dp_linktrain_fallback@dp-fallback.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/13707">i915#13707</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@kms_dp_linktrain_=
fallback@dp-fallback.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/13707">i915#13707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-1/igt@kms_feature_discovery@psr1.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#=
658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_164675v2/shard-rkl-6/igt@kms_feature_discovery@psr1.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#1=
4544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-7/igt@kms_flip@2x-flip-vs-panning.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i91=
5#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_164675v2/shard-rkl-6/igt@kms_flip@2x-flip-vs-panning.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-wf_vblank-ts-check-interruptible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-6/igt@kms_flip@2x-wf_vblank-ts-check-interruptible.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@kms_flip@2x-=
wf_vblank-ts-check-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bp=
p-yftile-upscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_fli=
p_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/15643">i915#15643</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-=
indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_frontbuff=
er_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825=
">i915#1825</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-p=
ri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard=
-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-=
cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/10433">i915#10433</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) +3 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-=
pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-13/igt@kms=
_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/44=
23">i915#4423</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-render:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri=
-shrfb-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_fro=
ntbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-render.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/15102">i915#15102</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-=
indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/10433">i915#10433</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/s=
hard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3458">i915#3458</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-=
indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
64675v2/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-=
draw-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +2 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-=
indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl=
-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-spr-indfb-draw-mmap-wc.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/1825">i915#1825</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur=
-indfb-move.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_164675v2/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-cur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-m=
map-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_=
frontbuffer_tracking@psr-rgb101010-draw-mmap-cpu.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15=
102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3023">i915#3023</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-3/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187">i91=
5#1187</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/12713">i915#12713</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_164675v2/shard-rkl-7/igt@kms_hdr@brightness-with-hdr.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/12713">i915#12713</a>)</li>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-dg1-13/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187">i9=
15#1187</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/12713">i915#12713</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_164675v2/shard-dg1-15/igt@kms_hdr@brightness-with-hdr=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/12713">i915#12713</a>)</li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-tglu-5/igt@kms_hdr@brightness-with-hdr.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713">i=
915#12713</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_164675v2/shard-tglu-2/igt@kms_hdr@brightness-with-hdr.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1187"=
>i915#1187</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-dg1-18/igt@kms_joiner@basic-force-ultra-joiner.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
15458">i915#15458</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/4423">i915#4423</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-15/igt@kms_joiner@basic-fo=
rce-ultra-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/15458">i915#15458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-max-non-joiner:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-6/igt@kms_joiner@basic-max-non-joiner.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688=
">i915#13688</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@kms_joiner@basic-max-no=
n-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/13688">i915#13688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_stress@stress-xrgb8888-yftiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-4/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14712">i915#14712</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_pipe_stress@stress-xrgb8888=
-yftiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14712">i915#14712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifi=
er.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/15709">i915#15709</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-4/igt@kms_pla=
ne@pixel-format-4-tiled-bmg-ccs-modifier.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +1 =
other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-dg1-13/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modif=
ier-source-clamping.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/15709">i915#15709</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg1-18/igt@kms_p=
lane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i=
915#15709</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-3/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-mod=
ifier-source-clamping.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_=
plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-none:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-4/igt@kms_plane_multiple@2x-tiling-none.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/139=
58">i915#13958</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_164675v2/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-none.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/13958">i915#13958</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:</=
p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-4/igt@kms_plane_scaling@plane-scaler-unity-scaling-=
with-rotation@pipe-b.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/15329">i915#15329</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_p=
lane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15329">i915#15329</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-5/igt@kms_pm_backlight@fade-with-dpms.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354"=
>i915#5354</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_164675v2/shard-rkl-6/igt@kms_pm_backlight@fade-with-dpms.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-dg1-13/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
64675v2/shard-dg1-14/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-idle:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-3/igt@kms_pm_rpm@system-suspend-idle.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14419">i915#14419</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_164675v2/shard-rkl-1/igt@kms_pm_rpm@system-suspend-idle.htm=
l">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/15132">i915#15132</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/11520">i915#11520</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@kms_psr2_sf=
@fbc-psr2-cursor-plane-update-sf.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other te=
st skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-3/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-e=
xceed-fully-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_psr2_sf=
@pr-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-plane-move:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-2/igt@kms_psr@psr-cursor-plane-move.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i=
915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_164675v2/shard-rkl-6/igt@kms_psr@psr-cursor-plane-move=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +7 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-6/igt@kms_psr@psr2-cursor-mmap-gtt.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i9=
15#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-7/igt@kms_psr@psr2-c=
ursor-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/9685">i915#9685</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-5/igt@kms_p=
sr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-dg2-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-9=
0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/12755">i915#12755</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/15867">i915#15867</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-dg2-=
10/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15867">i915#1=
5867</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-3/igt@kms_vrr@max-min.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164675v=
2/shard-rkl-6/igt@kms_vrr@max-min.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906=
</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18330/shard-rkl-6/igt@perf@gen8-unprivileged-single-ctx-counters.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/2436">i915#2436</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_164675v2/shard-rkl-3/igt@perf@gen8-unpr=
ivileged-single-ctx-counters.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/2436">i915#2436</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_8855 -&gt; IGTPW_14969</li>
<li>Linux: CI_DRM_18330 -&gt; Patchwork_164675v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18330: b96553291acba156d4f41bc740daa5de58413cd6 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGTPW_14969: 68120f30e06d002f4f69835a6976822180d03cc5 @ https://gitlab.fr=
eedesktop.org/drm/igt-gpu-tools.git<br />
  IGT_8855: 3c05ee1076cee44a2bc3c176ec21e651f6eca600 @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_164675v2: b96553291acba156d4f41bc740daa5de58413cd6 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============8970916986277375679==--
