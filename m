Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id m4v5KwTlQmrDHAoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 23:35:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D5E6DEE14
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 23:34:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB41910EA62;
	Mon, 29 Jun 2026 21:34:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6beec6c84f66 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C208410E12F;
 Mon, 29 Jun 2026 21:34:56 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6457836666158166152=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_Vswing_/_Pre-emphasis_Ov?=
 =?utf-8?q?erride_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Micha=C5=82_Grzelak?= <michal.grzelak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jun 2026 21:34:56 -0000
Message-ID: <178276889677.130542.15950775935463947247@6beec6c84f66>
X-Patchwork-Hint: ignore
References: <20260626234246.2446451-1-michal.grzelak@intel.com>
In-Reply-To: <20260626234246.2446451-1-michal.grzelak@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[emeril.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[01.org:url,gitlab.freedesktop.org:url,lists.freedesktop.org:replyto,lists.freedesktop.org:email,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,patchwork.freedesktop.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 37D5E6DEE14
X-Spam: Yes

--===============6457836666158166152==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Vswing / Pre-emphasis Override (rev4)
URL   : https://patchwork.freedesktop.org/series/167571/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_18724_full -> Patchwork_167571v4_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_167571v4_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_167571v4_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_167571v4_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1:
    - shard-mtlp:         [PASS][1] -> [FAIL][2] +3 other tests fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-7/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1.html

  * igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping@pipe-a-plane-0:
    - shard-dg2:          NOTRUN -> [FAIL][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-4/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping@pipe-a-plane-0.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-tglu:         NOTRUN -> [WARN][4]
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_selftest@drm_cmdline_parser:
    - shard-dg2:          [PASS][5] -> [SKIP][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_selftest@drm_cmdline_parser.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@kms_selftest@drm_cmdline_parser.html

  
#### Warnings ####

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-mtlp:         [SKIP][7] ([i915#13049]) -> [FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_cursor_crc@cursor-random-512x512.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-7/igt@kms_cursor_crc@cursor-random-512x512.html

  
New tests
---------

  New tests have been introduced between CI_DRM_18724_full and Patchwork_167571v4_full:

### New IGT tests (6) ###

  * igt@kms_cursor_crc@cursor-alpha-transparent@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.54] s

  * igt@kms_cursor_crc@cursor-alpha-transparent@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.42] s

  * igt@kms_cursor_crc@cursor-dpms@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [1.06] s

  * igt@kms_cursor_crc@cursor-size-change@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.78] s

  * igt@kms_cursor_crc@cursor-size-change@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.65] s

  * igt@kms_cursor_crc@cursor-suspend@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [4.76] s

  

Known issues
------------

  Here are the changes found in Patchwork_167571v4_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][9] ([i915#16348] / [i915#16503]) +1 other test incomplete
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@gem_ccs@block-multicopy-inplace.html
    - shard-tglu:         NOTRUN -> [SKIP][10] ([i915#3555] / [i915#9323])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@gem_ccs@block-multicopy-inplace.html
    - shard-mtlp:         NOTRUN -> [SKIP][11] ([i915#3555] / [i915#9323])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-rkl:          NOTRUN -> [SKIP][12] ([i915#3555] / [i915#9323])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-rkl:          NOTRUN -> [SKIP][13] ([i915#13008])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_ccs@suspend-resume:
    - shard-tglu-1:       NOTRUN -> [SKIP][14] ([i915#9323]) +1 other test skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@gem_ccs@suspend-resume.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [PASS][15] -> [INCOMPLETE][16] ([i915#13356] / [i915#16348])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html

  * igt@gem_create@create-ext-set-pat:
    - shard-rkl:          NOTRUN -> [SKIP][17] ([i915#8562])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-rkl:          NOTRUN -> [SKIP][18] ([i915#280])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-tglu-1:       NOTRUN -> [SKIP][19] ([i915#280])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-tglu:         NOTRUN -> [SKIP][20] ([i915#280])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_exec_balancer@parallel:
    - shard-rkl:          NOTRUN -> [SKIP][21] ([i915#4525]) +2 other tests skip
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-tglu-1:       NOTRUN -> [SKIP][22] ([i915#4525]) +2 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-tglu:         NOTRUN -> [SKIP][23] ([i915#4525])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_fence@submit:
    - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#4812]) +1 other test skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@gem_exec_fence@submit.html
    - shard-mtlp:         NOTRUN -> [SKIP][25] ([i915#4812])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@gem_exec_fence@submit.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#3539] / [i915#4852])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
    - shard-mtlp:         NOTRUN -> [SKIP][27] ([i915#3711])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_flush@basic-batch-kernel-default-wb:
    - shard-dg1:          NOTRUN -> [SKIP][28] ([i915#3539] / [i915#4852])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@gem_exec_flush@basic-batch-kernel-default-wb.html

  * igt@gem_exec_params@larger-than-life-batch:
    - shard-mtlp:         [PASS][29] -> [SKIP][30] ([i915#16090] / [i915#3710])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@gem_exec_params@larger-than-life-batch.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-7/igt@gem_exec_params@larger-than-life-batch.html

  * igt@gem_exec_params@secure-non-master:
    - shard-dg2:          NOTRUN -> [SKIP][31] +3 other tests skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@gem_exec_params@secure-non-master.html

  * igt@gem_exec_reloc@basic-range:
    - shard-mtlp:         NOTRUN -> [SKIP][32] ([i915#3281])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@gem_exec_reloc@basic-range.html

  * igt@gem_exec_reloc@basic-wc-read-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][33] ([i915#3281]) +6 other tests skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@gem_exec_reloc@basic-wc-read-noreloc.html

  * igt@gem_exec_reloc@basic-write-gtt-active:
    - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#3281]) +2 other tests skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@gem_exec_reloc@basic-write-gtt-active.html

  * igt@gem_exec_schedule@reorder-wide:
    - shard-dg2:          NOTRUN -> [SKIP][35] ([i915#4537] / [i915#4812])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@gem_exec_schedule@reorder-wide.html
    - shard-mtlp:         NOTRUN -> [SKIP][36] ([i915#4537] / [i915#4812])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@gem_exec_schedule@reorder-wide.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-tglu-1:       NOTRUN -> [SKIP][37] ([i915#4613] / [i915#7582])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-tglu-1:       NOTRUN -> [SKIP][38] ([i915#4613])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@parallel-random-verify-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][39] ([i915#4613]) +2 other tests skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@gem_lmem_swapping@parallel-random-verify-ccs.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-glk:          NOTRUN -> [SKIP][40] ([i915#4613]) +4 other tests skip
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk2/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_lmem_swapping@verify-random-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][41] ([i915#4613]) +1 other test skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@gem_lmem_swapping@verify-random-ccs.html

  * igt@gem_mmap@basic:
    - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#4083])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@gem_mmap@basic.html
    - shard-dg1:          NOTRUN -> [SKIP][43] ([i915#4083]) +1 other test skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-14/igt@gem_mmap@basic.html

  * igt@gem_mmap_gtt@big-copy-xy:
    - shard-dg1:          NOTRUN -> [SKIP][44] ([i915#4077])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-14/igt@gem_mmap_gtt@big-copy-xy.html

  * igt@gem_mmap_offset@clear-via-pagefault:
    - shard-mtlp:         [PASS][45] -> [INCOMPLETE][46] ([i915#16021] / [i915#16108] / [i915#16202]) +1 other test incomplete
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@gem_mmap_offset@clear-via-pagefault.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-7/igt@gem_mmap_offset@clear-via-pagefault.html

  * igt@gem_partial_pwrite_pread@reads-snoop:
    - shard-dg1:          NOTRUN -> [SKIP][47] ([i915#3282])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@gem_partial_pwrite_pread@reads-snoop.html

  * igt@gem_pread@exhaustion:
    - shard-glk:          NOTRUN -> [WARN][48] ([i915#2658])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk4/igt@gem_pread@exhaustion.html

  * igt@gem_pread@snoop:
    - shard-dg2:          NOTRUN -> [SKIP][49] ([i915#3282]) +3 other tests skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@gem_pread@snoop.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-glk10:        NOTRUN -> [WARN][50] ([i915#14702] / [i915#2658])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk10/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-dg1:          NOTRUN -> [SKIP][51] ([i915#4270])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-rkl:          [PASS][52] -> [ABORT][53] ([i915#15131])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-1/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][54] ([i915#8428]) +2 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled.html

  * igt@gem_render_copy@y-tiled-to-vebox-linear:
    - shard-dg2:          NOTRUN -> [SKIP][55] ([i915#5190] / [i915#8428]) +4 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@gem_render_copy@y-tiled-to-vebox-linear.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-rkl:          NOTRUN -> [SKIP][56] ([i915#8411])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#3282]) +2 other tests skip
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-4/igt@gem_set_tiling_vs_pwrite.html
    - shard-mtlp:         NOTRUN -> [SKIP][58] ([i915#4079])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@gem_set_tiling_vs_pwrite.html
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#4079])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-tglu:         NOTRUN -> [SKIP][60] ([i915#3297] / [i915#3323])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][61] ([i915#3297])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
    - shard-mtlp:         NOTRUN -> [SKIP][62] ([i915#3297]) +1 other test skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate:
    - shard-dg2:          NOTRUN -> [SKIP][63] ([i915#3297] / [i915#4880])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@gem_userptr_blits@map-fixed-invalidate.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-rkl:          NOTRUN -> [SKIP][64] ([i915#3297])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-4/igt@gem_userptr_blits@unsync-overlap.html
    - shard-tglu:         NOTRUN -> [SKIP][65] ([i915#3297]) +2 other tests skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-tglu-1:       NOTRUN -> [SKIP][66] ([i915#3297])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-tglu-1:       NOTRUN -> [SKIP][67] ([i915#2527] / [i915#2856]) +2 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@cmd-crossing-page:
    - shard-tglu:         NOTRUN -> [SKIP][68] ([i915#2527] / [i915#2856]) +1 other test skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@gen9_exec_parse@cmd-crossing-page.html
    - shard-mtlp:         NOTRUN -> [SKIP][69] ([i915#2856])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@gen9_exec_parse@cmd-crossing-page.html
    - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#2856]) +1 other test skip
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@gen9_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-rkl:          NOTRUN -> [SKIP][71] ([i915#2527]) +2 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@gen9_exec_parse@unaligned-access.html

  * igt@i915_drm_fdinfo@most-busy-check-all@vecs0:
    - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#14073]) +15 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@i915_drm_fdinfo@most-busy-check-all@vecs0.html

  * igt@i915_drm_fdinfo@virtual-busy-idle:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#14118])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@i915_drm_fdinfo@virtual-busy-idle.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [PASS][74] -> [INCOMPLETE][75] ([i915#13356] / [i915#13820]) +1 other test incomplete
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-tglu:         NOTRUN -> [SKIP][76] ([i915#6590]) +1 other test skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#16080] / [i915#16166])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@i915_pm_rc6_residency@media-rc6-accuracy.html

  * igt@i915_pm_rc6_residency@rc6-accuracy:
    - shard-dg2:          NOTRUN -> [FAIL][78] ([i915#12964]) +1 other test fail
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@i915_pm_rc6_residency@rc6-accuracy.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-tglu-1:       NOTRUN -> [SKIP][79] ([i915#14498])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rps@basic-api:
    - shard-dg2:          NOTRUN -> [SKIP][80] ([i915#11681] / [i915#6621])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@i915_pm_rps@basic-api.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-tglu:         NOTRUN -> [SKIP][81] ([i915#16109])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@i915_query@query-topology-known-pci-ids.html
    - shard-mtlp:         NOTRUN -> [SKIP][82] ([i915#16109])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@i915_query@query-topology-known-pci-ids.html
    - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#16109])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@i915_query@query-topology-known-pci-ids.html
    - shard-rkl:          NOTRUN -> [SKIP][84] ([i915#16109])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-4/igt@i915_query@query-topology-known-pci-ids.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          NOTRUN -> [SKIP][85] ([i915#5723])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][86] ([i915#16182] / [i915#4817])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk11/igt@i915_suspend@basic-s3-without-i915.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-mtlp:         NOTRUN -> [SKIP][87] ([i915#4077]) +2 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@intel_hwmon@hwmon-write:
    - shard-tglu:         NOTRUN -> [SKIP][88] ([i915#7707])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@intel_hwmon@hwmon-write.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - shard-dg1:          NOTRUN -> [SKIP][89] ([i915#4212])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#4212])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html

  * igt@kms_async_flips@async-flip-with-page-flip-events-linear@pipe-a-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [TIMEOUT][91] ([i915#16503]) +1 other test timeout
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_async_flips@async-flip-with-page-flip-events-linear@pipe-a-hdmi-a-1.html
    - shard-dg1:          NOTRUN -> [TIMEOUT][92] ([i915#16503]) +18 other tests timeout
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-14/igt@kms_async_flips@async-flip-with-page-flip-events-linear@pipe-a-hdmi-a-1.html

  * igt@kms_async_flips@basic-modeset-with-all-modifiers-formats:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][93] ([i915#16503] / [i915#16516]) +1 other test incomplete
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_async_flips@basic-modeset-with-all-modifiers-formats.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-dg1:          NOTRUN -> [SKIP][94] ([i915#9531])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
    - shard-tglu:         [PASS][95] -> [FAIL][96] ([i915#15662]) +1 other test fail
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-tglu-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition:
    - shard-dg2:          [PASS][97] -> [FAIL][98] ([i915#5956]) +3 other tests fail
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_atomic_transition@plane-toggle-modeset-transition.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@kms_atomic_transition@plane-toggle-modeset-transition.html

  * igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [FAIL][99] ([i915#5956]) +1 other test fail
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][100] ([i915#5286]) +3 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-tglu:         NOTRUN -> [SKIP][101] ([i915#5286]) +2 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-addfb-size-overflow:
    - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#5286]) +4 other tests skip
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_big_fb@4-tiled-addfb-size-overflow.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-mtlp:         [PASS][103] -> [TIMEOUT][104] ([i915#16503]) +1 other test timeout
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [PASS][105] -> [FAIL][106] ([i915#15733] / [i915#5138])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-64bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#3638]) +1 other test skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_big_fb@linear-64bpp-rotate-90.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-mtlp:         NOTRUN -> [SKIP][108] ([i915#3828])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html
    - shard-dg2:          NOTRUN -> [SKIP][109] ([i915#3828])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-tglu:         NOTRUN -> [SKIP][110] ([i915#3828]) +1 other test skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-mtlp:         [PASS][111] -> [INCOMPLETE][112] ([i915#16503]) +1 other test incomplete
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-snb:          [PASS][113] -> [INCOMPLETE][114] ([i915#16503])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-snb1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-snb4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][115] ([i915#4538] / [i915#5190]) +5 other tests skip
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-tglu-1:       NOTRUN -> [INCOMPLETE][116] ([i915#16503]) +6 other tests incomplete
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-mtlp:         NOTRUN -> [SKIP][117] +3 other tests skip
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:
    - shard-tglu-1:       NOTRUN -> [SKIP][118] +67 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-dg1:          NOTRUN -> [SKIP][119] ([i915#4538])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-14/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
    - shard-glk11:        NOTRUN -> [SKIP][120] +33 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk11/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][121] ([i915#6095]) +169 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-19/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#6095]) +60 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#6095]) +39 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#10307] / [i915#6095]) +96 other tests skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-10/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][125] ([i915#16503] / [i915#16510]) +3 other tests incomplete
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs:
    - shard-tglu-1:       NOTRUN -> [INCOMPLETE][126] ([i915#16510]) +1 other test incomplete
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][127] ([i915#15582] / [i915#16503]) +1 other test incomplete
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk10/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][128] ([i915#15582] / [i915#16503]) +1 other test incomplete
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk11/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][129] ([i915#16503]) +11 other tests incomplete
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][130] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#12805])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc:
    - shard-glk:          NOTRUN -> [SKIP][132] +330 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk3/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#6095]) +4 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#14098] / [i915#6095]) +37 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs:
    - shard-tglu-1:       NOTRUN -> [INCOMPLETE][135] ([i915#16503] / [i915#16510])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [TIMEOUT][136] ([i915#16503]) +2 other tests timeout
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#12313])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-a-edp-1:
    - shard-mtlp:         NOTRUN -> [SKIP][138] ([i915#6095]) +4 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-a-edp-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc:
    - shard-tglu-1:       NOTRUN -> [SKIP][139] ([i915#6095]) +24 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][140] ([i915#12313])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_chamelium_color_pipeline@plane-lut1d-lut1d:
    - shard-dg1:          NOTRUN -> [SKIP][141] ([i915#16471])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_chamelium_color_pipeline@plane-lut1d-lut1d.html

  * igt@kms_chamelium_color_pipeline@plane-lut1d-post-ctm3x4:
    - shard-rkl:          NOTRUN -> [SKIP][142] ([i915#16471]) +2 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-4/igt@kms_chamelium_color_pipeline@plane-lut1d-post-ctm3x4.html
    - shard-tglu:         NOTRUN -> [SKIP][143] ([i915#16471]) +1 other test skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_chamelium_color_pipeline@plane-lut1d-post-ctm3x4.html

  * igt@kms_chamelium_frames@dp-crc-fast:
    - shard-tglu-1:       NOTRUN -> [SKIP][144] ([i915#11151] / [i915#7828]) +6 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_chamelium_frames@dp-crc-fast.html

  * igt@kms_chamelium_frames@dp-frame-dump:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#11151] / [i915#7828]) +3 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_chamelium_frames@dp-frame-dump.html
    - shard-tglu:         NOTRUN -> [SKIP][146] ([i915#11151] / [i915#7828]) +5 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_chamelium_frames@dp-frame-dump.html

  * igt@kms_chamelium_hpd@hdmi-hpd-storm:
    - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#11151] / [i915#7828]) +7 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_chamelium_hpd@hdmi-hpd-storm.html

  * igt@kms_chamelium_hpd@vga-hpd:
    - shard-mtlp:         NOTRUN -> [SKIP][148] ([i915#11151] / [i915#7828])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_chamelium_hpd@vga-hpd.html

  * igt@kms_color@deep-color:
    - shard-dg2:          [PASS][149] -> [SKIP][150] ([i915#12655] / [i915#3555])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_color@deep-color.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_color@deep-color.html
    - shard-tglu-1:       NOTRUN -> [SKIP][151] ([i915#3555] / [i915#9979])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_color@deep-color.html

  * igt@kms_content_protection@dp-mst-lic-type-0-hdcp14:
    - shard-rkl:          NOTRUN -> [SKIP][152] ([i915#15330])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][153] ([i915#15330] / [i915#3116] / [i915#3299])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-0-hdcp14:
    - shard-tglu-1:       NOTRUN -> [SKIP][154] ([i915#15330]) +1 other test skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_content_protection@dp-mst-type-0-hdcp14.html

  * igt@kms_content_protection@dp-mst-type-0-suspend-resume:
    - shard-dg2:          NOTRUN -> [SKIP][155] ([i915#15330])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html
    - shard-tglu:         NOTRUN -> [SKIP][156] ([i915#15330])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html

  * igt@kms_content_protection@legacy-hdcp14:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#15865]) +2 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_content_protection@legacy-hdcp14.html

  * igt@kms_content_protection@suspend-resume:
    - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#15865]) +1 other test skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-4/igt@kms_content_protection@suspend-resume.html

  * igt@kms_content_protection@uevent-hdcp14:
    - shard-tglu:         NOTRUN -> [SKIP][159] ([i915#15865]) +1 other test skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_content_protection@uevent-hdcp14.html

  * igt@kms_content_protection@uevent@pipe-a-dp-3:
    - shard-dg2:          NOTRUN -> [FAIL][160] ([i915#1339] / [i915#7173])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-10/igt@kms_content_protection@uevent@pipe-a-dp-3.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-tglu-1:       NOTRUN -> [SKIP][161] ([i915#13049]) +1 other test skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-max-size:
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#3555])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_cursor_crc@cursor-onscreen-max-size.html

  * igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [FAIL][163] ([i915#13566]) +1 other test fail
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-2/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html
    - shard-tglu-1:       NOTRUN -> [FAIL][164] ([i915#13566]) +1 other test fail
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-random-32x10:
    - shard-rkl:          NOTRUN -> [SKIP][165] ([i915#3555]) +2 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@kms_cursor_crc@cursor-random-32x10.html

  * igt@kms_cursor_crc@cursor-random-32x32:
    - shard-dg1:          NOTRUN -> [SKIP][166] ([i915#3555])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_cursor_crc@cursor-random-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][167] ([i915#13049])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-256x85:
    - shard-tglu:         NOTRUN -> [FAIL][168] ([i915#13566]) +1 other test fail
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_cursor_crc@cursor-sliding-256x85.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#13049])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1:
    - shard-rkl:          [PASS][170] -> [FAIL][171] ([i915#13566]) +1 other test fail
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
    - shard-dg2:          NOTRUN -> [SKIP][172] ([i915#4103])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
    - shard-tglu-1:       NOTRUN -> [SKIP][173] ([i915#4103]) +1 other test skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#13046] / [i915#5354]) +2 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html
    - shard-mtlp:         NOTRUN -> [SKIP][175] ([i915#9809]) +1 other test skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-dg1:          [PASS][176] -> [INCOMPLETE][177] ([i915#16503]) +8 other tests incomplete
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-13/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-15/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:
    - shard-dg2:          NOTRUN -> [SKIP][178] ([i915#9067])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html
    - shard-tglu:         NOTRUN -> [SKIP][179] ([i915#9067])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-tglu:         NOTRUN -> [SKIP][180] ([i915#9723])
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-dg1:          NOTRUN -> [SKIP][181] ([i915#9723])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_display_modes@extended-mode-basic:
    - shard-tglu-1:       NOTRUN -> [SKIP][182] ([i915#13691])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_display_modes@extended-mode-basic.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          [PASS][183] -> [SKIP][184] ([i915#3555])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_dp_linktrain_fallback@dp-fallback:
    - shard-tglu-1:       NOTRUN -> [SKIP][185] ([i915#13707])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_dp_linktrain_fallback@dp-fallback.html

  * igt@kms_dsc@dsc-fractional-bpp-bigjoiner:
    - shard-tglu:         NOTRUN -> [SKIP][186] ([i915#16361]) +3 other tests skip
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_dsc@dsc-fractional-bpp-bigjoiner.html
    - shard-mtlp:         NOTRUN -> [SKIP][187] ([i915#16361])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_dsc@dsc-fractional-bpp-bigjoiner.html

  * igt@kms_dsc@dsc-fractional-bpp-ultrajoiner:
    - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#16361]) +3 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_dsc@dsc-fractional-bpp-ultrajoiner.html

  * igt@kms_dsc@dsc-with-bpc-bigjoiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][189] ([i915#16361]) +1 other test skip
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_dsc@dsc-with-bpc-bigjoiner.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#16361]) +2 other tests skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-rkl:          [PASS][191] -> [INCOMPLETE][192] ([i915#9878])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-8/igt@kms_fbcon_fbt@fbc-suspend.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_feature_discovery@chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#16084])
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@dp-mst:
    - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#9337])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_feature_discovery@dp-mst.html
    - shard-tglu-1:       NOTRUN -> [SKIP][195] ([i915#9337])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_feature_discovery@dp-mst.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-tglu-1:       NOTRUN -> [SKIP][196] ([i915#3637] / [i915#9934]) +6 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-blocking-wf_vblank:
    - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#9934]) +2 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_flip@2x-blocking-wf_vblank.html
    - shard-tglu:         NOTRUN -> [SKIP][198] ([i915#3637] / [i915#9934]) +4 other tests skip
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_flip@2x-blocking-wf_vblank.html
    - shard-mtlp:         NOTRUN -> [SKIP][199] ([i915#3637] / [i915#9934]) +1 other test skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_flip@2x-blocking-wf_vblank.html

  * igt@kms_flip@2x-dpms-vs-vblank-race:
    - shard-dg1:          NOTRUN -> [SKIP][200] ([i915#9934])
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_flip@2x-dpms-vs-vblank-race.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - shard-glk:          NOTRUN -> [TIMEOUT][201] ([i915#16503]) +4 other tests timeout
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk4/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@2x-flip-vs-fences:
    - shard-dg2:          NOTRUN -> [SKIP][202] ([i915#8381])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_flip@2x-flip-vs-fences.html
    - shard-mtlp:         NOTRUN -> [SKIP][203] ([i915#8381])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_flip@2x-flip-vs-fences.html

  * igt@kms_flip@2x-flip-vs-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][204] ([i915#12745] / [i915#4839]) +1 other test incomplete
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk4/igt@kms_flip@2x-flip-vs-suspend.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@ac-hdmi-a1-hdmi-a2:
    - shard-glk:          NOTRUN -> [INCOMPLETE][205] ([i915#12745]) +1 other test incomplete
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk3/igt@kms_flip@2x-flip-vs-suspend-interruptible@ac-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][206] ([i915#9934]) +5 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@blocking-absolute-wf_vblank-interruptible:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][207] ([i915#12314] / [i915#16503] / [i915#16509])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_flip@blocking-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][208] ([i915#16503] / [i915#16509])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@a-edp1:
    - shard-mtlp:         NOTRUN -> [CRASH][209] ([i915#16503])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@a-edp1.html

  * igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-rkl:          NOTRUN -> [WARN][210] ([i915#16503]) +1 other test warn
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@a-hdmi-a3:
    - shard-dg2:          NOTRUN -> [TIMEOUT][211] ([i915#16503] / [i915#16517]) +1 other test timeout
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@a-hdmi-a3.html

  * igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset@b-hdmi-a3:
    - shard-dg2:          NOTRUN -> [TIMEOUT][212] ([i915#16517])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset@b-hdmi-a3.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-dg2:          NOTRUN -> [CRASH][213] ([i915#16503]) +1 other test crash
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][214] ([i915#8810] / [i915#8813])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling:
    - shard-dg2:          [PASS][215] -> [TIMEOUT][216] ([i915#16503]) +5 other tests timeout
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][217] ([i915#15643])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-tglu:         NOTRUN -> [TIMEOUT][218] ([i915#16503]) +3 other tests timeout
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-valid-mode:
    - shard-rkl:          NOTRUN -> [TIMEOUT][219] ([i915#16503]) +3 other tests timeout
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][220] ([i915#15643] / [i915#5190]) +1 other test skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][221] ([i915#15643]) +3 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-rkl:          NOTRUN -> [SKIP][222] ([i915#15643]) +2 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
    - shard-mtlp:         NOTRUN -> [SKIP][223] ([i915#15643])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:
    - shard-glk:          [PASS][224] -> [INCOMPLETE][225] ([i915#16503])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk8/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk1/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode:
    - shard-mtlp:         NOTRUN -> [SKIP][226] ([i915#3555] / [i915#8810] / [i915#8813]) +1 other test skip
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-valid-mode:
    - shard-rkl:          [PASS][227] -> [TIMEOUT][228] ([i915#16503]) +7 other tests timeout
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-valid-mode.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-valid-mode.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:
    - shard-dg2:          NOTRUN -> [SKIP][229] ([i915#15643])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-dg1:          NOTRUN -> [SKIP][230] ([i915#15643])
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-shrfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][231] ([i915#15104] / [i915#15990])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][232] ([i915#15990] / [i915#8708]) +2 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][233] ([i915#15990] / [i915#8708]) +4 other tests skip
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][234] ([i915#15991] / [i915#5354]) +11 other tests skip
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-rkl:          [PASS][235] -> [INCOMPLETE][236] ([i915#10056])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-mmap-wc:
    - shard-tglu-1:       NOTRUN -> [SKIP][237] ([i915#15989]) +8 other tests skip
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-render:
    - shard-dg1:          NOTRUN -> [SKIP][238] ([i915#15989]) +1 other test skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-tglu:         NOTRUN -> [SKIP][239] ([i915#15989]) +16 other tests skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-shrfb-fliptrack-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][240] ([i915#15990]) +2 other tests skip
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbchdr-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][241] ([i915#15991]) +24 other tests skip
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-blt:
    - shard-dg2:          NOTRUN -> [SKIP][242] ([i915#15989]) +8 other tests skip
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbchdr-suspend:
    - shard-mtlp:         NOTRUN -> [SKIP][243] ([i915#15989]) +8 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbchdr-suspend.html

  * igt@kms_frontbuffer_tracking@fbchdr-tiling-4:
    - shard-tglu-1:       NOTRUN -> [SKIP][244] ([i915#5439])
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_frontbuffer_tracking@fbchdr-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][245] ([i915#1825]) +8 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][246] ([i915#15102] / [i915#3023]) +16 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-pwrite:
    - shard-dg1:          NOTRUN -> [SKIP][247] ([i915#15102]) +5 other tests skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-cur-indfb-move:
    - shard-tglu-1:       NOTRUN -> [SKIP][248] ([i915#15102]) +31 other tests skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-glk11:        NOTRUN -> [TIMEOUT][249] ([i915#16503])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk11/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-indfb-fliptrack-mmap-gtt:
    - shard-glk10:        NOTRUN -> [SKIP][250] +163 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk10/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-shrfb-msflip-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][251] ([i915#15991]) +6 other tests skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][252] ([i915#15990]) +12 other tests skip
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@hdr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-rkl:          [PASS][253] -> [SKIP][254] ([i915#15989]) +7 other tests skip
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-spr-indfb-draw-pwrite.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@hdr-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][255] ([i915#15990]) +1 other test skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-14/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@hdr-2p-primscrn-shrfb-pgflip-blt:
    - shard-dg1:          NOTRUN -> [SKIP][256] +6 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@hdr-2p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-glk:          [PASS][257] -> [SKIP][258] +7 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk8/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-spr-indfb-draw-mmap-cpu.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk1/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@hdr-rgb101010-draw-pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][259] ([i915#15989]) +21 other tests skip
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_frontbuffer_tracking@hdr-rgb101010-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@hdr-suspend:
    - shard-dg2:          [PASS][260] -> [SKIP][261] ([i915#15989]) +8 other tests skip
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_frontbuffer_tracking@hdr-suspend.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_frontbuffer_tracking@hdr-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][262] ([i915#15102]) +18 other tests skip
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [INCOMPLETE][263] ([i915#16503]) +7 other tests incomplete
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html
    - shard-dg2:          NOTRUN -> [SKIP][264] ([i915#15104] / [i915#15990])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][265] ([i915#15990] / [i915#8708]) +14 other tests skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-tglu:         NOTRUN -> [SKIP][266] +57 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html
    - shard-mtlp:         NOTRUN -> [SKIP][267] ([i915#15991] / [i915#1825]) +3 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [SKIP][268] ([i915#15102]) +21 other tests skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
    - shard-mtlp:         [PASS][269] -> [FAIL][270] ([i915#15871]) +2 other tests fail
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:
    - shard-tglu:         NOTRUN -> [SKIP][271] ([i915#15102]) +19 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-cur-indfb-move:
    - shard-rkl:          NOTRUN -> [SKIP][272] +89 other tests skip
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-4/igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-cur-indfb-move.html

  * igt@kms_hdr@bpc-switch:
    - shard-tglu-1:       NOTRUN -> [SKIP][273] ([i915#3555] / [i915#8228])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-dg2:          [PASS][274] -> [SKIP][275] ([i915#16518] / [i915#3555] / [i915#8228])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_hdr@bpc-switch-dpms.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@static-swap:
    - shard-rkl:          NOTRUN -> [SKIP][276] ([i915#3555] / [i915#8228])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@kms_hdr@static-swap.html

  * igt@kms_hdr@static-toggle:
    - shard-rkl:          [PASS][277] -> [SKIP][278] ([i915#3555] / [i915#8228]) +1 other test skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_hdr@static-toggle.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_hdr@static-toggle.html
    - shard-tglu:         NOTRUN -> [SKIP][279] ([i915#3555] / [i915#8228])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_hdr@static-toggle.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][280] ([i915#15460])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@basic-force-ultra-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][281] ([i915#15458])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_joiner@basic-force-ultra-joiner.html

  * igt@kms_joiner@basic-max-non-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][282] ([i915#13688])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_joiner@basic-max-non-joiner.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][283] ([i915#15460])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
    - shard-dg2:          NOTRUN -> [SKIP][284] ([i915#15638] / [i915#15722])
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html
    - shard-tglu:         NOTRUN -> [SKIP][285] ([i915#15638] / [i915#15722])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html

  * igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping@pipe-a-plane-3:
    - shard-dg2:          NOTRUN -> [FAIL][286] ([i915#16503])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-4/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping@pipe-a-plane-3.html

  * igt@kms_plane@pixel-format-4-tiled-modifier:
    - shard-dg1:          NOTRUN -> [SKIP][287] ([i915#15709])
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_plane@pixel-format-4-tiled-modifier.html

  * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][288] ([i915#16503] / [i915#16513])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier.html

  * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier@pipe-a-plane-5:
    - shard-mtlp:         NOTRUN -> [SKIP][289] ([i915#16386]) +1 other test skip
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier@pipe-a-plane-5.html

  * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping:
    - shard-dg2:          NOTRUN -> [SKIP][290] ([i915#15709])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping.html
    - shard-rkl:          NOTRUN -> [SKIP][291] ([i915#15709])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-4/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping.html
    - shard-mtlp:         NOTRUN -> [INCOMPLETE][292] ([i915#13026] / [i915#16503])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-linear-modifier-source-clamping@pipe-a-plane-0:
    - shard-snb:          NOTRUN -> [TIMEOUT][293] ([i915#16503])
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-snb6/igt@kms_plane@pixel-format-linear-modifier-source-clamping@pipe-a-plane-0.html

  * igt@kms_plane@pixel-format-x-tiled-modifier-source-clamping@pipe-a-plane-0:
    - shard-dg1:          [PASS][294] -> [TIMEOUT][295] ([i915#16503]) +2 other tests timeout
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_plane@pixel-format-x-tiled-modifier-source-clamping@pipe-a-plane-0.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-18/igt@kms_plane@pixel-format-x-tiled-modifier-source-clamping@pipe-a-plane-0.html

  * igt@kms_plane@pixel-format-y-tiled-ccs-modifier-source-clamping:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][296] ([i915#13026] / [i915#16503])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk10/igt@kms_plane@pixel-format-y-tiled-ccs-modifier-source-clamping.html
    - shard-dg2:          NOTRUN -> [INCOMPLETE][297] ([i915#13026] / [i915#16503])
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_plane@pixel-format-y-tiled-ccs-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier-source-clamping:
    - shard-tglu-1:       NOTRUN -> [INCOMPLETE][298] ([i915#16503] / [i915#16513]) +2 other tests incomplete
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier@pipe-b-plane-7:
    - shard-dg1:          NOTRUN -> [SKIP][299] ([i915#16386]) +1 other test skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-13/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier@pipe-b-plane-7.html

  * igt@kms_plane@pixel-format-y-tiled-modifier-source-clamping:
    - shard-dg1:          [PASS][300] -> [INCOMPLETE][301] ([i915#13026] / [i915#16503])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-13/igt@kms_plane@pixel-format-y-tiled-modifier-source-clamping.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-15/igt@kms_plane@pixel-format-y-tiled-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-yf-tiled-ccs-modifier:
    - shard-tglu:         NOTRUN -> [SKIP][302] ([i915#15709]) +2 other tests skip
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier.html

  * igt@kms_plane@planar-pixel-format-settings@nv12-tile4-src-y:
    - shard-rkl:          NOTRUN -> [SKIP][303] ([i915#16112])
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_plane@planar-pixel-format-settings@nv12-tile4-src-y.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb:
    - shard-glk:          NOTRUN -> [FAIL][304] ([i915#10647] / [i915#12177])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk4/igt@kms_plane_alpha_blend@alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][305] ([i915#10647]) +1 other test fail
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk4/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1.html

  * igt@kms_plane_alpha_blend@constant-alpha-max:
    - shard-glk10:        NOTRUN -> [FAIL][306] ([i915#10647] / [i915#12169])
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk10/igt@kms_plane_alpha_blend@constant-alpha-max.html

  * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-hdmi-a-1:
    - shard-glk10:        NOTRUN -> [FAIL][307] ([i915#10647]) +1 other test fail
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk10/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-hdmi-a-1.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-tglu-1:       NOTRUN -> [SKIP][308] ([i915#3555]) +5 other tests skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_multiple@2x-tiling-4:
    - shard-rkl:          NOTRUN -> [SKIP][309] ([i915#13958]) +2 other tests skip
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@kms_plane_multiple@2x-tiling-4.html

  * igt@kms_plane_multiple@2x-tiling-none:
    - shard-dg2:          NOTRUN -> [SKIP][310] ([i915#13958])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_plane_multiple@2x-tiling-none.html
    - shard-tglu:         NOTRUN -> [SKIP][311] ([i915#13958])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_plane_multiple@2x-tiling-none.html

  * igt@kms_plane_multiple@tiling-4:
    - shard-rkl:          NOTRUN -> [SKIP][312] ([i915#14259])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-4/igt@kms_plane_multiple@tiling-4.html
    - shard-tglu:         NOTRUN -> [SKIP][313] ([i915#14259])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_plane_multiple@tiling-4.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][314] ([i915#16503]) +15 other tests incomplete
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][315] ([i915#16512]) +1 other test incomplete
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html
    - shard-glk10:        NOTRUN -> [INCOMPLETE][316] ([i915#16503]) +5 other tests incomplete
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk10/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][317] ([i915#15329]) +8 other tests skip
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b:
    - shard-dg1:          NOTRUN -> [SKIP][318] ([i915#15329]) +4 other tests skip
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-17/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][319] ([i915#16503] / [i915#16512]) +1 other test incomplete
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-dg2:          [PASS][320] -> [INCOMPLETE][321] ([i915#16503]) +17 other tests incomplete
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a:
    - shard-tglu-1:       NOTRUN -> [INCOMPLETE][322] ([i915#16503] / [i915#16512]) +1 other test incomplete
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a.html

  * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:
    - shard-glk10:        NOTRUN -> [TIMEOUT][323] ([i915#16503]) +11 other tests timeout
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk10/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:
    - shard-mtlp:         NOTRUN -> [SKIP][324] ([i915#15329] / [i915#3555] / [i915#6953])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a:
    - shard-rkl:          NOTRUN -> [CRASH][325] ([i915#16503]) +2 other tests crash
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a.html
    - shard-tglu:         NOTRUN -> [CRASH][326] ([i915#16514])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a.html

  * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b:
    - shard-tglu:         NOTRUN -> [SKIP][327] ([i915#15329]) +2 other tests skip
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b.html
    - shard-mtlp:         NOTRUN -> [SKIP][328] ([i915#15329]) +3 other tests skip
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
    - shard-rkl:          [PASS][329] -> [INCOMPLETE][330] ([i915#16503]) +3 other tests incomplete
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b:
    - shard-dg2:          NOTRUN -> [SKIP][331] ([i915#15329]) +2 other tests skip
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b.html

  * igt@kms_pm_backlight@fade:
    - shard-tglu-1:       NOTRUN -> [SKIP][332] ([i915#12343] / [i915#9812])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_pm_backlight@fade.html
    - shard-dg1:          NOTRUN -> [SKIP][333] ([i915#12343] / [i915#5354])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-14/igt@kms_pm_backlight@fade.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-dg2:          NOTRUN -> [SKIP][334] ([i915#12343] / [i915#5354]) +1 other test skip
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_pm_backlight@fade-with-suspend.html
    - shard-tglu:         NOTRUN -> [SKIP][335] ([i915#12343] / [i915#9812]) +1 other test skip
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_pm_dc@dc5-pageflip-negative:
    - shard-dg2:          NOTRUN -> [SKIP][336] ([i915#9685])
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@kms_pm_dc@dc5-pageflip-negative.html
    - shard-rkl:          NOTRUN -> [SKIP][337] ([i915#9685])
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_pm_dc@dc5-pageflip-negative.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu-1:       NOTRUN -> [FAIL][338] ([i915#16479])
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][339] ([i915#15739])
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][340] ([i915#3828]) +1 other test skip
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_rpm@fences-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][341] ([i915#4077]) +5 other tests skip
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_pm_rpm@fences-dpms.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-dg2:          NOTRUN -> [SKIP][342] ([i915#15073])
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_pm_rpm@modeset-lpsp-stress.html
    - shard-dg1:          [PASS][343] -> [SKIP][344] ([i915#15073]) +1 other test skip
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-19/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-tglu-1:       NOTRUN -> [SKIP][345] ([i915#15073])
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [PASS][346] -> [SKIP][347] ([i915#15073])
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
    - shard-tglu:         NOTRUN -> [SKIP][348] ([i915#15073]) +1 other test skip
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_pm_rpm@package-g7:
    - shard-rkl:          NOTRUN -> [SKIP][349] ([i915#15403])
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@kms_pm_rpm@package-g7.html

  * igt@kms_pm_rpm@system-suspend-modeset:
    - shard-glk:          NOTRUN -> [INCOMPLETE][350] ([i915#10553])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk2/igt@kms_pm_rpm@system-suspend-modeset.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-dg1:          NOTRUN -> [SKIP][351] ([i915#6524])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_properties@connector-properties-atomic:
    - shard-dg1:          [PASS][352] -> [DMESG-WARN][353] ([i915#4423]) +1 other test dmesg-warn
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-19/igt@kms_properties@connector-properties-atomic.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-14/igt@kms_properties@connector-properties-atomic.html

  * igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:
    - shard-glk11:        NOTRUN -> [SKIP][354] ([i915#11520])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk11/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-glk10:        NOTRUN -> [SKIP][355] ([i915#11520]) +3 other tests skip
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk10/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:
    - shard-tglu-1:       NOTRUN -> [SKIP][356] ([i915#11520]) +4 other tests skip
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][357] ([i915#11520]) +8 other tests skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk4/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
    - shard-dg2:          NOTRUN -> [SKIP][358] ([i915#11520]) +2 other tests skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][359] ([i915#11520]) +6 other tests skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-4/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
    - shard-tglu:         NOTRUN -> [SKIP][360] ([i915#11520]) +5 other tests skip
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html
    - shard-mtlp:         NOTRUN -> [SKIP][361] ([i915#12316]) +1 other test skip
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-rkl:          NOTRUN -> [SKIP][362] ([i915#9683])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-dg2:          NOTRUN -> [SKIP][363] ([i915#9683])
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_psr2_su@page_flip-xrgb8888.html
    - shard-tglu-1:       NOTRUN -> [SKIP][364] ([i915#9683])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-pr-sprite-render:
    - shard-tglu-1:       NOTRUN -> [SKIP][365] ([i915#9732]) +10 other tests skip
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_psr@fbc-pr-sprite-render.html

  * igt@kms_psr@fbc-psr-cursor-plane-move:
    - shard-dg2:          NOTRUN -> [SKIP][366] ([i915#1072] / [i915#9732]) +13 other tests skip
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_psr@fbc-psr-cursor-plane-move.html

  * igt@kms_psr@fbc-psr2-sprite-plane-move:
    - shard-mtlp:         NOTRUN -> [SKIP][367] ([i915#9688]) +2 other tests skip
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_psr@fbc-psr2-sprite-plane-move.html

  * igt@kms_psr@pr-cursor-plane-onoff:
    - shard-rkl:          NOTRUN -> [SKIP][368] ([i915#1072] / [i915#9732]) +17 other tests skip
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@kms_psr@pr-cursor-plane-onoff.html

  * igt@kms_psr@pr-primary-mmap-cpu:
    - shard-dg1:          NOTRUN -> [SKIP][369] ([i915#1072] / [i915#9732]) +1 other test skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-14/igt@kms_psr@pr-primary-mmap-cpu.html

  * igt@kms_psr@psr2-cursor-plane-onoff:
    - shard-tglu:         NOTRUN -> [SKIP][370] ([i915#9732]) +16 other tests skip
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_psr@psr2-cursor-plane-onoff.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          NOTRUN -> [SKIP][371] ([i915#15949])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:
    - shard-glk:          NOTRUN -> [INCOMPLETE][372] ([i915#15500] / [i915#16184])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk4/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html

  * igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:
    - shard-dg2:          NOTRUN -> [SKIP][373] ([i915#12755] / [i915#15867] / [i915#5190])
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg1:          NOTRUN -> [SKIP][374] ([i915#5289])
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-rkl:          NOTRUN -> [SKIP][375] ([i915#8623])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-tglu-1:       NOTRUN -> [SKIP][376] ([i915#9906])
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@flip-suspend:
    - shard-tglu:         NOTRUN -> [SKIP][377] ([i915#3555]) +1 other test skip
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_vrr@flip-suspend.html
    - shard-dg2:          NOTRUN -> [SKIP][378] ([i915#15243] / [i915#3555])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_vrr@flip-suspend.html

  * igt@kms_vrr@flipline:
    - shard-rkl:          NOTRUN -> [SKIP][379] ([i915#15243] / [i915#3555])
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_vrr@flipline.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-dg2:          NOTRUN -> [SKIP][380] ([i915#9906])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_vrr@seamless-rr-switch-drrs.html
    - shard-rkl:          NOTRUN -> [SKIP][381] ([i915#9906])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-4/igt@kms_vrr@seamless-rr-switch-drrs.html
    - shard-tglu:         NOTRUN -> [SKIP][382] ([i915#9906]) +1 other test skip
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-dg2:          NOTRUN -> [SKIP][383] ([i915#2436])
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@perf@gen8-unprivileged-single-ctx-counters.html
    - shard-rkl:          NOTRUN -> [SKIP][384] ([i915#2436])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          NOTRUN -> [FAIL][385] ([i915#9100]) +1 other test fail
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@perf@non-zero-reason@0-rcs0.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-dg1:          NOTRUN -> [SKIP][386] ([i915#2433])
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@perf@unprivileged-single-ctx-counters.html

  * igt@perf_pmu@module-unload:
    - shard-tglu-1:       NOTRUN -> [ABORT][387] ([i915#13029] / [i915#15778])
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-tglu:         NOTRUN -> [SKIP][388] ([i915#8516])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@perf_pmu@rc6-all-gts.html

  * igt@prime_udl@share-import-addfb:
    - shard-rkl:          NOTRUN -> [SKIP][389] ([i915#16420])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@prime_udl@share-import-addfb.html

  * igt@prime_vgem@basic-write:
    - shard-dg1:          NOTRUN -> [SKIP][390] ([i915#3708])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@prime_vgem@basic-write.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-dg2:          NOTRUN -> [SKIP][391] ([i915#9917])
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@sriov_basic@enable-vfs-autoprobe-off.html
    - shard-dg1:          NOTRUN -> [SKIP][392] ([i915#9917])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-14/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-random:
    - shard-tglu-1:       NOTRUN -> [SKIP][393] ([i915#16066]) +10 other tests skip
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-random.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each:
    - shard-rkl:          NOTRUN -> [SKIP][394] ([i915#9917])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@sriov_basic@enable-vfs-bind-unbind-each.html

  * igt@syncobj_timeline@etime-multi-wait-all-available-unsubmitted-submitted:
    - shard-tglu:         NOTRUN -> [INCOMPLETE][395] ([i915#16503]) +36 other tests incomplete
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@syncobj_timeline@etime-multi-wait-all-available-unsubmitted-submitted.html

  * igt@syncobj_timeline@etime-multi-wait-for-submit-available-unsubmitted:
    - shard-glk:          NOTRUN -> [INCOMPLETE][396] ([i915#16503]) +4 other tests incomplete
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk4/igt@syncobj_timeline@etime-multi-wait-for-submit-available-unsubmitted.html

  * igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][397] ([i915#16503]) +1 other test incomplete
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk11/igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled.html

  
#### Possible fixes ####

  * igt@gem_ccs@block-multicopy-compressed@linear-compressed-compfmt0-lmem0-lmem0-multicopy:
    - shard-dg2:          [INCOMPLETE][398] ([i915#16348] / [i915#16503]) -> [PASS][399] +1 other test pass
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-3/igt@gem_ccs@block-multicopy-compressed@linear-compressed-compfmt0-lmem0-lmem0-multicopy.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-3/igt@gem_ccs@block-multicopy-compressed@linear-compressed-compfmt0-lmem0-lmem0-multicopy.html

  * igt@gem_eio@in-flight-suspend:
    - shard-dg1:          [DMESG-WARN][400] ([i915#13390] / [i915#4391] / [i915#4423]) -> [PASS][401]
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@gem_eio@in-flight-suspend.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-17/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_suspend@basic-s3:
    - shard-rkl:          [INCOMPLETE][402] ([i915#13356]) -> [PASS][403] +1 other test pass
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@gem_exec_suspend@basic-s3.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@gem_exec_suspend@basic-s3.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-dg2:          [ABORT][404] ([i915#15060]) -> [PASS][405] +1 other test pass
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@i915_pm_rpm@system-suspend.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@i915_pm_rpm@system-suspend.html

  * igt@kms_async_flips@basic-modeset-with-all-modifiers-formats@pipe-a-vga-1-x-rgb565:
    - shard-snb:          [TIMEOUT][406] ([i915#16503]) -> [PASS][407]
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-snb6/igt@kms_async_flips@basic-modeset-with-all-modifiers-formats@pipe-a-vga-1-x-rgb565.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-snb5/igt@kms_async_flips@basic-modeset-with-all-modifiers-formats@pipe-a-vga-1-x-rgb565.html

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing:
    - shard-rkl:          [INCOMPLETE][408] ([i915#10056] / [i915#16503]) -> [PASS][409]
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-snb:          [INCOMPLETE][410] ([i915#16503]) -> [PASS][411] +1 other test pass
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-snb5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-snb1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
    - shard-mtlp:         [TIMEOUT][412] ([i915#16503]) -> [PASS][413] +1 other test pass
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc:
    - shard-dg2:          [INCOMPLETE][414] ([i915#14694] / [i915#16503]) -> [PASS][415]
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-2:
    - shard-rkl:          [INCOMPLETE][416] ([i915#12358] / [i915#14152]) -> [PASS][417] +1 other test pass
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-4/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-2.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-4/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-2.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
    - shard-dg1:          [INCOMPLETE][418] ([i915#16503]) -> [PASS][419] +2 other tests pass
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-14/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-16/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:
    - shard-glk:          [TIMEOUT][420] ([i915#16503]) -> [PASS][421]
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk8/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk1/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a3:
    - shard-dg2:          [FAIL][422] ([i915#14600]) -> [PASS][423] +1 other test pass
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a3.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a3.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-rkl:          [TIMEOUT][424] ([i915#16503]) -> [PASS][425] +7 other tests pass
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling:
    - shard-dg2:          [CRASH][426] ([i915#16503]) -> [PASS][427] +2 other tests pass
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-spr-indfb-move:
    - shard-glk:          [SKIP][428] -> [PASS][429] +4 other tests pass
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk6/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-spr-indfb-move.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk8/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@hdr-shrfb-scaledprimary:
    - shard-dg2:          [SKIP][430] ([i915#15989]) -> [PASS][431] +5 other tests pass
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_frontbuffer_tracking@hdr-shrfb-scaledprimary.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-10/igt@kms_frontbuffer_tracking@hdr-shrfb-scaledprimary.html
    - shard-rkl:          [SKIP][432] ([i915#15989]) -> [PASS][433] +10 other tests pass
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_frontbuffer_tracking@hdr-shrfb-scaledprimary.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-1/igt@kms_frontbuffer_tracking@hdr-shrfb-scaledprimary.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-dg2:          [SKIP][434] ([i915#16518] / [i915#3555] / [i915#8228]) -> [PASS][435]
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_hdr@static-toggle-dpms.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-10/igt@kms_hdr@static-toggle-dpms.html
    - shard-rkl:          [SKIP][436] ([i915#3555] / [i915#8228]) -> [PASS][437]
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_hdr@static-toggle-dpms.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-1/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier:
    - shard-dg1:          [TIMEOUT][438] ([i915#16503]) -> [PASS][439] +3 other tests pass
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-18/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier.html
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-13/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:
    - shard-mtlp:         [INCOMPLETE][440] ([i915#16503]) -> [PASS][441] +2 other tests pass
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers:
    - shard-dg2:          [INCOMPLETE][442] ([i915#16503]) -> [PASS][443] +7 other tests pass
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:
    - shard-rkl:          [INCOMPLETE][444] ([i915#16503]) -> [PASS][445]
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg2:          [SKIP][446] ([i915#15073]) -> [PASS][447] +1 other test pass
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_pm_rpm@dpms-lpsp.html
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@i2c:
    - shard-dg1:          [DMESG-WARN][448] ([i915#4423]) -> [PASS][449]
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-13/igt@kms_pm_rpm@i2c.html
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_pm_rpm@i2c.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-rkl:          [SKIP][450] ([i915#15073]) -> [PASS][451]
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp.html
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-dg1:          [SKIP][452] ([i915#15073]) -> [PASS][453] +2 other tests pass
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-17/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled:
    - shard-dg2:          [TIMEOUT][454] ([i915#16503]) -> [PASS][455] +4 other tests pass
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled.html
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled.html

  
#### Warnings ####

  * igt@api_intel_bb@blit-reloc-purge-cache:
    - shard-rkl:          [SKIP][456] ([i915#8411]) -> [SKIP][457] ([i915#14544] / [i915#8411])
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@api_intel_bb@blit-reloc-purge-cache.html
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@api_intel_bb@blit-reloc-purge-cache.html

  * igt@gem_ctx_sseu@mmap-args:
    - shard-rkl:          [SKIP][458] ([i915#14544] / [i915#280]) -> [SKIP][459] ([i915#280])
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_ctx_sseu@mmap-args.html
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@gem_ctx_sseu@mmap-args.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-rkl:          [SKIP][460] ([i915#14544] / [i915#6344]) -> [SKIP][461] ([i915#6344])
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_exec_capture@capture-recoverable.html
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_reloc@basic-cpu-noreloc:
    - shard-rkl:          [SKIP][462] ([i915#14544] / [i915#3281]) -> [SKIP][463] ([i915#3281]) +2 other tests skip
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-noreloc.html
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@gem_exec_reloc@basic-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-write-read:
    - shard-rkl:          [SKIP][464] ([i915#3281]) -> [SKIP][465] ([i915#14544] / [i915#3281]) +6 other tests skip
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@gem_exec_reloc@basic-write-read.html
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@gem_exec_reloc@basic-write-read.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-rkl:          [SKIP][466] ([i915#14544] / [i915#4613]) -> [SKIP][467] ([i915#4613]) +2 other tests skip
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_lmem_swapping@heavy-random.html
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_partial_pwrite_pread@writes-after-reads-uncached:
    - shard-rkl:          [SKIP][468] ([i915#14544] / [i915#3282]) -> [SKIP][469] ([i915#3282]) +2 other tests skip
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html

  * igt@gem_readwrite@read-bad-handle:
    - shard-rkl:          [SKIP][470] ([i915#3282]) -> [SKIP][471] ([i915#14544] / [i915#3282])
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@gem_readwrite@read-bad-handle.html
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@gem_readwrite@read-bad-handle.html

  * igt@gem_tiled_pread_basic@basic:
    - shard-rkl:          [SKIP][472] ([i915#14544] / [i915#15656]) -> [SKIP][473] ([i915#15656])
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_tiled_pread_basic@basic.html
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@gem_tiled_pread_basic@basic.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-rkl:          [SKIP][474] ([i915#14544] / [i915#3297]) -> [SKIP][475] ([i915#3297])
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-after-close.html
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@i915_pm_freq_api@freq-basic-api:
    - shard-rkl:          [SKIP][476] ([i915#14544] / [i915#8399]) -> [SKIP][477] ([i915#8399])
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@i915_pm_freq_api@freq-basic-api.html
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@i915_pm_freq_api@freq-basic-api.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-rkl:          [SKIP][478] ([i915#14544] / [i915#6590]) -> [SKIP][479] ([i915#6590]) +1 other test skip
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@i915_pm_freq_mult@media-freq@gt0.html
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          [SKIP][480] ([i915#14544] / [i915#4387]) -> [SKIP][481] ([i915#4387])
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@i915_pm_sseu@full-enable.html
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@i915_pm_sseu@full-enable.html

  * igt@i915_query@query-topology-unsupported:
    - shard-rkl:          [SKIP][482] ([i915#16079]) -> [SKIP][483] ([i915#14544] / [i915#16079])
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@i915_query@query-topology-unsupported.html
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@i915_query@query-topology-unsupported.html

  * igt@intel_hwmon@hwmon-read:
    - shard-rkl:          [SKIP][484] ([i915#7707]) -> [SKIP][485] ([i915#14544] / [i915#7707])
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@intel_hwmon@hwmon-read.html
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@intel_hwmon@hwmon-read.html

  * igt@intel_hwmon@hwmon-write:
    - shard-rkl:          [SKIP][486] ([i915#14544] / [i915#7707]) -> [SKIP][487] ([i915#7707])
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@intel_hwmon@hwmon-write.html
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@intel_hwmon@hwmon-write.html

  * igt@kms_async_flips@basic-modeset-with-all-modifiers-formats:
    - shard-snb:          [TIMEOUT][488] ([i915#16503]) -> [INCOMPLETE][489] ([i915#16503])
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-snb6/igt@kms_async_flips@basic-modeset-with-all-modifiers-formats.html
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-snb5/igt@kms_async_flips@basic-modeset-with-all-modifiers-formats.html
    - shard-mtlp:         [TIMEOUT][490] ([i915#16503]) -> [INCOMPLETE][491] ([i915#16503])
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_async_flips@basic-modeset-with-all-modifiers-formats.html
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_async_flips@basic-modeset-with-all-modifiers-formats.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-dg1:          [SKIP][492] ([i915#1769] / [i915#3555]) -> [INCOMPLETE][493] ([i915#16503])
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-15/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing:
    - shard-mtlp:         [INCOMPLETE][494] ([i915#10056] / [i915#16503]) -> [TIMEOUT][495] ([i915#16503])
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-5/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing.html
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
    - shard-rkl:          [SKIP][496] ([i915#5286]) -> [SKIP][497] ([i915#14544] / [i915#5286]) +1 other test skip
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-0:
    - shard-rkl:          [SKIP][498] ([i915#14544] / [i915#5286]) -> [SKIP][499] ([i915#5286])
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-rkl:          [SKIP][500] ([i915#3638]) -> [SKIP][501] ([i915#14544] / [i915#3638]) +2 other tests skip
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rotate-270.html
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-rkl:          [SKIP][502] ([i915#14544] / [i915#3828]) -> [SKIP][503] ([i915#3828])
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-dg2:          [TIMEOUT][504] ([i915#16503]) -> [INCOMPLETE][505] ([i915#16503]) +9 other tests incomplete
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-270:
    - shard-rkl:          [SKIP][506] ([i915#14544] / [i915#3638]) -> [SKIP][507] ([i915#3638])
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-dg2:          [SKIP][508] ([i915#4538] / [i915#5190]) -> [INCOMPLETE][509] ([i915#16503]) +2 other tests incomplete
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-mtlp:         [INCOMPLETE][510] ([i915#16503]) -> [SKIP][511]
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-mtlp:         [SKIP][512] -> [INCOMPLETE][513] ([i915#16503])
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][514] ([i915#14544] / [i915#6095]) -> [SKIP][515] ([i915#6095]) +1 other test skip
   [514]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html
   [515]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc:
    - shard-dg2:          [TIMEOUT][516] ([i915#16503]) -> [SKIP][517] ([i915#10307] / [i915#6095]) +1 other test skip
   [516]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html
   [517]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-dg2:          [TIMEOUT][518] ([i915#16503]) -> [SKIP][519] ([i915#12313])
   [518]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
   [519]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs:
    - shard-dg1:          [INCOMPLETE][520] ([i915#16503]) -> [TIMEOUT][521] ([i915#16503]) +8 other tests timeout
   [520]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs.html
   [521]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-17/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:
    - shard-mtlp:         [TIMEOUT][522] ([i915#16503]) -> [SKIP][523] ([i915#6095]) +3 other tests skip
   [522]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html
   [523]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][524] ([i915#12313] / [i915#14544]) -> [SKIP][525] ([i915#12313])
   [524]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html
   [525]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs:
    - shard-dg2:          [TIMEOUT][526] ([i915#16503]) -> [SKIP][527] ([i915#10307] / [i915#10434] / [i915#6095])
   [526]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs.html
   [527]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc:
    - shard-rkl:          [TIMEOUT][528] ([i915#16503]) -> [CRASH][529] ([i915#16503])
   [528]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc.html
   [529]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          [SKIP][530] ([i915#6095]) -> [SKIP][531] ([i915#14544] / [i915#6095]) +1 other test skip
   [530]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-2.html
   [531]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs:
    - shard-rkl:          [SKIP][532] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][533] ([i915#14098] / [i915#6095]) +5 other tests skip
   [532]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs.html
   [533]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc:
    - shard-dg2:          [TIMEOUT][534] ([i915#16503]) -> [INCOMPLETE][535] ([i915#14694] / [i915#16503])
   [534]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc.html
   [535]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          [SKIP][536] ([i915#14098] / [i915#6095]) -> [SKIP][537] ([i915#14098] / [i915#14544] / [i915#6095]) +3 other tests skip
   [536]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-c-hdmi-a-2.html
   [537]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:
    - shard-dg2:          [TIMEOUT][538] ([i915#16503]) -> [CRASH][539] ([i915#16503])
   [538]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-7/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
   [539]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs:
    - shard-dg2:          [SKIP][540] ([i915#10307] / [i915#6095]) -> [TIMEOUT][541] ([i915#16503]) +1 other test timeout
   [540]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs.html
   [541]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc:
    - shard-rkl:          [TIMEOUT][542] ([i915#16503]) -> [INCOMPLETE][543] ([i915#16503]) +1 other test incomplete
   [542]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc.html
   [543]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-7/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc.html
    - shard-dg1:          [TIMEOUT][544] ([i915#16503]) -> [CRASH][545] ([i915#16503])
   [544]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-19/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc.html
   [545]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc.html
    - shard-dg2:          [SKIP][546] ([i915#10307] / [i915#6095]) -> [CRASH][547] ([i915#16503])
   [546]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc.html
   [547]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-rc-ccs-cc:
    - shard-mtlp:         [SKIP][548] ([i915#6095]) -> [TIMEOUT][549] ([i915#16503]) +1 other test timeout
   [548]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-5/igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-rc-ccs-cc.html
   [549]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-rc-ccs-cc.html
    - shard-dg2:          [SKIP][550] ([i915#10307] / [i915#6095]) -> [INCOMPLETE][551] ([i915#16503]) +1 other test incomplete
   [550]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-rc-ccs-cc.html
   [551]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_cdclk@mode-transition:
    - shard-rkl:          [SKIP][552] ([i915#3742]) -> [SKIP][553] ([i915#14544] / [i915#3742])
   [552]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_cdclk@mode-transition.html
   [553]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium_color_pipeline@plane-lut3d-green-only:
    - shard-rkl:          [SKIP][554] ([i915#14544] / [i915#16471]) -> [SKIP][555] ([i915#16471])
   [554]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_chamelium_color_pipeline@plane-lut3d-green-only.html
   [555]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_chamelium_color_pipeline@plane-lut3d-green-only.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-rkl:          [SKIP][556] ([i915#11151] / [i915#7828]) -> [SKIP][557] ([i915#11151] / [i915#14544] / [i915#7828]) +3 other tests skip
   [556]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html
   [557]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
    - shard-rkl:          [SKIP][558] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][559] ([i915#11151] / [i915#7828]) +3 other tests skip
   [558]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html
   [559]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html

  * igt@kms_content_protection@dp-mst-type-0-suspend-resume:
    - shard-rkl:          [SKIP][560] ([i915#14544] / [i915#15330]) -> [SKIP][561] ([i915#15330])
   [560]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html
   [561]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          [FAIL][562] ([i915#7173]) -> [SKIP][563] ([i915#15865])
   [562]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_content_protection@legacy.html
   [563]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@mei-interface:
    - shard-rkl:          [SKIP][564] ([i915#15865]) -> [SKIP][565] ([i915#14544] / [i915#15865])
   [564]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_content_protection@mei-interface.html
   [565]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@uevent:
    - shard-dg2:          [SKIP][566] ([i915#15865]) -> [FAIL][567] ([i915#1339] / [i915#7173])
   [566]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_content_protection@uevent.html
   [567]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-10/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-rkl:          [SKIP][568] ([i915#14544] / [i915#3555]) -> [SKIP][569] ([i915#3555]) +1 other test skip
   [568]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-32x10.html
   [569]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-dg2:          [SKIP][570] ([i915#13049] / [i915#3359]) -> [SKIP][571] ([i915#13049])
   [570]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html
   [571]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-rkl:          [SKIP][572] ([i915#14544]) -> [SKIP][573] +27 other tests skip
   [572]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
   [573]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
    - shard-dg2:          [INCOMPLETE][574] ([i915#10056] / [i915#16503]) -> [SKIP][575] ([i915#13046] / [i915#5354])
   [574]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
   [575]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-3/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-rkl:          [SKIP][576] ([i915#14544] / [i915#4103]) -> [INCOMPLETE][577] ([i915#16503])
   [576]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
   [577]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-rkl:          [SKIP][578] ([i915#14544] / [i915#9723]) -> [SKIP][579] ([i915#9723])
   [578]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
   [579]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dsc@dsc-with-bpc-formats-ultrajoiner:
    - shard-rkl:          [SKIP][580] ([i915#16361]) -> [SKIP][581] ([i915#14544] / [i915#16361]) +2 other tests skip
   [580]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_dsc@dsc-with-bpc-formats-ultrajoiner.html
   [581]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_dsc@dsc-with-bpc-formats-ultrajoiner.html

  * igt@kms_dsc@dsc-with-output-formats-ultrajoiner:
    - shard-rkl:          [SKIP][582] ([i915#14544] / [i915#16361]) -> [SKIP][583] ([i915#16361]) +1 other test skip
   [582]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats-ultrajoiner.html
   [583]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_dsc@dsc-with-output-formats-ultrajoiner.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc-bigjoiner:
    - shard-mtlp:         [SKIP][584] ([i915#16361]) -> [TIMEOUT][585] ([i915#16503])
   [584]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-8/igt@kms_dsc@dsc-with-output-formats-with-bpc-bigjoiner.html
   [585]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_dsc@dsc-with-output-formats-with-bpc-bigjoiner.html

  * igt@kms_feature_discovery@psr2:
    - shard-rkl:          [SKIP][586] ([i915#14544] / [i915#658]) -> [SKIP][587] ([i915#658])
   [586]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_feature_discovery@psr2.html
   [587]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-dg2:          [INCOMPLETE][588] ([i915#12314] / [i915#16503]) -> [SKIP][589] ([i915#9934])
   [588]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html
   [589]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-4/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@2x-flip-vs-panning-interruptible:
    - shard-rkl:          [SKIP][590] ([i915#14544] / [i915#9934]) -> [SKIP][591] ([i915#9934]) +2 other tests skip
   [590]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_flip@2x-flip-vs-panning-interruptible.html
   [591]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_flip@2x-flip-vs-panning-interruptible.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-dg2:          [SKIP][592] ([i915#9934]) -> [CRASH][593] ([i915#16503])
   [592]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
   [593]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
    - shard-dg1:          [INCOMPLETE][594] ([i915#16503]) -> [SKIP][595] ([i915#9934]) +1 other test skip
   [594]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html
   [595]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-18/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:
    - shard-dg1:          [INCOMPLETE][596] ([i915#16503] / [i915#6113]) -> [TIMEOUT][597] ([i915#16503])
   [596]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [597]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-17/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
    - shard-tglu:         [INCOMPLETE][598] ([i915#12314] / [i915#16503] / [i915#16509]) -> [INCOMPLETE][599] ([i915#16503] / [i915#16509]) +3 other tests incomplete
   [598]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-tglu-7/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html
   [599]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-8/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-mtlp:         [INCOMPLETE][600] ([i915#16472] / [i915#16503] / [i915#6113]) -> [WARN][601] ([i915#16503])
   [600]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible.html
   [601]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset:
    - shard-mtlp:         [WARN][602] ([i915#16503]) -> [INCOMPLETE][603] ([i915#16472] / [i915#16503])
   [602]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-5/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset.html
   [603]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:
    - shard-mtlp:         [INCOMPLETE][604] ([i915#16500] / [i915#16503]) -> [SKIP][605] ([i915#3555] / [i915#8810] / [i915#8813]) +2 other tests skip
   [604]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html
   [605]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling:
    - shard-glk:          [INCOMPLETE][606] ([i915#16503]) -> [SKIP][607]
   [606]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk6/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.html
   [607]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling:
    - shard-mtlp:         [SKIP][608] ([i915#3555] / [i915#8810] / [i915#8813]) -> [INCOMPLETE][609] ([i915#16500] / [i915#16503])
   [608]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html
   [609]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
    - shard-dg2:          [INCOMPLETE][610] ([i915#16503]) -> [SKIP][611] ([i915#15643]) +1 other test skip
   [610]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html
   [611]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-dg2:          [INCOMPLETE][612] ([i915#16503]) -> [SKIP][613] ([i915#15643] / [i915#5190])
   [612]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [613]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
    - shard-rkl:          [SKIP][614] ([i915#14544] / [i915#15643]) -> [SKIP][615] ([i915#15643]) +2 other tests skip
   [614]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
   [615]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
    - shard-dg2:          [SKIP][616] ([i915#15643] / [i915#5190]) -> [INCOMPLETE][617] ([i915#16503])
   [616]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html
   [617]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-dg1:          [TIMEOUT][618] ([i915#16503]) -> [INCOMPLETE][619] ([i915#16503]) +7 other tests incomplete
   [618]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
   [619]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
    - shard-glk:          [SKIP][620] -> [INCOMPLETE][621] ([i915#16503]) +1 other test incomplete
   [620]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
   [621]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
    - shard-rkl:          [SKIP][622] ([i915#15643]) -> [SKIP][623] ([i915#14544] / [i915#15643])
   [622]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
   [623]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-dg2:          [CRASH][624] ([i915#16503]) -> [INCOMPLETE][625] ([i915#16503]) +3 other tests incomplete
   [624]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html
   [625]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
    - shard-dg2:          [SKIP][626] ([i915#15643]) -> [TIMEOUT][627] ([i915#16503])
   [626]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
   [627]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [INCOMPLETE][628] ([i915#16503]) -> [SKIP][629] ([i915#15989]) +1 other test skip
   [628]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-6/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-mmap-cpu.html
   [629]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-pwrite:
    - shard-dg2:          [SKIP][630] ([i915#15989]) -> [CRASH][631] ([i915#16503])
   [630]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-pwrite.html
   [631]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-shrfb-draw-mmap-wc:
    - shard-rkl:          [INCOMPLETE][632] ([i915#16503]) -> [SKIP][633] ([i915#15989]) +2 other tests skip
   [632]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-shrfb-draw-mmap-wc.html
   [633]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-glk:          [TIMEOUT][634] ([i915#16503]) -> [SKIP][635] +3 other tests skip
   [634]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk8/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [635]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk1/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
    - shard-rkl:          [SKIP][636] ([i915#15989]) -> [INCOMPLETE][637] ([i915#16503]) +4 other tests incomplete
   [636]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [637]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-render:
    - shard-dg2:          [SKIP][638] ([i915#15989]) -> [TIMEOUT][639] ([i915#16503])
   [638]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-render.html
   [639]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-10/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-render.html
    - shard-dg1:          [INCOMPLETE][640] ([i915#16503]) -> [SKIP][641] ([i915#15989])
   [640]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-18/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-render.html
   [641]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-13/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-render:
    - shard-dg2:          [SKIP][642] ([i915#15989]) -> [INCOMPLETE][643] ([i915#16503]) +2 other tests incomplete
   [642]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-1/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-render.html
   [643]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          [TIMEOUT][644] ([i915#16503]) -> [SKIP][645] ([i915#15989]) +1 other test skip
   [644]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-render.html
   [645]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-render:
    - shard-dg1:          [SKIP][646] ([i915#15989]) -> [INCOMPLETE][647] ([i915#16503])
   [646]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-render.html
   [647]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-18/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-glk:          [SKIP][648] -> [TIMEOUT][649] ([i915#16503]) +1 other test timeout
   [648]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk6/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
   [649]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk8/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-pwrite:
    - shard-rkl:          [SKIP][650] -> [INCOMPLETE][651] ([i915#16503]) +14 other tests incomplete
   [650]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-pwrite.html
   [651]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-mmap-gtt:
    - shard-rkl:          [INCOMPLETE][652] ([i915#16503]) -> [SKIP][653] +7 other tests skip
   [652]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html
   [653]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html
    - shard-dg1:          [INCOMPLETE][654] ([i915#16503]) -> [SKIP][655] ([i915#15990]) +15 other tests skip
   [654]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html
   [655]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-17/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-render:
    - shard-rkl:          [SKIP][656] -> [SKIP][657] ([i915#14544]) +19 other tests skip
   [656]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-render.html
   [657]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          [INCOMPLETE][658] ([i915#16503]) -> [SKIP][659] ([i915#15991])
   [658]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html
   [659]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc:
    - shard-snb:          [SKIP][660] -> [INCOMPLETE][661] ([i915#16503])
   [660]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-snb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html
   [661]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-snb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          [INCOMPLETE][662] ([i915#16503]) -> [SKIP][663] ([i915#15102]) +1 other test skip
   [662]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html
   [663]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          [INCOMPLETE][664] ([i915#16503]) -> [SKIP][665] ([i915#15104] / [i915#15990])
   [664]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html
   [665]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-wc:
    - shard-dg1:          [SKIP][666] ([i915#15104] / [i915#15990]) -> [INCOMPLETE][667] ([i915#16503])
   [666]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-wc.html
   [667]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-pwrite:
    - shard-snb:          [SKIP][668] -> [CRASH][669] ([i915#16503])
   [668]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-snb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-pwrite.html
   [669]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-snb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render:
    - shard-dg2:          [SKIP][670] ([i915#15102]) -> [INCOMPLETE][671] ([i915#16503]) +6 other tests incomplete
   [670]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render.html
   [671]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-rkl:          [SKIP][672] ([i915#15102] / [i915#3023]) -> [SKIP][673] ([i915#14544] / [i915#15102] / [i915#3023]) +5 other tests skip
   [672]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
   [673]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-rkl:          [SKIP][674] ([i915#15102] / [i915#3023]) -> [INCOMPLETE][675] ([i915#16503]) +1 other test incomplete
   [674]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html
   [675]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg1:          [SKIP][676] -> [INCOMPLETE][677] ([i915#16503]) +11 other tests incomplete
   [676]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu.html
   [677]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][678] ([i915#1825]) -> [INCOMPLETE][679] ([i915#16503]) +2 other tests incomplete
   [678]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
   [679]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
    - shard-dg1:          [INCOMPLETE][680] ([i915#16503]) -> [SKIP][681] ([i915#15990] / [i915#8708]) +1 other test skip
   [680]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
   [681]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          [INCOMPLETE][682] ([i915#16503]) -> [SKIP][683] ([i915#1825])
   [682]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [683]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-dg1:          [SKIP][684] ([i915#15990] / [i915#8708]) -> [INCOMPLETE][685] ([i915#16503]) +4 other tests incomplete
   [684]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html
   [685]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:
    - shard-dg1:          [INCOMPLETE][686] ([i915#16503]) -> [SKIP][687] +14 other tests skip
   [686]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite.html
   [687]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][688] ([i915#14544] / [i915#1825]) -> [INCOMPLETE][689] ([i915#16503])
   [688]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
   [689]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-rkl:          [SKIP][690] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][691] ([i915#15102] / [i915#3023]) +4 other tests skip
   [690]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
   [691]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt:
    - shard-rkl:          [SKIP][692] ([i915#15102]) -> [INCOMPLETE][693] ([i915#16503]) +5 other tests incomplete
   [692]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt.html
   [693]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt.html
    - shard-dg1:          [CRASH][694] ([i915#16503]) -> [SKIP][695] ([i915#15102])
   [694]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt.html
   [695]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-wc:
    - shard-rkl:          [INCOMPLETE][696] ([i915#16503]) -> [SKIP][697] ([i915#15102]) +2 other tests skip
   [696]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-wc.html
   [697]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-shrfb-draw-mmap-cpu:
    - shard-snb:          [INCOMPLETE][698] ([i915#16503]) -> [SKIP][699]
   [698]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-snb4/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html
   [699]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-snb6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-cur-indfb-draw-render:
    - shard-dg1:          [SKIP][700] ([i915#15102]) -> [INCOMPLETE][701] ([i915#16503]) +5 other tests incomplete
   [700]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-cur-indfb-draw-render.html
   [701]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-indfb-draw-render:
    - shard-dg2:          [CRASH][702] ([i915#16503]) -> [SKIP][703] ([i915#15102]) +1 other test skip
   [702]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-indfb-draw-render.html
   [703]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-dg1:          [INCOMPLETE][704] ([i915#16503]) -> [SKIP][705] ([i915#15102]) +6 other tests skip
   [704]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html
   [705]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-wc:
    - shard-tglu:         [SKIP][706] ([i915#15102]) -> [INCOMPLETE][707] ([i915#16503]) +4 other tests incomplete
   [706]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-tglu-3/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-wc.html
   [707]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-5/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-render:
    - shard-dg1:          [CRASH][708] ([i915#16503]) -> [INCOMPLETE][709] ([i915#16503])
   [708]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-render.html
   [709]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-pri-indfb-draw-render:
    - shard-tglu:         [SKIP][710] -> [INCOMPLETE][711] ([i915#16503]) +3 other tests incomplete
   [710]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-pri-indfb-draw-render.html
   [711]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-2/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-pri-indfb-draw-render.html
    - shard-dg1:          [SKIP][712] -> [CRASH][713] ([i915#16503])
   [712]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-pri-indfb-draw-render.html
   [713]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
    - shard-dg2:          [SKIP][714] ([i915#15991]) -> [INCOMPLETE][715] ([i915#16503]) +1 other test incomplete
   [714]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html
   [715]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-pri-shrfb-draw-render:
    - shard-dg1:          [INCOMPLETE][716] ([i915#16503]) -> [CRASH][717] ([i915#16503]) +4 other tests crash
   [716]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-pri-shrfb-draw-render.html
   [717]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-rgb565-draw-mmap-wc:
    - shard-rkl:          [SKIP][718] ([i915#15102]) -> [SKIP][719] ([i915#14544] / [i915#15102]) +4 other tests skip
   [718]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-rgb565-draw-mmap-wc.html
   [719]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-rgb565-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@hdr-suspend:
    - shard-glk:          [SKIP][720] -> [INCOMPLETE][721] ([i915#16056])
   [720]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk6/igt@kms_frontbuffer_tracking@hdr-suspend.html
   [721]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk8/igt@kms_frontbuffer_tracking@hdr-suspend.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
    - shard-dg2:          [SKIP][722] ([i915#10433] / [i915#15102]) -> [SKIP][723] ([i915#15102]) +5 other tests skip
   [722]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
   [723]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][724] ([i915#14544] / [i915#1825]) -> [SKIP][725] ([i915#1825]) +2 other tests skip
   [724]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
   [725]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-indfb-draw-pwrite:
    - shard-tglu:         [INCOMPLETE][726] ([i915#16503]) -> [SKIP][727] ([i915#15102]) +1 other test skip
   [726]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-tglu-6/igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-indfb-draw-pwrite.html
   [727]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-8/igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-mmap-gtt:
    - shard-dg2:          [INCOMPLETE][728] ([i915#16503]) -> [SKIP][729] ([i915#15990]) +2 other tests skip
   [728]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html
   [729]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-rkl:          [SKIP][730] ([i915#14544] / [i915#15102]) -> [SKIP][731] ([i915#15102]) +7 other tests skip
   [730]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-indfb-draw-pwrite.html
   [731]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg1:          [SKIP][732] ([i915#15990]) -> [INCOMPLETE][733] ([i915#16503]) +11 other tests incomplete
   [732]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-13/igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-cur-indfb-draw-mmap-wc.html
   [733]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-15/igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][734] ([i915#15990]) -> [INCOMPLETE][735] ([i915#16503])
   [734]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-1/igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-cur-indfb-draw-mmap-wc.html
   [735]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-3/igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_joiner@basic-force-big-joiner:
    - shard-rkl:          [SKIP][736] ([i915#15459]) -> [SKIP][737] ([i915#14544] / [i915#15459])
   [736]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_joiner@basic-force-big-joiner.html
   [737]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_joiner@basic-force-big-joiner.html

  * igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping:
    - shard-rkl:          [SKIP][738] ([i915#15709]) -> [SKIP][739] ([i915#14544] / [i915#15709])
   [738]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping.html
   [739]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping:
    - shard-dg1:          [SKIP][740] ([i915#15709]) -> [INCOMPLETE][741] ([i915#13026] / [i915#16503]) +2 other tests incomplete
   [740]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html
   [741]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-15/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier:
    - shard-dg1:          [INCOMPLETE][742] ([i915#13026] / [i915#16503]) -> [SKIP][743] ([i915#15709]) +3 other tests skip
   [742]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier.html
   [743]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-19/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier.html

  * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping:
    - shard-dg2:          [INCOMPLETE][744] ([i915#13026] / [i915#16503]) -> [SKIP][745] ([i915#15709]) +1 other test skip
   [744]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping.html
   [745]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier:
    - shard-dg2:          [SKIP][746] ([i915#15709]) -> [INCOMPLETE][747] ([i915#13026] / [i915#16503])
   [746]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-6/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier.html
   [747]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-3/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier.html

  * igt@kms_plane@pixel-format-linear-modifier-source-clamping:
    - shard-dg1:          [INCOMPLETE][748] ([i915#13026] / [i915#16503]) -> [TIMEOUT][749] ([i915#16503])
   [748]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-14/igt@kms_plane@pixel-format-linear-modifier-source-clamping.html
   [749]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-16/igt@kms_plane@pixel-format-linear-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-x-tiled-modifier-source-clamping:
    - shard-dg2:          [CRASH][750] ([i915#16503]) -> [INCOMPLETE][751] ([i915#13026] / [i915#16503])
   [750]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_plane@pixel-format-x-tiled-modifier-source-clamping.html
   [751]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@kms_plane@pixel-format-x-tiled-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping:
    - shard-dg1:          [INCOMPLETE][752] ([i915#13026] / [i915#16503] / [i915#4423]) -> [INCOMPLETE][753] ([i915#13026] / [i915#16503])
   [752]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-16/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping.html
   [753]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-15/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier:
    - shard-mtlp:         [INCOMPLETE][754] ([i915#13026] / [i915#16503]) -> [SKIP][755] ([i915#15709])
   [754]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-5/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier.html
   [755]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier.html

  * igt@kms_plane@pixel-format-yf-tiled-ccs-modifier:
    - shard-rkl:          [SKIP][756] ([i915#14544] / [i915#15709]) -> [SKIP][757] ([i915#15709]) +1 other test skip
   [756]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier.html
   [757]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier.html

  * igt@kms_plane_multiple@2x-tiling-x:
    - shard-dg1:          [SKIP][758] ([i915#13958]) -> [SKIP][759] ([i915#13958] / [i915#4423])
   [758]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-13/igt@kms_plane_multiple@2x-tiling-x.html
   [759]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-13/igt@kms_plane_multiple@2x-tiling-x.html

  * igt@kms_plane_multiple@2x-tiling-yf:
    - shard-rkl:          [SKIP][760] ([i915#13958]) -> [SKIP][761] ([i915#13958] / [i915#14544])
   [760]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_plane_multiple@2x-tiling-yf.html
   [761]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-yf.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation:
    - shard-rkl:          [INCOMPLETE][762] ([i915#16503]) -> [SKIP][763] ([i915#15329])
   [762]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-4/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation.html
   [763]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation.html
    - shard-mtlp:         [SKIP][764] ([i915#15329]) -> [INCOMPLETE][765] ([i915#16503]) +1 other test incomplete
   [764]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-8/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation.html
   [765]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
    - shard-dg1:          [INCOMPLETE][766] ([i915#16503]) -> [SKIP][767] ([i915#15329]) +2 other tests skip
   [766]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html
   [767]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-17/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:
    - shard-rkl:          [SKIP][768] ([i915#14544] / [i915#15329]) -> [SKIP][769] ([i915#15329]) +3 other tests skip
   [768]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html
   [769]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-rkl:          [SKIP][770] ([i915#14544] / [i915#15329] / [i915#3555]) -> [INCOMPLETE][771] ([i915#16503])
   [770]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
   [771]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:
    - shard-dg2:          [INCOMPLETE][772] ([i915#16503]) -> [WARN][773] ([i915#16503])
   [772]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html
   [773]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a:
    - shard-dg2:          [INCOMPLETE][774] ([i915#16503]) -> [CRASH][775] ([i915#16503])
   [774]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html
   [775]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:
    - shard-mtlp:         [SKIP][776] ([i915#15329] / [i915#3555] / [i915#6953]) -> [TIMEOUT][777] ([i915#16503])
   [776]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html
   [777]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html

  * igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a:
    - shard-dg2:          [CRASH][778] ([i915#16503]) -> [TIMEOUT][779] ([i915#16503]) +1 other test timeout
   [778]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a.html
   [779]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a.html
    - shard-mtlp:         [SKIP][780] ([i915#15329]) -> [TIMEOUT][781] ([i915#16503])
   [780]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a.html
   [781]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a.html

  * igt@kms_pm_backlight@bad-brightness:
    - shard-rkl:          [SKIP][782] ([i915#12343] / [i915#14544] / [i915#5354]) -> [SKIP][783] ([i915#12343] / [i915#5354])
   [782]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_pm_backlight@bad-brightness.html
   [783]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_pm_backlight@bad-brightness.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-rkl:          [SKIP][784] ([i915#12343] / [i915#5354]) -> [SKIP][785] ([i915#12343] / [i915#14544] / [i915#5354])
   [784]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_pm_backlight@basic-brightness.html
   [785]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_dc@dc5-pageflip-negative:
    - shard-dg1:          [SKIP][786] ([i915#9685]) -> [SKIP][787] ([i915#4423] / [i915#9685])
   [786]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-13/igt@kms_pm_dc@dc5-pageflip-negative.html
   [787]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-13/igt@kms_pm_dc@dc5-pageflip-negative.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-rkl:          [SKIP][788] ([i915#14544] / [i915#15739]) -> [SKIP][789] ([i915#15739])
   [788]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html
   [789]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:
    - shard-rkl:          [SKIP][790] ([i915#11520]) -> [SKIP][791] ([i915#11520] / [i915#14544]) +2 other tests skip
   [790]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html
   [791]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:
    - shard-dg1:          [SKIP][792] ([i915#11520] / [i915#4423]) -> [SKIP][793] ([i915#11520])
   [792]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html
   [793]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-15/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:
    - shard-rkl:          [SKIP][794] ([i915#11520] / [i915#14544]) -> [SKIP][795] ([i915#11520]) +3 other tests skip
   [794]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html
   [795]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
    - shard-mtlp:         [SKIP][796] ([i915#12316]) -> [INCOMPLETE][797] ([i915#16503])
   [796]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-8/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html
   [797]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-a-edp-1:
    - shard-mtlp:         [SKIP][798] ([i915#9808]) -> [INCOMPLETE][799] ([i915#16503])
   [798]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-8/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-a-edp-1.html
   [799]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-a-edp-1.html

  * igt@kms_psr@psr-sprite-plane-move:
    - shard-rkl:          [SKIP][800] ([i915#1072] / [i915#9732]) -> [SKIP][801] ([i915#1072] / [i915#14544] / [i915#9732]) +8 other tests skip
   [800]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_psr@psr-sprite-plane-move.html
   [801]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_psr@psr-sprite-plane-move.html

  * igt@kms_psr@psr2-cursor-mmap-gtt:
    - shard-rkl:          [SKIP][802] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][803] ([i915#1072] / [i915#9732]) +7 other tests skip
   [802]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_psr@psr2-cursor-mmap-gtt.html
   [803]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_psr@psr2-cursor-mmap-gtt.html

  * igt@kms_rotation_crc@primary-rotation-90:
    - shard-dg2:          [SKIP][804] ([i915#15867]) -> [SKIP][805] ([i915#12755] / [i915#15867])
   [804]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_rotation_crc@primary-rotation-90.html
   [805]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_rotation_crc@primary-rotation-90.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg2:          [SKIP][806] ([i915#15867] / [i915#5190]) -> [SKIP][807] ([i915#12755] / [i915#15867] / [i915#5190])
   [806]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
   [807]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_vrr@max-min:
    - shard-rkl:          [SKIP][808] ([i915#9906]) -> [SKIP][809] ([i915#14544] / [i915#9906])
   [808]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_vrr@max-min.html
   [809]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_vrr@max-min.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-rkl:          [SKIP][810] ([i915#14544] / [i915#9906]) -> [SKIP][811] ([i915#9906])
   [810]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-virtual.html
   [811]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_vrr@seamless-rr-switch-virtual.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-rkl:          [SKIP][812] ([i915#14544] / [i915#8516]) -> [SKIP][813] ([i915#8516])
   [812]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@perf_pmu@rc6-all-gts.html
   [813]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@perf_pmu@rc6-all-gts.html

  * igt@sriov_basic@enable-vfs-autoprobe-on:
    - shard-rkl:          [SKIP][814] ([i915#9917]) -> [SKIP][815] ([i915#14544] / [i915#9917])
   [814]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@sriov_basic@enable-vfs-autoprobe-on.html
   [815]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-on.html

  * igt@syncobj_timeline@multi-wait-all-for-submit-available-submitted-signaled:
    - shard-dg2:          [INCOMPLETE][816] ([i915#16503]) -> [TIMEOUT][817] ([i915#16503]) +3 other tests timeout
   [816]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@syncobj_timeline@multi-wait-all-for-submit-available-submitted-signaled.html
   [817]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@syncobj_timeline@multi-wait-all-for-submit-available-submitted-signaled.html

  
  [i915#10056]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10553]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553
  [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#12169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12169
  [i915#12177]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12177
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314
  [i915#12316]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316
  [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
  [i915#12358]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358
  [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#12964]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964
  [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
  [i915#13026]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026
  [i915#13029]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#1339]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339
  [i915#13390]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688
  [i915#13691]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691
  [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
  [i915#13820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
  [i915#14152]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152
  [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
  [i915#14498]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14600]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600
  [i915#14694]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14694
  [i915#14702]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14702
  [i915#15060]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15060
  [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
  [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
  [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
  [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
  [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
  [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
  [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
  [i915#15403]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15403
  [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
  [i915#15459]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459
  [i915#15460]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460
  [i915#15500]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15500
  [i915#15582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582
  [i915#15638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15638
  [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
  [i915#15656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15656
  [i915#15662]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15662
  [i915#15709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
  [i915#15722]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15722
  [i915#15733]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733
  [i915#15739]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15739
  [i915#15778]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15778
  [i915#15865]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865
  [i915#15867]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15867
  [i915#15871]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15871
  [i915#15949]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15949
  [i915#15989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989
  [i915#15990]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990
  [i915#15991]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991
  [i915#16021]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16021
  [i915#16056]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16056
  [i915#16066]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16066
  [i915#16079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16079
  [i915#16080]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16080
  [i915#16084]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16084
  [i915#16090]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16090
  [i915#16108]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16108
  [i915#16109]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16109
  [i915#16112]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16112
  [i915#16166]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16166
  [i915#16182]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16182
  [i915#16184]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16184
  [i915#16202]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16202
  [i915#16348]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16348
  [i915#16361]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361
  [i915#16386]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16386
  [i915#16420]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16420
  [i915#16471]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16471
  [i915#16472]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16472
  [i915#16479]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16479
  [i915#16500]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16500
  [i915#16503]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503
  [i915#16509]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16509
  [i915#16510]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16510
  [i915#16512]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16512
  [i915#16513]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16513
  [i915#16514]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16514
  [i915#16516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16516
  [i915#16517]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16517
  [i915#16518]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16518
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
  [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
  [i915#3359]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3710]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3710
  [i915#3711]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3711
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
  [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
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
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
  [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
  [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7173]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173
  [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8810]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810
  [i915#8813]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813
  [i915#9067]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067
  [i915#9100]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9337]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337
  [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808
  [i915#9809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9878]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934
  [i915#9979]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9979


Build changes
-------------

  * Linux: CI_DRM_18724 -> Patchwork_167571v4

  CI-20190529: 20190529
  CI_DRM_18724: b9aebfff5a3c5049500a7bd4573815090a425f34 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8987: 8987
  Patchwork_167571v4: b9aebfff5a3c5049500a7bd4573815090a425f34 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/index.html

--===============6457836666158166152==
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
<tr><td><b>Series:</b></td><td>Vswing / Pre-emphasis Override (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/167571/">https://patchwork.freedesktop.org/series/167571/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18724_full -&gt; Patchwork_167571v4_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_167571v4_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_167571v4_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_167571v4_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-7/igt@kms_pipe_crc_basic@hang-read-crc@pipe-b-edp-1.html">FAIL</a> +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping@pipe-a-plane-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-4/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping@pipe-a-plane-0.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">WARN</a></li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_cmdline_parser:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_selftest@drm_cmdline_parser.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@kms_selftest@drm_cmdline_parser.html">SKIP</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_cursor_crc@cursor-random-512x512:<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_cursor_crc@cursor-random-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-7/igt@kms_cursor_crc@cursor-random-512x512.html">FAIL</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_18724_full and Patchwork_167571v4_full:</p>
<h3>New IGT tests (6)</h3>
<ul>
<li>
<p>igt@kms_cursor_crc@cursor-alpha-transparent@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.54] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-alpha-transparent@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.42] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-dpms@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [1.06] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-size-change@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.78] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-size-change@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.65] s</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [4.76] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_167571v4_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@gem_ccs@block-multicopy-inplace.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16348">i915#16348</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test incomplete</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@gem_ccs@ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@gem_ccs@large-ctrl-surf-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008">i915#13008</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@gem_ccs@suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16348">i915#16348</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@gem_create@create-ext-set-pat.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@gem_exec_balancer@parallel-balancer.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@gem_exec_balancer@parallel-bb-first.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@gem_exec_fence@submit.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@gem_exec_fence@submit.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3711">i915#3711</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-wb:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@gem_exec_flush@basic-batch-kernel-default-wb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539">i915#3539</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852">i915#4852</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@larger-than-life-batch:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@gem_exec_params@larger-than-life-batch.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-7/igt@gem_exec_params@larger-than-life-batch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16090">i915#16090</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3710">i915#3710</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_params@secure-non-master:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@gem_exec_params@secure-non-master.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-range:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@gem_exec_reloc@basic-range.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@gem_exec_reloc@basic-wc-read-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-gtt-active:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@gem_exec_reloc@basic-write-gtt-active.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@reorder-wide:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@gem_exec_schedule@reorder-wide.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537">i915#4537</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@gem_exec_schedule@reorder-wide.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537">i915#4537</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582">i915#7582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@gem_lmem_swapping@heavy-verify-multi.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@gem_lmem_swapping@parallel-random-verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk2/igt@gem_lmem_swapping@verify-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@gem_lmem_swapping@verify-random-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-14/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-xy:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-14/igt@gem_mmap_gtt@big-copy-xy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear-via-pagefault:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@gem_mmap_offset@clear-via-pagefault.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-7/igt@gem_mmap_offset@clear-via-pagefault.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16021">i915#16021</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16108">i915#16108</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16202">i915#16202</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-snoop:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@gem_partial_pwrite_pread@reads-snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk4/igt@gem_pread@exhaustion.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pread@snoop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@gem_pread@snoop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk10/igt@gem_pwrite@basic-exhaustion.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14702">i915#14702</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i915#4270</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-1/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131">i915#15131</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-yf-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-linear:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@gem_render_copy@y-tiled-to-vebox-linear.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-4/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@gem_userptr_blits@map-fixed-invalidate.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880">i915#4880</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-4/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@gem_userptr_blits@unsync-unmap-cycles.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@gen9_exec_parse@allowed-all.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@gen9_exec_parse@cmd-crossing-page.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@gen9_exec_parse@unaligned-access.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@most-busy-check-all@vecs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@i915_drm_fdinfo@most-busy-check-all@vecs0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073">i915#14073</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@virtual-busy-idle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@i915_drm_fdinfo@virtual-busy-idle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118">i915#14118</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@i915_pm_freq_api@freq-suspend@gt0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820">i915#13820</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590">i915#6590</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@media-rc6-accuracy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@i915_pm_rc6_residency@media-rc6-accuracy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16080">i915#16080</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16166">i915#16166</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-accuracy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@i915_pm_rc6_residency@rc6-accuracy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964">i915#12964</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-idle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498">i915#14498</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@i915_query@query-topology-known-pci-ids.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16109">i915#16109</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@i915_query@query-topology-known-pci-ids.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16109">i915#16109</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@i915_query@query-topology-known-pci-ids.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16109">i915#16109</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-4/igt@i915_query@query-topology-known-pci-ids.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16109">i915#16109</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@i915_query@test-query-geometry-subslices.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723">i915#5723</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk11/igt@i915_suspend@basic-s3-without-i915.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16182">i915#16182</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@i915_suspend@fence-restore-tiled2untiled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@framebuffer-vs-set-tiling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events-linear@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_async_flips@async-flip-with-page-flip-events-linear@pipe-a-hdmi-a-1.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test timeout</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-14/igt@kms_async_flips@async-flip-with-page-flip-events-linear@pipe-a-hdmi-a-1.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +18 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@basic-modeset-with-all-modifiers-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_async_flips@basic-modeset-with-all-modifiers-formats.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16516">i915#16516</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-tglu-4/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-9/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15662">i915#15662</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_atomic_transition@plane-toggle-modeset-transition.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@kms_atomic_transition@plane-toggle-modeset-transition.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>) +3 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-hdmi-a-3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_big_fb@4-tiled-16bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb-size-overflow:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_big_fb@4-tiled-addfb-size-overflow.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733">i915#15733</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_big_fb@linear-64bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-snb1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-snb4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +6 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_big_fb@yf-tiled-addfb-size-offset-overflow.html">SKIP</a> +67 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-14/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk11/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> +33 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-19/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +169 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-7/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +60 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +39 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-10/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs@pipe-a-dp-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +96 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16510">i915#16510</a>) +3 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16510">i915#16510</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk10/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582">i915#15582</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk11/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582">i915#15582</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +11 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk3/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> +330 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +37 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-mc-ccs.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16510">i915#16510</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs-cc@pipe-a-hdmi-a-3.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +2 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-a-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color_pipeline@plane-lut1d-lut1d:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_chamelium_color_pipeline@plane-lut1d-lut1d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16471">i915#16471</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color_pipeline@plane-lut1d-post-ctm3x4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-4/igt@kms_chamelium_color_pipeline@plane-lut1d-post-ctm3x4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16471">i915#16471</a>) +2 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_chamelium_color_pipeline@plane-lut1d-post-ctm3x4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16471">i915#16471</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-fast:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_chamelium_frames@dp-crc-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-frame-dump:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_chamelium_frames@dp-frame-dump.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_chamelium_frames@dp-frame-dump.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-storm:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_chamelium_hpd@hdmi-hpd-storm.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_chamelium_hpd@vga-hpd.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_color@deep-color.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_color@deep-color.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_color@deep-color.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9979">i915#9979</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0-hdcp14:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0-hdcp14:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_content_protection@dp-mst-type-0-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0-suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy-hdcp14:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_content_protection@legacy-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@suspend-resume:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-4/igt@kms_content_protection@suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent-hdcp14:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_content_protection@uevent-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent@pipe-a-dp-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-10/igt@kms_content_protection@uevent@pipe-a-dp-3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339">i915#1339</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-max-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_cursor_crc@cursor-onscreen-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-2/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@kms_cursor_crc@cursor-random-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-32x32:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_cursor_crc@cursor-random-32x32.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-256x85:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_cursor_crc@cursor-sliding-256x85.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9809">i915#9809</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-13/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-15/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +8 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_cursor_legacy@modeset-atomic-cursor-hotspot.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9067">i915#9067</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_display_modes@extended-mode-basic:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_display_modes@extended-mode-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13691">i915#13691</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dp-fallback:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_dp_linktrain_fallback@dp-fallback.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707">i915#13707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-bigjoiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_dsc@dsc-fractional-bpp-bigjoiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361">i915#16361</a>) +3 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_dsc@dsc-fractional-bpp-bigjoiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361">i915#16361</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-ultrajoiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_dsc@dsc-fractional-bpp-ultrajoiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361">i915#16361</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-bigjoiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_dsc@dsc-with-bpc-bigjoiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361">i915#16361</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361">i915#16361</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-8/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878">i915#9878</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_feature_discovery@chamelium.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16084">i915#16084</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@dp-mst:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_feature_discovery@dp-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337">i915#9337</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_feature_discovery@dp-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9337">i915#9337</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_flip@2x-absolute-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_flip@2x-blocking-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_flip@2x-blocking-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +4 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_flip@2x-blocking-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_flip@2x-dpms-vs-vblank-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk4/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +4 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_flip@2x-flip-vs-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381">i915#8381</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_flip@2x-flip-vs-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381">i915#8381</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk4/igt@kms_flip@2x-flip-vs-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@ac-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk3/igt@kms_flip@2x-flip-vs-suspend-interruptible@ac-hdmi-a1-hdmi-a2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@blocking-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_flip@blocking-absolute-wf_vblank-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16509">i915#16509</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16509">i915#16509</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@a-edp1:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@a-edp1.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test warn</li>
</ul>
</li>
<li>
<p>igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@a-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset-interruptible@a-hdmi-a3.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16517">i915#16517</a>) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset@b-hdmi-a3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset@b-hdmi-a3.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16517">i915#16517</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test crash</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810">i915#8810</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813">i915#8813</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-upscaling.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +5 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +3 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-downscaling@pipe-a-valid-mode.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +3 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk8/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk1/igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-default-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810">i915#8810</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813">i915#8813</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-valid-mode:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-valid-mode.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling@pipe-a-valid-mode.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +7 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104">i915#15104</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_frontbuffer_tracking@fbc-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056">i915#10056</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbchdr-1p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a>) +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-suspend:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbchdr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-tiling-4:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_frontbuffer_tracking@fbchdr-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +31 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk11/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-pwrite.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk10/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-indfb-fliptrack-mmap-gtt.html">SKIP</a> +163 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-shrfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-spr-indfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-2p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-14/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-2p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-shrfb-pgflip-blt.html">SKIP</a> +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-2p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk8/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-spr-indfb-draw-mmap-cpu.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk1/igt@kms_frontbuffer_tracking@hdr-2p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_frontbuffer_tracking@hdr-rgb101010-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_frontbuffer_tracking@hdr-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_frontbuffer_tracking@hdr-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +7 other tests incomplete</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104">i915#15104</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> +57 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-7/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15871">i915#15871</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_frontbuffer_tracking@psr-shrfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-cur-indfb-move:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-4/igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-cur-indfb-move.html">SKIP</a> +89 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16518">i915#16518</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@kms_hdr@static-swap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_hdr@static-toggle.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_hdr@static-toggle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@kms_joiner@basic-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460">i915#15460</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-ultra-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_joiner@basic-force-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458">i915#15458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-max-non-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_joiner@basic-max-non-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688">i915#13688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460">i915#15460</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15638">i915#15638</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15722">i915#15722</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15638">i915#15638</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15722">i915#15722</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping@pipe-a-plane-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-4/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier-source-clamping@pipe-a-plane-3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-modifier:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_plane@pixel-format-4-tiled-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16513">i915#16513</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier@pipe-a-plane-5:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier@pipe-a-plane-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16386">i915#16386</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-4/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier-source-clamping.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-linear-modifier-source-clamping@pipe-a-plane-0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-snb6/igt@kms_plane@pixel-format-linear-modifier-source-clamping@pipe-a-plane-0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-x-tiled-modifier-source-clamping@pipe-a-plane-0:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_plane@pixel-format-x-tiled-modifier-source-clamping@pipe-a-plane-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-18/igt@kms_plane@pixel-format-x-tiled-modifier-source-clamping@pipe-a-plane-0.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +2 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk10/igt@kms_plane@pixel-format-y-tiled-ccs-modifier-source-clamping.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_plane@pixel-format-y-tiled-ccs-modifier-source-clamping.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier-source-clamping:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier-source-clamping.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16513">i915#16513</a>) +2 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier@pipe-b-plane-7:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-13/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier@pipe-b-plane-7.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16386">i915#16386</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-modifier-source-clamping:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-13/igt@kms_plane@pixel-format-y-tiled-modifier-source-clamping.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-15/igt@kms_plane@pixel-format-y-tiled-modifier-source-clamping.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-yf-tiled-ccs-modifier:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@planar-pixel-format-settings@nv12-tile4-src-y:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_plane@planar-pixel-format-settings@nv12-tile4-src-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16112">i915#16112</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk4/igt@kms_plane_alpha_blend@alpha-transparent-fb.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647">i915#10647</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12177">i915#12177</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk4/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647">i915#10647</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk10/igt@kms_plane_alpha_blend@constant-alpha-max.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647">i915#10647</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12169">i915#12169</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk10/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647">i915#10647</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_plane_lowres@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@kms_plane_multiple@2x-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-none:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_plane_multiple@2x-tiling-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_plane_multiple@2x-tiling-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-4/igt@kms_plane_multiple@tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_plane_multiple@tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-d.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +15 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16512">i915#16512</a>) +1 other test incomplete</li>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk10/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +5 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-17/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16512">i915#16512</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +17 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_plane_scaling@planes-downscale-factor-0-5-upscale-factor-0-25@pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16512">i915#16512</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk10/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +11 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +2 other tests crash</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16514">i915#16514</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +2 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +3 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_pm_backlight@fade.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-14/igt@kms_pm_backlight@fade.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_pm_backlight@fade-with-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_pm_backlight@fade-with-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-pageflip-negative:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@kms_pm_dc@dc5-pageflip-negative.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_pm_dc@dc5-pageflip-negative.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16479">i915#16479</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15739">i915#15739</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@fences-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_pm_rpm@fences-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@kms_pm_rpm@modeset-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-19/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@package-g7:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@kms_pm_rpm@package-g7.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15403">i915#15403</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk2/igt@kms_pm_rpm@system-suspend-modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10553">i915#10553</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_properties@connector-properties-atomic:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-19/igt@kms_properties@connector-properties-atomic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-14/igt@kms_properties@connector-properties-atomic.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk11/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk10/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_psr2_sf@fbc-pr-plane-move-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk4/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-4/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +6 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +5 other tests skip</li>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316">i915#12316</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-sprite-render:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_psr@fbc-pr-sprite-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-plane-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_psr@fbc-psr-cursor-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-plane-move:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_psr@fbc-psr2-sprite-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688">i915#9688</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-cursor-plane-onoff:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@kms_psr@pr-cursor-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-primary-mmap-cpu:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-14/igt@kms_psr@pr-primary-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-plane-onoff:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_psr@psr2-cursor-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15949">i915#15949</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk4/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15500">i915#15500</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16184">i915#16184</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-y-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_rotation_crc@primary-y-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755">i915#12755</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15867">i915#15867</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_tiled_display@basic-test-pattern.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@kms_vrr@flip-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_vrr@flip-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243">i915#15243</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_vrr@flipline.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243">i915#15243</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-4/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436">i915#2436</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@perf@gen8-unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9100">i915#9100</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@perf@unprivileged-single-ctx-counters.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433">i915#2433</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@perf_pmu@module-unload.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029">i915#13029</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15778">i915#15778</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-7/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_udl@share-import-addfb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-5/igt@prime_udl@share-import-addfb.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16420">i915#16420</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@sriov_basic@enable-vfs-autoprobe-off.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-14/igt@sriov_basic@enable-vfs-autoprobe-off.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-random:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-1/igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16066">i915#16066</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@sriov_basic@enable-vfs-bind-unbind-each.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-all-available-unsubmitted-submitted:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-6/igt@syncobj_timeline@etime-multi-wait-all-available-unsubmitted-submitted.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +36 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@etime-multi-wait-for-submit-available-unsubmitted:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk4/igt@syncobj_timeline@etime-multi-wait-for-submit-available-unsubmitted.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +4 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk11/igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test incomplete</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ccs@block-multicopy-compressed@linear-compressed-compfmt0-lmem0-lmem0-multicopy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-3/igt@gem_ccs@block-multicopy-compressed@linear-compressed-compfmt0-lmem0-lmem0-multicopy.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16348">i915#16348</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-3/igt@gem_ccs@block-multicopy-compressed@linear-compressed-compfmt0-lmem0-lmem0-multicopy.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390">i915#13390</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-17/igt@gem_eio@in-flight-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@gem_exec_suspend@basic-s3.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@gem_exec_suspend@basic-s3.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@i915_pm_rpm@system-suspend.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15060">i915#15060</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@i915_pm_rpm@system-suspend.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@basic-modeset-with-all-modifiers-formats@pipe-a-vga-1-x-rgb565:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-snb6/igt@kms_async_flips@basic-modeset-with-all-modifiers-formats@pipe-a-vga-1-x-rgb565.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-snb5/igt@kms_async_flips@basic-modeset-with-all-modifiers-formats@pipe-a-vga-1-x-rgb565.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056">i915#10056</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-snb5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-snb1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">PASS</a> +1 other test pass</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14694">i915#14694</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-4/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-2.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12358">i915#12358</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14152">i915#14152</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-4/igt@kms_cursor_crc@cursor-suspend@pipe-a-hdmi-a-2.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-14/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-16/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk8/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk1/igt@kms_cursor_legacy@short-flip-after-cursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600">i915#14600</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_flip@flip-vs-blocking-wf-vblank@a-hdmi-a3.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">PASS</a> +7 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-6/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-xtile-to-32bpp-xtile-downscaling.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-spr-indfb-move:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk6/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-spr-indfb-move.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk8/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-spr-indfb-move.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-shrfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_frontbuffer_tracking@hdr-shrfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-10/igt@kms_frontbuffer_tracking@hdr-shrfb-scaledprimary.html">PASS</a> +5 other tests pass</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_frontbuffer_tracking@hdr-shrfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-1/igt@kms_frontbuffer_tracking@hdr-shrfb-scaledprimary.html">PASS</a> +10 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16518">i915#16518</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-10/igt@kms_hdr@static-toggle-dpms.html">PASS</a></li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-1/igt@kms_hdr@static-toggle-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-18/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-13/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-pixel-format.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-modifiers.html">PASS</a> +7 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-4/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@i2c:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-13/igt@kms_pm_rpm@i2c.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_pm_rpm@i2c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-17/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@syncobj_timeline@invalid-multi-wait-all-unsubmitted-submitted-signaled.html">PASS</a> +4 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-purge-cache:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@api_intel_bb@blit-reloc-purge-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@api_intel_bb@blit-reloc-purge-cache.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@mmap-args:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@gem_ctx_sseu@mmap-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_exec_capture@capture-recoverable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344">i915#6344</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@gem_exec_capture@capture-recoverable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344">i915#6344</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-noreloc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_exec_reloc@basic-cpu-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@gem_exec_reloc@basic-cpu-noreloc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@gem_exec_reloc@basic-write-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@gem_exec_reloc@basic-write-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_lmem_swapping@heavy-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@gem_lmem_swapping@heavy-random.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads-uncached:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@gem_partial_pwrite_pread@writes-after-reads-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@read-bad-handle:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@gem_readwrite@read-bad-handle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@gem_readwrite@read-bad-handle.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic@basic:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_tiled_pread_basic@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15656">i915#15656</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@gem_tiled_pread_basic@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15656">i915#15656</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@gem_userptr_blits@unsync-unmap-after-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@gem_userptr_blits@unsync-unmap-after-close.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-basic-api:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@i915_pm_freq_api@freq-basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@i915_pm_freq_api@freq-basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590">i915#6590</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590">i915#6590</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-unsupported:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@i915_query@query-topology-unsupported.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16079">i915#16079</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@i915_query@query-topology-unsupported.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16079">i915#16079</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@basic-modeset-with-all-modifiers-formats:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-snb6/igt@kms_async_flips@basic-modeset-with-all-modifiers-formats.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-snb5/igt@kms_async_flips@basic-modeset-with-all-modifiers-formats.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_async_flips@basic-modeset-with-all-modifiers-formats.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_async_flips@basic-modeset-with-all-modifiers-formats.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-15/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-5/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056">i915#10056</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_big_fb@4-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +9 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_big_fb@y-tiled-64bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +2 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-5/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_ccs@crc-primary-basic-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-17/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +8 other tests timeout</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs-cc.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs-cc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14694">i915#14694</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-7/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-2/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-7/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test incomplete</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-19/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-12/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-5/igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-rc-ccs-cc.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test timeout</li>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_ccs@missing-ccs-buffer-y-tiled-gen12-rc-ccs-cc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_cdclk@mode-transition.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_cdclk@mode-transition.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color_pipeline@plane-lut3d-green-only:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_chamelium_color_pipeline@plane-lut3d-green-only.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16471">i915#16471</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_chamelium_color_pipeline@plane-lut3d-green-only.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16471">i915#16471</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_content_protection@legacy.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_content_protection@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_content_protection@uevent.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-10/igt@kms_content_protection@uevent.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1339">i915#1339</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7173">i915#7173</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_cursor_crc@cursor-offscreen-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3359">i915#3359</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html">SKIP</a> +27 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-1/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056">i915#10056</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-3/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats-ultrajoiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_dsc@dsc-with-bpc-formats-ultrajoiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361">i915#16361</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_dsc@dsc-with-bpc-formats-ultrajoiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361">i915#16361</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-ultrajoiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats-ultrajoiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361">i915#16361</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_dsc@dsc-with-output-formats-ultrajoiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361">i915#16361</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc-bigjoiner:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-8/igt@kms_dsc@dsc-with-output-formats-with-bpc-bigjoiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16361">i915#16361</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_dsc@dsc-with-output-formats-with-bpc-bigjoiner.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-4/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-interruptible:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_flip@2x-flip-vs-panning-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_flip@2x-flip-vs-panning-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-18/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-17/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-tglu-7/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16509">i915#16509</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-8/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16509">i915#16509</a>) +3 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16472">i915#16472</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-5/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_flip@single-buffer-flip-vs-dpms-off-vs-modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16472">i915#16472</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16500">i915#16500</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810">i915#8810</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813">i915#8813</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk6/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-linear-to-64bpp-linear-downscaling.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-1/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8810">i915#8810</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8813">i915#8813</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-6/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16500">i915#16500</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-7/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-19/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +7 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test incomplete</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +3 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-6/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-mmap-cpu.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-6/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-indfb-draw-pwrite.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-shrfb-draw-mmap-wc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_frontbuffer_tracking@fbchdr-1p-offscreen-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk8/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk1/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> +3 other tests skip</li>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-mmap-cpu.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +4 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-10/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-render.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-18/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-render.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-13/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-cur-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-1/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-1/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-indfb-draw-render.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +2 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-render.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-18/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-render.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk6/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk8/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test timeout</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-pwrite.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +14 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> +7 other tests skip</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-17/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-render.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-snb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-snb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104">i915#15104</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104">i915#15104</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-wc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-snb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-pwrite.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-snb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-pwrite.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +6 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-cpu.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +11 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +2 other tests incomplete</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +4 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +5 other tests incomplete</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-wc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-snb4/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-snb6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-cur-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-cur-indfb-draw-render.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +5 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-indfb-draw-render.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-tglu-3/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-5/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-wc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +4 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-render.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-render.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-tglu-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-pri-indfb-draw-render.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-2/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-pri-indfb-draw-render.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +3 other tests incomplete</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-pri-indfb-draw-render.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-pri-indfb-draw-render.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-pri-shrfb-draw-render.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-scndscrn-pri-shrfb-draw-render.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +4 other tests crash</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-rgb565-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsrhdr-rgb565-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-rgb565-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-suspend:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-glk6/igt@kms_frontbuffer_tracking@hdr-suspend.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-glk8/igt@kms_frontbuffer_tracking@hdr-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16056">i915#16056</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-tglu-6/igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-indfb-draw-pwrite.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-tglu-8/igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@kms_frontbuffer_tracking@psrhdr-1p-offscreen-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_frontbuffer_tracking@psrhdr-1p-primscrn-pri-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-13/igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-15/igt@kms_frontbuffer_tracking@psrhdr-2p-primscrn-cur-indfb-draw-mmap-wc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +11 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-1/igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-3/igt@kms_frontbuffer_tracking@psrhdr-2p-scndscrn-cur-indfb-draw-mmap-wc.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-force-big-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_joiner@basic-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459">i915#15459</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_joiner@basic-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459">i915#15459</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-15/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +2 other tests incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-19/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-8/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-5/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier-source-clamping.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-6/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-3/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-linear-modifier-source-clamping:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-14/igt@kms_plane@pixel-format-linear-modifier-source-clamping.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-16/igt@kms_plane@pixel-format-linear-modifier-source-clamping.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-x-tiled-modifier-source-clamping:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-4/igt@kms_plane@pixel-format-x-tiled-modifier-source-clamping.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@kms_plane@pixel-format-x-tiled-modifier-source-clamping.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-16/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-15/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier-source-clamping.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-5/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026">i915#13026</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-yf-tiled-ccs-modifier:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-x:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-13/igt@kms_plane_multiple@2x-tiling-x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-13/igt@kms_plane_multiple@2x-tiling-x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-yf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_plane_multiple@2x-tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-4/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>)</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-8/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-15/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-17/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-3/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-a.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953">i915#6953</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-6/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a.html">CRASH</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +1 other test timeout</li>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-8/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75@pipe-a.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_pm_backlight@bad-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_pm_backlight@bad-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-pageflip-negative:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-13/igt@kms_pm_dc@dc5-pageflip-negative.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-13/igt@kms_pm_dc@dc5-pageflip-negative.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15739">i915#15739</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15739">i915#15739</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-3/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg1-12/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg1-15/igt@kms_psr2_sf@fbc-psr2-cursor-plane-update-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-8/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316">i915#12316</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-a-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-mtlp-8/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-a-edp-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9808">i915#9808</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-mtlp-1/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area@pipe-a-edp-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-move:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_psr@psr-sprite-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_psr@psr-sprite-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_psr@psr2-cursor-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_psr@psr2-cursor-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-rotation-90:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_rotation_crc@primary-rotation-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15867">i915#15867</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_rotation_crc@primary-rotation-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755">i915#12755</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15867">i915#15867</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-10/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15867">i915#15867</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-7/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755">i915#12755</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15867">i915#15867</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@max-min:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@kms_vrr@max-min.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@kms_vrr@max-min.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-virtual.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@kms_vrr@seamless-rr-switch-virtual.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-6/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-8/igt@perf_pmu@rc6-all-gts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-rkl-7/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-rkl-6/igt@sriov_basic@enable-vfs-autoprobe-on.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@multi-wait-all-for-submit-available-submitted-signaled:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18724/shard-dg2-5/igt@syncobj_timeline@multi-wait-all-for-submit-available-submitted-signaled.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167571v4/shard-dg2-8/igt@syncobj_timeline@multi-wait-all-for-submit-available-submitted-signaled.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16503">i915#16503</a>) +3 other tests timeout</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18724 -&gt; Patchwork_167571v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18724: b9aebfff5a3c5049500a7bd4573815090a425f34 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8987: 8987<br />
  Patchwork_167571v4: b9aebfff5a3c5049500a7bd4573815090a425f34 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============6457836666158166152==--
