Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kB+3G4T5zWkdkAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 07:07:16 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEE0383DAD
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 07:07:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B01E10E33C;
	Thu,  2 Apr 2026 05:07:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98BE410E33C;
 Thu,  2 Apr 2026 05:07:12 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4601430183632338151=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EFull=3A_success_for_drm/=7Bi915=2C_xe=7D=3A_?=
 =?utf-8?q?move_fbdev_fb_calls_to_parent_interface_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 02 Apr 2026 05:07:12 -0000
Message-ID: <177510643261.426508.12581025613023917551@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <cover.1774950508.git.jani.nikula@intel.com>
In-Reply-To: <cover.1774950508.git.jani.nikula@intel.com>
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
	NEURAL_HAM(-0.00)[-0.994];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: DDEE0383DAD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============4601430183632338151==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/{i915, xe}: move fbdev fb calls to parent interface (rev2)
URL   : https://patchwork.freedesktop.org/series/164150/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_18262_full -> Patchwork_164150v2_full
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

  Here are the changes found in Patchwork_164150v2_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-tglu-1:       NOTRUN -> [SKIP][1] ([i915#3555] / [i915#9323])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@large-ctrl-surf-copy:
    - shard-rkl:          NOTRUN -> [SKIP][2] ([i915#13008])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-1/igt@gem_ccs@large-ctrl-surf-copy.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][3] ([i915#12392] / [i915#13356])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg2-3/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html

  * igt@gem_ctx_sseu@engines:
    - shard-tglu-1:       NOTRUN -> [SKIP][4] ([i915#280])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@gem_ctx_sseu@engines.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-rkl:          NOTRUN -> [SKIP][5] ([i915#280])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-1/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_exec_balancer@parallel:
    - shard-rkl:          NOTRUN -> [SKIP][6] ([i915#4525])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@gem_exec_balancer@parallel.html
    - shard-tglu-1:       NOTRUN -> [SKIP][7] ([i915#4525])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
    - shard-tglu:         NOTRUN -> [SKIP][8] ([i915#4525])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-tglu-1:       NOTRUN -> [SKIP][9] ([i915#6344])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][10] ([i915#3281]) +6 other tests skip
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-5/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-glk:          NOTRUN -> [SKIP][11] ([i915#4613])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-glk2/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-rkl:          NOTRUN -> [SKIP][12] ([i915#4613]) +4 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-2/igt@gem_lmem_swapping@parallel-multi.html
    - shard-tglu-1:       NOTRUN -> [SKIP][13] ([i915#4613]) +2 other tests skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@verify-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][14] ([i915#4613]) +1 other test skip
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-7/igt@gem_lmem_swapping@verify-ccs.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#3282]) +6 other tests skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-tglu:         NOTRUN -> [WARN][16] ([i915#2658])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-7/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@hw-rejects-pxp-buffer:
    - shard-tglu:         NOTRUN -> [SKIP][17] ([i915#13398])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@gem_pxp@hw-rejects-pxp-buffer.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-tglu:         NOTRUN -> [SKIP][18] ([i915#3297]) +1 other test skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_userptr_blits@unsync-unmap-cycles:
    - shard-rkl:          NOTRUN -> [SKIP][19] ([i915#3297])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-5/igt@gem_userptr_blits@unsync-unmap-cycles.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-rkl:          [PASS][20] -> [INCOMPLETE][21] ([i915#13356])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-8/igt@gem_workarounds@suspend-resume-fd.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-4/igt@gem_workarounds@suspend-resume-fd.html
    - shard-glk:          NOTRUN -> [INCOMPLETE][22] ([i915#13356] / [i915#14586])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-glk1/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          NOTRUN -> [SKIP][23] ([i915#2527]) +1 other test skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-1/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-tglu-1:       NOTRUN -> [SKIP][24] ([i915#2527] / [i915#2856])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-tglu:         NOTRUN -> [SKIP][25] ([i915#2527] / [i915#2856]) +2 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_module_load@fault-injection@__uc_init:
    - shard-tglu-1:       NOTRUN -> [SKIP][26] ([i915#15479]) +4 other tests skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@i915_module_load@fault-injection@__uc_init.html

  * igt@i915_module_load@fault-injection@intel_connector_register:
    - shard-tglu-1:       NOTRUN -> [ABORT][27] ([i915#15342]) +1 other test abort
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@i915_module_load@fault-injection@intel_connector_register.html

  * igt@i915_module_load@load:
    - shard-dg1:          ([PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52]) -> ([PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [DMESG-WARN][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77]) ([i915#4423])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-12/igt@i915_module_load@load.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-12/igt@i915_module_load@load.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-12/igt@i915_module_load@load.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-13/igt@i915_module_load@load.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-13/igt@i915_module_load@load.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-13/igt@i915_module_load@load.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-14/igt@i915_module_load@load.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-14/igt@i915_module_load@load.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-14/igt@i915_module_load@load.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-14/igt@i915_module_load@load.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-15/igt@i915_module_load@load.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-15/igt@i915_module_load@load.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-15/igt@i915_module_load@load.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-16/igt@i915_module_load@load.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-16/igt@i915_module_load@load.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-16/igt@i915_module_load@load.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-17/igt@i915_module_load@load.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-17/igt@i915_module_load@load.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-17/igt@i915_module_load@load.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-18/igt@i915_module_load@load.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-18/igt@i915_module_load@load.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-18/igt@i915_module_load@load.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-19/igt@i915_module_load@load.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-19/igt@i915_module_load@load.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-19/igt@i915_module_load@load.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-13/igt@i915_module_load@load.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-12/igt@i915_module_load@load.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-19/igt@i915_module_load@load.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-16/igt@i915_module_load@load.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-18/igt@i915_module_load@load.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-15/igt@i915_module_load@load.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-17/igt@i915_module_load@load.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-19/igt@i915_module_load@load.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-15/igt@i915_module_load@load.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-13/igt@i915_module_load@load.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-18/igt@i915_module_load@load.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-16/igt@i915_module_load@load.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-14/igt@i915_module_load@load.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-14/igt@i915_module_load@load.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-16/igt@i915_module_load@load.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-12/igt@i915_module_load@load.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-17/igt@i915_module_load@load.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-15/igt@i915_module_load@load.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-13/igt@i915_module_load@load.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-18/igt@i915_module_load@load.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-19/igt@i915_module_load@load.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-17/igt@i915_module_load@load.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-16/igt@i915_module_load@load.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-12/igt@i915_module_load@load.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-14/igt@i915_module_load@load.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#8399])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-5/igt@i915_pm_freq_api@freq-reset-multiple.html
    - shard-tglu:         NOTRUN -> [SKIP][79] ([i915#8399])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-7/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_rc6_residency@media-rc6-accuracy:
    - shard-rkl:          NOTRUN -> [SKIP][80] +16 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-5/igt@i915_pm_rc6_residency@media-rc6-accuracy.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-tglu:         [PASS][81] -> [WARN][82] ([i915#13790] / [i915#2681]) +1 other test warn
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-fence.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-8/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_sseu@full-enable:
    - shard-rkl:          NOTRUN -> [SKIP][83] ([i915#4387])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@i915_pm_sseu@full-enable.html
    - shard-tglu-1:       NOTRUN -> [SKIP][84] ([i915#4387])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@i915_pm_sseu@full-enable.html

  * igt@i915_power@sanity:
    - shard-mtlp:         [PASS][85] -> [SKIP][86] ([i915#7984])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-mtlp-1/igt@i915_power@sanity.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-mtlp-7/igt@i915_power@sanity.html
    - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#7984])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-1/igt@i915_power@sanity.html

  * igt@i915_selftest@live:
    - shard-mtlp:         [PASS][88] -> [DMESG-FAIL][89] ([i915#12061] / [i915#15560])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-mtlp-1/igt@i915_selftest@live.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-mtlp-5/igt@i915_selftest@live.html

  * igt@i915_selftest@live@workarounds:
    - shard-mtlp:         [PASS][90] -> [DMESG-FAIL][91] ([i915#12061])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-mtlp-1/igt@i915_selftest@live@workarounds.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-mtlp-5/igt@i915_selftest@live@workarounds.html

  * igt@kms_3d@basic:
    - shard-mtlp:         [PASS][92] -> [SKIP][93] ([i915#15726])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-mtlp-4/igt@kms_3d@basic.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-mtlp-1/igt@kms_3d@basic.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#9531])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-tglu-1:       NOTRUN -> [SKIP][95] ([i915#9531])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#5286]) +3 other tests skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html
    - shard-tglu-1:       NOTRUN -> [SKIP][97] ([i915#5286]) +1 other test skip
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#5286]) +2 other tests skip
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][99] ([i915#3638]) +1 other test skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglu:         NOTRUN -> [SKIP][100] ([i915#3828])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-7/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#3828]) +1 other test skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-2/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip.html
    - shard-tglu-1:       NOTRUN -> [SKIP][102] ([i915#3828])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-dg1:          [PASS][103] -> [DMESG-WARN][104] ([i915#4423])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-13/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-14/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][105] ([i915#10307] / [i915#10434] / [i915#6095])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg2-4/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][106] ([i915#10307] / [i915#6095]) +38 other tests skip
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg2-3/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][107] ([i915#6095]) +183 other tests skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-16/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-2:
    - shard-glk10:        NOTRUN -> [SKIP][108] +25 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-glk10/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#6095]) +75 other tests skip
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-2/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1:
    - shard-glk:          NOTRUN -> [SKIP][110] +81 other tests skip
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-glk4/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc:
    - shard-glk11:        NOTRUN -> [SKIP][111] +131 other tests skip
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-glk11/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#6095]) +15 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg2-1/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-d-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs:
    - shard-rkl:          [PASS][113] -> [INCOMPLETE][114] ([i915#15582])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][115] ([i915#15582])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#14098] / [i915#6095]) +46 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html
    - shard-glk10:        NOTRUN -> [INCOMPLETE][117] ([i915#15582]) +1 other test incomplete
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-glk10/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][118] ([i915#6095]) +34 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][119] ([i915#12313])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#6095]) +44 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-7/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html

  * igt@kms_chamelium_frames@hdmi-crc-multiple:
    - shard-tglu-1:       NOTRUN -> [SKIP][121] ([i915#11151] / [i915#7828]) +3 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_chamelium_frames@hdmi-crc-multiple.html

  * igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:
    - shard-tglu:         NOTRUN -> [SKIP][122] ([i915#11151] / [i915#7828]) +3 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats.html

  * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
    - shard-rkl:          NOTRUN -> [SKIP][123] ([i915#11151] / [i915#7828]) +4 other tests skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-1/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html

  * igt@kms_content_protection@atomic-hdcp14:
    - shard-tglu-1:       NOTRUN -> [SKIP][124] ([i915#15865]) +1 other test skip
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_content_protection@atomic-hdcp14.html

  * igt@kms_content_protection@legacy:
    - shard-rkl:          NOTRUN -> [SKIP][125] ([i915#15865]) +3 other tests skip
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-1/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@mei-interface:
    - shard-tglu:         NOTRUN -> [SKIP][126] ([i915#15865]) +1 other test skip
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_content_protection@mei-interface.html

  * igt@kms_cursor_crc@cursor-sliding-256x85:
    - shard-tglu-1:       NOTRUN -> [FAIL][127] ([i915#13566]) +1 other test fail
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_cursor_crc@cursor-sliding-256x85.html

  * igt@kms_cursor_crc@cursor-sliding-32x10:
    - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#3555]) +5 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-5/igt@kms_cursor_crc@cursor-sliding-32x10.html
    - shard-tglu:         NOTRUN -> [SKIP][129] ([i915#3555]) +2 other tests skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-7/igt@kms_cursor_crc@cursor-sliding-32x10.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#13049])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-1/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-64x21:
    - shard-rkl:          [PASS][131] -> [FAIL][132] ([i915#13566])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-64x21.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-64x21.html

  * igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [FAIL][133] ([i915#13566]) +5 other tests fail
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1.html
    - shard-tglu:         [PASS][134] -> [FAIL][135] ([i915#13566]) +1 other test fail
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-tglu-10/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-9/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][136] ([i915#4103])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-2/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
    - shard-tglu-1:       NOTRUN -> [SKIP][137] ([i915#4103])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#3804])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-2/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1.html

  * igt@kms_dp_aux_dev@basic:
    - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#1257])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-1/igt@kms_dp_aux_dev@basic.html

  * igt@kms_dp_link_training@uhbr-mst:
    - shard-tglu:         NOTRUN -> [SKIP][140] ([i915#13748])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_dp_link_training@uhbr-mst.html

  * igt@kms_dsc@dsc-basic:
    - shard-rkl:          NOTRUN -> [SKIP][141] ([i915#3555] / [i915#3840]) +1 other test skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@kms_dsc@dsc-basic.html
    - shard-tglu-1:       NOTRUN -> [SKIP][142] ([i915#3555] / [i915#3840]) +1 other test skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_dsc@dsc-basic.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-tglu:         NOTRUN -> [SKIP][143] ([i915#3840])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-tglu:         NOTRUN -> [SKIP][144] ([i915#3555] / [i915#3840])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-7/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][145] ([i915#9878])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-glk1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_feature_discovery@display-3x:
    - shard-rkl:          NOTRUN -> [SKIP][146] ([i915#1839])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-1/igt@kms_feature_discovery@display-3x.html

  * igt@kms_flip@2x-flip-vs-dpms-on-nop:
    - shard-tglu-1:       NOTRUN -> [SKIP][147] ([i915#9934])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms-on-nop.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#9934]) +4 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-2/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html
    - shard-tglu-1:       NOTRUN -> [SKIP][149] ([i915#3637] / [i915#9934]) +2 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html

  * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][150] -> [INCOMPLETE][151] ([i915#12314]) +1 other test incomplete
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-snb1/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@ab-vga1-hdmi-a1.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-snb6/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-tglu:         NOTRUN -> [SKIP][152] ([i915#3637] / [i915#9934]) +3 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-7/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][153] ([i915#12745] / [i915#4839])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-glk4/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend@a-hdmi-a1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][154] ([i915#12745])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-glk4/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
    - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#15643]) +1 other test skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
    - shard-tglu-1:       NOTRUN -> [SKIP][156] ([i915#15643])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][157] ([i915#15643])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:
    - shard-tglu-1:       NOTRUN -> [SKIP][158] +29 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render:
    - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#15102]) +1 other test skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-tglu:         NOTRUN -> [SKIP][160] ([i915#15102]) +10 other tests skip
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
    - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#1825]) +27 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-rte:
    - shard-rkl:          NOTRUN -> [SKIP][162] ([i915#15102] / [i915#3023]) +17 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-1p-rte.html
    - shard-tglu-1:       NOTRUN -> [SKIP][163] ([i915#15102]) +11 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-1p-rte.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
    - shard-tglu:         NOTRUN -> [SKIP][164] +26 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch:
    - shard-tglu-1:       NOTRUN -> [SKIP][165] ([i915#3555] / [i915#8228])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@static-toggle:
    - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#3555] / [i915#8228]) +1 other test skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-5/igt@kms_hdr@static-toggle.html
    - shard-tglu:         NOTRUN -> [SKIP][167] ([i915#3555] / [i915#8228])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-7/igt@kms_hdr@static-toggle.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#15460])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-2/igt@kms_joiner@basic-big-joiner.html
    - shard-tglu-1:       NOTRUN -> [SKIP][169] ([i915#15460])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@basic-max-non-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#13688])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-1/igt@kms_joiner@basic-max-non-joiner.html

  * igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping:
    - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#15709]) +3 other tests skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-2/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html
    - shard-tglu-1:       NOTRUN -> [SKIP][172] ([i915#15709])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-y-tiled-modifier@pipe-b-plane-7:
    - shard-tglu:         NOTRUN -> [SKIP][173] ([i915#15608]) +1 other test skip
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_plane@pixel-format-y-tiled-modifier@pipe-b-plane-7.html

  * igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping:
    - shard-tglu:         NOTRUN -> [SKIP][174] ([i915#15709]) +2 other tests skip
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-tglu-1:       NOTRUN -> [SKIP][175] ([i915#14259])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#6953])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-5/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:
    - shard-tglu:         NOTRUN -> [SKIP][177] ([i915#15329]) +4 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#5354])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-1/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_dc@dc5-psr:
    - shard-tglu:         NOTRUN -> [SKIP][179] ([i915#9685])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_pm_dc@dc5-psr.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-dg1:          [PASS][180] -> [SKIP][181] ([i915#15073]) +4 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-14/igt@kms_pm_rpm@dpms-lpsp.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-18/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][182] ([i915#15073])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html
    - shard-tglu:         NOTRUN -> [SKIP][183] ([i915#15073])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-7/igt@kms_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-rkl:          [PASS][184] -> [SKIP][185] ([i915#15073])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-7/igt@kms_pm_rpm@dpms-non-lpsp.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-8/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [PASS][186] -> [SKIP][187] ([i915#15073])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg2-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@package-g7:
    - shard-rkl:          NOTRUN -> [SKIP][188] ([i915#15403])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@kms_pm_rpm@package-g7.html
    - shard-tglu-1:       NOTRUN -> [SKIP][189] ([i915#15403])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_pm_rpm@package-g7.html

  * igt@kms_prime@d3hot:
    - shard-tglu:         NOTRUN -> [SKIP][190] ([i915#6524])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:
    - shard-glk:          NOTRUN -> [SKIP][191] ([i915#11520]) +5 other tests skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-glk4/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf:
    - shard-glk11:        NOTRUN -> [SKIP][192] ([i915#11520]) +1 other test skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-glk11/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#11520]) +3 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html
    - shard-glk10:        NOTRUN -> [SKIP][194] ([i915#11520]) +1 other test skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-glk10/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
    - shard-tglu:         NOTRUN -> [SKIP][195] ([i915#11520]) +2 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][196] ([i915#11520]) +4 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#9683])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@kms_psr2_su@page_flip-p010.html
    - shard-tglu-1:       NOTRUN -> [SKIP][198] ([i915#9683])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#1072] / [i915#9732]) +18 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-2/igt@kms_psr@fbc-psr2-sprite-render.html
    - shard-tglu-1:       NOTRUN -> [SKIP][200] ([i915#9732]) +8 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_psr@pr-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][201] ([i915#9732]) +10 other tests skip
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_psr@pr-dpms.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-tglu-1:       NOTRUN -> [SKIP][202] ([i915#9685])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-tglu:         NOTRUN -> [SKIP][203] ([i915#5289])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-glk:          NOTRUN -> [ABORT][204] ([i915#13179]) +1 other test abort
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-glk2/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - shard-tglu-1:       NOTRUN -> [SKIP][205] ([i915#3555]) +2 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-tglu-1:       NOTRUN -> [SKIP][206] ([i915#8623]) +1 other test skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-rkl:          NOTRUN -> [SKIP][207] ([i915#8623]) +1 other test skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-2/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vrr@flip-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#15243] / [i915#3555])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@kms_vrr@flip-suspend.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-rkl:          NOTRUN -> [SKIP][209] ([i915#8516]) +1 other test skip
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@perf_pmu@rc6-all-gts.html
    - shard-tglu-1:       NOTRUN -> [SKIP][210] ([i915#8516])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@perf_pmu@rc6-all-gts.html

  * igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6:
    - shard-tglu:         NOTRUN -> [FAIL][211] ([i915#12910]) +9 other tests fail
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-rkl:          NOTRUN -> [SKIP][212] ([i915#9917])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-1/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  
#### Possible fixes ####

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [INCOMPLETE][213] ([i915#13356]) -> [PASS][214]
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg2-3/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html

  * igt@gem_exec_big@single:
    - shard-rkl:          [DMESG-FAIL][215] ([i915#15478]) -> [PASS][216]
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-4/igt@gem_exec_big@single.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-8/igt@gem_exec_big@single.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-rkl:          [ABORT][217] ([i915#15140]) -> [PASS][218]
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-5/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-mtlp:         [FAIL][219] ([i915#15733] / [i915#5138]) -> [PASS][220]
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_color@deep-color:
    - shard-rkl:          [SKIP][221] ([i915#12655] / [i915#3555]) -> [PASS][222]
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-8/igt@kms_color@deep-color.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-6/igt@kms_color@deep-color.html

  * igt@kms_cursor_crc@cursor-onscreen-128x42:
    - shard-rkl:          [FAIL][223] ([i915#13566]) -> [PASS][224]
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-128x42.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-128x42.html

  * igt@kms_flip@2x-flip-vs-expired-vblank:
    - shard-glk:          [FAIL][225] ([i915#13027]) -> [PASS][226] +1 other test pass
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-rkl:          [INCOMPLETE][227] ([i915#6113]) -> [PASS][228]
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-3/igt@kms_flip@flip-vs-suspend.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-2/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          [FAIL][229] ([i915#15389] / [i915#6880]) -> [PASS][230]
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-rkl:          [SKIP][231] ([i915#3555] / [i915#8228]) -> [PASS][232]
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-8/igt@kms_hdr@bpc-switch-dpms.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-dg2:          [SKIP][233] ([i915#15073]) -> [PASS][234]
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg2-4/igt@kms_pm_rpm@dpms-non-lpsp.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg2-1/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg1:          [SKIP][235] ([i915#15073]) -> [PASS][236] +2 other tests pass
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-15/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-12/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-rkl:          [SKIP][237] ([i915#15073]) -> [PASS][238] +2 other tests pass
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  
#### Warnings ####

  * igt@api_intel_bb@crc32:
    - shard-rkl:          [SKIP][239] ([i915#14544] / [i915#6230]) -> [SKIP][240] ([i915#6230])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-6/igt@api_intel_bb@crc32.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@api_intel_bb@crc32.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          [SKIP][241] ([i915#14544] / [i915#3555] / [i915#9323]) -> [SKIP][242] ([i915#3555] / [i915#9323])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_exec_reloc@basic-write-wc-noreloc:
    - shard-rkl:          [SKIP][243] ([i915#14544] / [i915#3281]) -> [SKIP][244] ([i915#3281]) +3 other tests skip
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-6/igt@gem_exec_reloc@basic-write-wc-noreloc.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@gem_exec_reloc@basic-write-wc-noreloc.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-rkl:          [SKIP][245] ([i915#14544] / [i915#4613]) -> [SKIP][246] ([i915#4613])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-6/igt@gem_lmem_swapping@random-engines.html
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_partial_pwrite_pread@write-uncached:
    - shard-rkl:          [SKIP][247] ([i915#14544] / [i915#3282]) -> [SKIP][248] ([i915#3282]) +1 other test skip
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-6/igt@gem_partial_pwrite_pread@write-uncached.html
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@gem_partial_pwrite_pread@write-uncached.html

  * igt@gen9_exec_parse@bb-start-out:
    - shard-rkl:          [SKIP][249] ([i915#2527]) -> [SKIP][250] ([i915#14544] / [i915#2527])
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-8/igt@gen9_exec_parse@bb-start-out.html
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-6/igt@gen9_exec_parse@bb-start-out.html

  * igt@i915_module_load@fault-injection@__fw_domain_init:
    - shard-glk:          [ABORT][251] -> [SKIP][252]
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-glk9/igt@i915_module_load@fault-injection@__fw_domain_init.html
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-glk4/igt@i915_module_load@fault-injection@__fw_domain_init.html

  * igt@i915_module_load@fault-injection@intel_connector_register:
    - shard-glk:          [DMESG-WARN][253] ([i915#15342]) -> [ABORT][254] ([i915#15342])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-glk9/igt@i915_module_load@fault-injection@intel_connector_register.html
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-glk4/igt@i915_module_load@fault-injection@intel_connector_register.html

  * igt@i915_pm_freq_mult@media-freq@gt0:
    - shard-rkl:          [SKIP][255] ([i915#6590]) -> [SKIP][256] ([i915#14544] / [i915#6590]) +1 other test skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-8/igt@i915_pm_freq_mult@media-freq@gt0.html
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-6/igt@i915_pm_freq_mult@media-freq@gt0.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-rkl:          [SKIP][257] ([i915#14544] / [i915#5286]) -> [SKIP][258] ([i915#5286]) +1 other test skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][259] ([i915#5286]) -> [SKIP][260] ([i915#14544] / [i915#5286])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-8bpp-rotate-90:
    - shard-rkl:          [SKIP][261] ([i915#14544] / [i915#3638]) -> [SKIP][262] ([i915#3638]) +1 other test skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-90.html
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@kms_big_fb@linear-8bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-rkl:          [SKIP][263] ([i915#3638]) -> [SKIP][264] ([i915#14544] / [i915#3638])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-8/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-6/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][265] ([i915#14544]) -> [SKIP][266] +3 other tests skip
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc:
    - shard-rkl:          [SKIP][267] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][268] ([i915#14098] / [i915#6095]) +3 other tests skip
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-6/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc.html
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][269] ([i915#12313] / [i915#14544]) -> [SKIP][270] ([i915#12313])
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          [SKIP][271] ([i915#14544] / [i915#6095]) -> [SKIP][272] ([i915#6095]) +3 other tests skip
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg1:          [SKIP][273] ([i915#4423] / [i915#6095]) -> [SKIP][274] ([i915#6095]) +1 other test skip
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-12/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-3.html
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-13/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_chamelium_color@ctm-0-50:
    - shard-dg1:          [SKIP][275] ([i915#4423]) -> [SKIP][276]
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-12/igt@kms_chamelium_color@ctm-0-50.html
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-13/igt@kms_chamelium_color@ctm-0-50.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:
    - shard-rkl:          [SKIP][277] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][278] ([i915#11151] / [i915#7828]) +1 other test skip
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-6/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-rkl:          [SKIP][279] ([i915#14544] / [i915#15330] / [i915#3116]) -> [SKIP][280] ([i915#15330] / [i915#3116])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-1.html
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          [SKIP][281] ([i915#9433]) -> [SKIP][282] ([i915#15865])
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-13/igt@kms_content_protection@mei-interface.html
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-17/igt@kms_content_protection@mei-interface.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-rkl:          [SKIP][283] ([i915#13049] / [i915#14544]) -> [SKIP][284] ([i915#13049])
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x512.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-rkl:          [SKIP][285] ([i915#14544] / [i915#3555] / [i915#3840]) -> [SKIP][286] ([i915#3555] / [i915#3840])
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-6/igt@kms_dsc@dsc-with-bpc-formats.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:
    - shard-rkl:          [SKIP][287] ([i915#14544] / [i915#9934]) -> [SKIP][288] ([i915#9934]) +1 other test skip
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
    - shard-rkl:          [SKIP][289] ([i915#9934]) -> [SKIP][290] ([i915#14544] / [i915#9934])
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-8/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-6/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling:
    - shard-rkl:          [SKIP][291] ([i915#14544] / [i915#15643]) -> [SKIP][292] ([i915#15643])
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:
    - shard-rkl:          [SKIP][293] ([i915#1825]) -> [SKIP][294] ([i915#14544] / [i915#1825]) +4 other tests skip
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render:
    - shard-rkl:          [SKIP][295] ([i915#15102]) -> [SKIP][296] ([i915#14544] / [i915#15102])
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:
    - shard-rkl:          [SKIP][297] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][298] ([i915#15102] / [i915#3023]) +2 other tests skip
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite:
    - shard-rkl:          [SKIP][299] ([i915#15102] / [i915#3023]) -> [SKIP][300] ([i915#14544] / [i915#15102] / [i915#3023]) +2 other tests skip
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
    - shard-rkl:          [SKIP][301] ([i915#14544] / [i915#1825]) -> [SKIP][302] ([i915#1825]) +11 other tests skip
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt:
    - shard-rkl:          [SKIP][303] ([i915#14544] / [i915#15102]) -> [SKIP][304] ([i915#15102]) +1 other test skip
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:
    - shard-dg2:          [SKIP][305] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][306] ([i915#15102] / [i915#3458]) +3 other tests skip
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-dg2:          [SKIP][307] ([i915#15102] / [i915#3458]) -> [SKIP][308] ([i915#10433] / [i915#15102] / [i915#3458]) +5 other tests skip
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
    - shard-rkl:          [SKIP][309] ([i915#14544] / [i915#15815]) -> [SKIP][310] ([i915#15815])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html

  * igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier:
    - shard-rkl:          [SKIP][311] ([i915#15709]) -> [SKIP][312] ([i915#14544] / [i915#15709])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-8/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          [SKIP][313] ([i915#9340]) -> [SKIP][314] ([i915#3828])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-8/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
    - shard-rkl:          [SKIP][315] ([i915#11520] / [i915#14544]) -> [SKIP][316] ([i915#11520]) +1 other test skip
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
    - shard-rkl:          [SKIP][317] ([i915#11520]) -> [SKIP][318] ([i915#11520] / [i915#14544]) +1 other test skip
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-8/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr@fbc-psr-primary-page-flip:
    - shard-rkl:          [SKIP][319] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][320] ([i915#1072] / [i915#9732]) +5 other tests skip
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-6/igt@kms_psr@fbc-psr-primary-page-flip.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@kms_psr@fbc-psr-primary-page-flip.html

  * igt@kms_scaling_modes@scaling-mode-center:
    - shard-rkl:          [SKIP][321] ([i915#3555]) -> [SKIP][322] ([i915#14544] / [i915#3555])
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-8/igt@kms_scaling_modes@scaling-mode-center.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-6/igt@kms_scaling_modes@scaling-mode-center.html

  * igt@prime_vgem@basic-write:
    - shard-rkl:          [SKIP][323] ([i915#3291] / [i915#3708]) -> [SKIP][324] ([i915#14544] / [i915#3291] / [i915#3708])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-8/igt@prime_vgem@basic-write.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-6/igt@prime_vgem@basic-write.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-rkl:          [SKIP][325] -> [SKIP][326] ([i915#14544]) +1 other test skip
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-rkl-8/igt@tools_test@sysfs_l3_parity.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-6/igt@tools_test@sysfs_l3_parity.html

  
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314
  [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
  [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
  [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
  [i915#13008]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13008
  [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13398]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688
  [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
  [i915#13790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14586]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14586
  [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
  [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
  [i915#15140]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15140
  [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
  [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
  [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
  [i915#15342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342
  [i915#15389]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15389
  [i915#15403]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15403
  [i915#15460]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460
  [i915#15478]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15478
  [i915#15479]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15479
  [i915#15560]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15560
  [i915#15582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582
  [i915#15608]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15608
  [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
  [i915#15709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
  [i915#15726]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15726
  [i915#15733]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15733
  [i915#15815]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15815
  [i915#15865]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865
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
  [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#5138]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5138
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
  [i915#6230]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230
  [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#6590]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590
  [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
  [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9878]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_18262 -> Patchwork_164150v2

  CI-20190529: 20190529
  CI_DRM_18262: 5d36e6d54e963f0c1137aaf2249d2baa781f08c2 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8839: 8839
  Patchwork_164150v2: 5d36e6d54e963f0c1137aaf2249d2baa781f08c2 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/index.html

--===============4601430183632338151==
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
<tr><td><b>Series:</b></td><td>drm/{i915, xe}: move fbdev fb calls to paren=
t interface (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/164150/">https://patchwork.freedesktop.org/series/164150/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_164150v2/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_164150v2/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18262_full -&gt; Patchwork_164150v=
2_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_164150v2_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@gem_ccs@block-multicopy-i=
nplace.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@large-ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-1/igt@gem_ccs@large-ctrl-surf-co=
py.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/13008">i915#13008</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-dg2-3/igt@gem_ccs@suspend-resume@xma=
jor-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i91=
5#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@gem_ctx_sseu@engines.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-1/igt@gem_ctx_sseu@invalid-args.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@gem_exec_balancer@parallel=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4525">i915#4525</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@gem_exec_balancer@paralle=
l.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@gem_exec_balancer@parall=
el-dmabuf-import-out-fence.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@gem_exec_capture@capture-=
recoverable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/6344">i915#6344</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-5/igt@gem_exec_reloc@basic-write=
-read-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3281">i915#3281</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-glk2/igt@gem_lmem_swapping@heavy-mul=
ti.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-2/igt@gem_lmem_swapping@parallel=
-multi.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4613">i915#4613</a>) +4 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@gem_lmem_swapping@paralle=
l-multi.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-7/igt@gem_lmem_swapping@verify-=
ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@gem_partial_pwrite_pread@w=
rites-after-reads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3282">i915#3282</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-7/igt@gem_pwrite@basic-exhausti=
on.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@gem_pxp@hw-rejects-pxp-b=
uffer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13398">i915#13398</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@gem_userptr_blits@unsync=
-overlap.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-cycles:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-5/igt@gem_userptr_blits@unsync-u=
nmap-cycles.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-8/igt@gem_workarounds@suspend-resume-fd.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164=
150v2/shard-rkl-4/igt@gem_workarounds@suspend-resume-fd.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356=
">i915#13356</a>)</li>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-glk1/igt@gem_workarounds@suspend-res=
ume-fd.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13356">i915#13356</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/14586">i915#14586</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-1/igt@gen9_exec_parse@bb-oversiz=
e.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@gen9_exec_parse@bb-start-=
param.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@gen9_exec_parse@shadow-p=
eek.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/2856">i915#2856</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@fault-injection@__uc_init:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@i915_module_load@fault-in=
jection@__uc_init.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/15479">i915#15479</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@fault-injection@intel_connector_register:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@i915_module_load@fault-in=
jection@intel_connector_register.html">ABORT</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/15342">i915#15342</a>) +1 other t=
est abort</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-dg1:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_18262/shard-dg1-12/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-12/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_18262/shard-dg1-12/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/=
shard-dg1-13/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-13/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_18262/shard-dg1-13/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-14/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_18262/shard-dg1-14/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/=
shard-dg1-14/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-14/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_18262/shard-dg1-15/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-15/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_18262/shard-dg1-15/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/=
shard-dg1-16/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-16/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_18262/shard-dg1-16/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-17/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_18262/shard-dg1-17/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/=
shard-dg1-17/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-18/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_18262/shard-dg1-18/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-18/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_18262/shard-dg1-19/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/=
shard-dg1-19/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18262/shard-dg1-19/igt@i915_module_l=
oad@load.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_164150v2/shard-dg1-13/igt@i915_module_load@load.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415=
0v2/shard-dg1-12/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-19/igt@i91=
5_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_164150v2/shard-dg1-16/igt@i915_module_load@load.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16=
4150v2/shard-dg1-18/igt@i915_module_load@load.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-15/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_164150v2/shard-dg1-17/igt@i915_module_load@load.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_164150v2/shard-dg1-19/igt@i915_module_load@load.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-15/i=
gt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-13/igt@i915_module_load@load=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_164150v2/shard-dg1-18/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-1=
6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-14/igt@i915_module_load@l=
oad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_164150v2/shard-dg1-14/igt@i915_module_load@load.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg=
1-16/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-12/igt@i915_module_loa=
d@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_164150v2/shard-dg1-17/igt@i915_module_load@load.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard=
-dg1-15/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-13/igt@i915_module_=
load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_164150v2/shard-dg1-18/igt@i915_module_load@load.html">DMESG-WA=
RN</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415=
0v2/shard-dg1-19/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-17/igt@i91=
5_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_164150v2/shard-dg1-16/igt@i915_module_load@load.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16=
4150v2/shard-dg1-12/igt@i915_module_load@load.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg1-14/igt@=
i915_module_load@load.html">PASS</a>) (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-5/igt@i915_pm_freq_api@freq-rese=
t-multiple.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/8399">i915#8399</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-7/igt@i915_pm_freq_api@freq-res=
et-multiple.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@media-rc6-accuracy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-5/igt@i915_pm_rc6_residency@medi=
a-rc6-accuracy.html">SKIP</a> +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-fence.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1641=
50v2/shard-tglu-8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790">i915#1=
3790</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/2681">i915#2681</a>) +1 other test warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@i915_pm_sseu@full-enable.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4387">i915#4387</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@i915_pm_sseu@full-enable.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-mtlp-1/igt@i915_power@sanity.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-mtl=
p-7/igt@i915_power@sanity.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/7984">i915#7984</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-1/igt@i915_power@sanity.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
7984">i915#7984</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-mtlp-1/igt@i915_selftest@live.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-mt=
lp-5/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15560">i915#155=
60</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-mtlp-1/igt@i915_selftest@live@workarounds.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16415=
0v2/shard-mtlp-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i9=
15#12061</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_3d@basic:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-mtlp-4/igt@kms_3d@basic.html">PASS</a> -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-mtlp-1/i=
gt@kms_3d@basic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/15726">i915#15726</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@kms_atomic@plane-primary-o=
verlay-mutable-zpos.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/9531">i915#9531</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_atomic@plane-primary-=
overlay-mutable-zpos.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@kms_big_fb@4-tiled-32bpp-r=
otate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/5286">i915#5286</a>) +3 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-=
rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_big_fb@4-tiled-max-h=
w-stride-32bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@kms_big_fb@linear-8bpp-rot=
ate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-7/igt@kms_big_fb@linear-max-hw-=
stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-2/igt@kms_big_fb@linear-max-hw-s=
tride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>) +1 other test ski=
p</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_big_fb@linear-max-hw-=
stride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-dg1-13/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotat=
e-180-hflip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_164150v2/shard-dg1-14/igt@kms_big_fb@x-tiled-max-hw-str=
ide-64bpp-rotate-180-hflip.html">DMESG-WARN</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-dg2-4/igt@kms_ccs@bad-aux-stride-4-t=
iled-mtl-rc-ccs-cc@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#104=
34</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-dg2-3/igt@kms_ccs@bad-rotation-90-4-=
tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095=
</a>) +38 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-dg1-16/igt@kms_ccs@bad-rotation-90-4=
-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-4.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +183 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-glk10/igt@kms_ccs@crc-primary-basic-=
4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-2.html">SKIP</a> +25 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-2/igt@kms_ccs@crc-primary-basic-=
4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +75 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-=
1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-glk4/igt@kms_ccs@crc-primary-rotatio=
n-180-y-tiled-gen12-mc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> +81 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-glk11/igt@kms_ccs@crc-primary-rotati=
on-180-y-tiled-gen12-rc-ccs-cc.html">SKIP</a> +131 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-d-hdmi-a-3:</=
p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-dg2-1/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-dg2-rc-ccs-cc@pipe-d-hdmi-a-3.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +15 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-8/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-=
ccs.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_164150v2/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-ge=
n12-rc-ccs.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/15582">i915#15582</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-6/igt@kms_ccs@crc-primary-suspen=
d-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2.html">INCOMPLETE</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582">i915#15582</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@kms_ccs@crc-primary-suspen=
d-yf-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +46 other tests=
 skip</li>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-glk10/igt@kms_ccs@crc-primary-suspen=
d-yf-tiled-ccs.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/15582">i915#15582</a>) +1 other test incomplet=
e</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_ccs@crc-primary-suspe=
nd-yf-tiled-ccs@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +34 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_ccs@crc-sprite-planes=
-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-=
1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-7/igt@kms_ccs@crc-sprite-planes=
-basic-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +=
44 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-multiple:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_chamelium_frames@hdmi=
-crc-multiple.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-nonplanar-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_chamelium_frames@hdm=
i-crc-nonplanar-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-1/igt@kms_chamelium_hpd@dp-hpd-e=
nable-disable-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +4 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-hdcp14:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_content_protection@at=
omic-hdcp14.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/15865">i915#15865</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-1/igt@kms_content_protection@leg=
acy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15865">i915#15865</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_content_protection@m=
ei-interface.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/15865">i915#15865</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-256x85:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_cursor_crc@cursor-sli=
ding-256x85.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-32x10:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-5/igt@kms_cursor_crc@cursor-slid=
ing-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3555">i915#3555</a>) +5 other tests skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-7/igt@kms_cursor_crc@cursor-sli=
ding-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-1/igt@kms_cursor_crc@cursor-slid=
ing-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-64x21:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-64x21.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
64150v2/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-64x21.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">=
i915#13566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-2/igt@kms_cursor_crc@cursor-slid=
ing-64x21@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +5 other tests fai=
l</li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-tglu-10/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-=
hdmi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_164150v2/shard-tglu-9/igt@kms_cursor_crc@cursor-sliding-64=
x21@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-2/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#41=
03</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4=
103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-2/igt@kms_dither@fb-8bpc-vs-pane=
l-6bpc@pipe-a-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev@basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-1/igt@kms_dp_aux_dev@basic.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/1257">i915#1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-mst:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_dp_link_training@uhb=
r-mst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13748">i915#13748</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@kms_dsc@dsc-basic.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3840">i915#3840</a>) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_dsc@dsc-basic.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3840">i915#3840</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_dsc@dsc-fractional-b=
pp.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-7/igt@kms_dsc@dsc-with-output-f=
ormats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-glk1/igt@kms_fbcon_fbt@fbc-suspend.h=
tml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9878">i915#9878</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-1/igt@kms_feature_discovery@disp=
lay-3x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-on-nop:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms-=
on-nop.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-2/igt@kms_flip@2x-modeset-vs-vbl=
ank-race-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +4 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_flip@2x-modeset-vs-vb=
lank-race-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-snb1/igt@kms_flip@2x-modeset-vs-vblank-race-interruptib=
le@ab-vga1-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_164150v2/shard-snb6/igt@kms_flip@2x-modeset-vs-v=
blank-race-interruptible@ab-vga1-hdmi-a1.html">INCOMPLETE</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a=
>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-7/igt@kms_flip@2x-plain-flip-fb=
-recreate-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +3 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-glk4/igt@kms_flip@flip-vs-suspend.ht=
ml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/12745">i915#12745</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-glk4/igt@kms_flip@flip-vs-suspend@a-=
hdmi-a1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12745">i915#12745</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@kms_flip_scaled_crc@flip-3=
2bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +1 =
other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
32bpp-ytile-to-32bpp-ytileccs-downscaling.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_flip_scaled_crc@flip=
-64bpp-yftile-to-16bpp-yftile-upscaling.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-spr-indfb-fullscreen.html">SKIP</a> +29 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-1/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-offscreen-pri-shrfb-draw-render.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +1 =
other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_frontbuffer_tracking=
@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) =
+10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-1/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-spr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +27 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-rte:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@kms_frontbuffer_tracking@p=
sr-1p-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +17 other tests skip=
</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_frontbuffer_tracking@=
psr-1p-rte.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/15102">i915#15102</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-7/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> +26 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_hdr@bpc-switch.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-5/igt@kms_hdr@static-toggle.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-7/igt@kms_hdr@static-toggle.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-2/igt@kms_joiner@basic-big-joine=
r.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15460">i915#15460</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_joiner@basic-big-join=
er.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/15460">i915#15460</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-max-non-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-1/igt@kms_joiner@basic-max-non-j=
oiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13688">i915#13688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-2/igt@kms_plane@pixel-format-4-t=
iled-lnl-ccs-modifier-source-clamping.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +3 oth=
er tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_plane@pixel-format-4-=
tiled-lnl-ccs-modifier-source-clamping.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-modifier@pipe-b-plane-7:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_plane@pixel-format-y=
-tiled-modifier@pipe-b-plane-7.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/15608">i915#15608</a>) +1 other test=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_plane@pixel-format-y=
f-tiled-ccs-modifier-source-clamping.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +2 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_plane_multiple@tiling=
-yf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-5/igt@kms_plane_scaling@intel-ma=
x-src-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_plane_scaling@plane-=
upscale-factor-0-25-with-rotation@pipe-d.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +4 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-1/igt@kms_pm_backlight@basic-bri=
ghtness.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-psr:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_pm_dc@dc5-psr.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-dg1-14/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-=
dg1-18/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) +4 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset=
-non-lpsp.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15073">i915#15073</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-7/igt@kms_pm_rpm@dpms-mode-unse=
t-non-lpsp.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-7/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/sha=
rd-rkl-8/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-dg2-3/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16=
4150v2/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i9=
15#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@package-g7:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@kms_pm_rpm@package-g7.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/15403">i915#15403</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_pm_rpm@package-g7.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/15403">i915#15403</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_prime@d3hot.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-glk4/igt@kms_psr2_sf@fbc-pr-overlay-=
plane-move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +5 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-glk11/igt@kms_psr2_sf@fbc-psr2-overl=
ay-plane-move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@kms_psr2_sf@fbc-psr2-overl=
ay-plane-update-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests=
 skip</li>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-glk10/igt@kms_psr2_sf@fbc-psr2-overl=
ay-plane-update-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_psr2_sf@fbc-psr2-ove=
rlay-primary-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_psr2_sf@pr-overlay-pl=
ane-update-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@kms_psr2_su@page_flip-p010=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9683">i915#9683</a>)</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_psr2_su@page_flip-p01=
0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-2/igt@kms_psr@fbc-psr2-sprite-re=
nder.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9732">i915#9732</a>) +18 other tests skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_psr@fbc-psr2-sprite-r=
ender.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9732">i915#9732</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_psr@pr-dpms.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
9732">i915#9732</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_psr_stress_test@flip-=
primary-invalidate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@kms_rotation_crc@primary=
-yf-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-glk2/igt@kms_selftest@drm_framebuffe=
r.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/13179">i915#13179</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_setmode@basic-clone-s=
ingle-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@kms_tiled_display@basic-t=
est-pattern.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/8623">i915#8623</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-2/igt@kms_tiled_display@basic-te=
st-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>) +1 other test skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@kms_vrr@flip-suspend.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/15243">i915#15243</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@perf_pmu@rc6-all-gts.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/8516">i915#8516</a>) +1 other test skip</li>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-1/igt@perf_pmu@rc6-all-gts.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-6:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-tglu-10/igt@sriov_basic@enable-vfs-a=
utoprobe-off@numvfs-6.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/12910">i915#12910</a>) +9 other tests fail</l=
i>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_164150v2/shard-rkl-1/igt@sriov_basic@enable-vfs-bin=
d-unbind-each-numvfs-all.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-comp=
fmt0-smem-lmem0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg2-3/igt@gem_=
ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_big@single:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-4/igt@gem_exec_big@single.html">DMESG-FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15478">i915=
#15478</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_164150v2/shard-rkl-8/igt@gem_exec_big@single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-1/igt@i915_suspend@fence-restore-tiled2untiled.html=
">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/15140">i915#15140</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_164150v2/shard-rkl-5/igt@i915_suspend@fence-restore-ti=
led2untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-mtlp-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15733">i915#15733</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/5138">i915#5138</a>) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-mtlp-2/igt@k=
ms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-8/igt@kms_color@deep-color.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#126=
55</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_164150v2/shard-rkl-6/igt@kms_color@deep-color.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-128x42.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/13566">i915#13566</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_164150v2/shard-rkl-8/igt@kms_cursor_crc@cursor-onscreen-12=
8x42.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-glk5/igt@kms_flip@2x-flip-vs-expired-vblank.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/130=
27">i915#13027</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_164150v2/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank.htm=
l">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-3/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">=
i915#6113</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_164150v2/shard-rkl-2/igt@kms_flip@flip-vs-suspend.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-=
shrfb-draw-render.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/15389">i915#15389</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/6880">i915#6880</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg2-=
6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-render.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-8/igt@kms_hdr@bpc-switch-dpms.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#35=
55</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/8228">i915#8228</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_164150v2/shard-rkl-6/igt@kms_hdr@bpc-switch-dpms.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-dg2-4/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#=
15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_164150v2/shard-dg2-1/igt@kms_pm_rpm@dpms-non-lpsp.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-dg1-15/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
5073">i915#15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_164150v2/shard-dg1-12/igt@kms_pm_rpm@modeset-non-lpsp-stress=
.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/15073">i915#15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_164150v2/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp-=
stress-no-wait.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@crc32:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-6/igt@api_intel_bb@crc32.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/62=
30">i915#6230</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_164150v2/shard-rkl-3/igt@api_intel_bb@crc32.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6230">i915#=
6230</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9323">i915#9323</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@gem_ccs@block=
-copy-compressed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-wc-noreloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-6/igt@gem_exec_reloc@basic-write-wc-noreloc.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@gem_exec_reloc@basi=
c-write-wc-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-6/igt@gem_lmem_swapping@random-engines.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/4613">i915#4613</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@gem_lmem_swapping@random=
-engines.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-uncached:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-6/igt@gem_partial_pwrite_pread@write-uncached.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@gem_partial_pwrit=
e_pread@write-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-out:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-8/igt@gen9_exec_parse@bb-start-out.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i9=
15#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_164150v2/shard-rkl-6/igt@gen9_exec_parse@bb-start-out.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">=
i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@fault-injection@__fw_domain_init:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-glk9/igt@i915_module_load@fault-injection@__fw_domain_i=
nit.html">ABORT</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_164150v2/shard-glk4/igt@i915_module_load@fault-injection@__fw_=
domain_init.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@fault-injection@intel_connector_register:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-glk9/igt@i915_module_load@fault-injection@intel_connect=
or_register.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/15342">i915#15342</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-glk4/igt@i915_modu=
le_load@fault-injection@intel_connector_register.html">ABORT</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15342">i915#153=
42</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_mult@media-freq@gt0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-8/igt@i915_pm_freq_mult@media-freq@gt0.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6590=
">i915#6590</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_164150v2/shard-rkl-6/igt@i915_pm_freq_mult@media-freq@gt0.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/6590">i915#6590</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/5286">i915#5286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@kms_big_fb@4-tiled-16b=
pp-rotate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-8/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate=
-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-6/igt@kms_big_fb@4-tiled-=
max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286=
</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-6/igt@kms_big_fb@linear-8bpp-rotate-90.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3638">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@kms_big_fb@linear-8bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3638">i915#3638</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-8/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/36=
38">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_164150v2/shard-rkl-6/igt@kms_big_fb@x-tiled-64bpp-rotate-90.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotat=
e-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@kms_big_fb@yf-ti=
led-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> +3 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-6/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-=
cc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl=
-3/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-rc-ccs-cc.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#=
14098</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-=
ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/12313">i915#12313</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@kms_cc=
s@crc-primary-rotation-180-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-r=
c-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-=
rkl-3/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-=
2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-3=
:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-dg1-12/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen1=
2-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard=
-dg1-13/igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-mc-ccs@pipe-a-hdm=
i-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@ctm-0-50:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-dg1-12/igt@kms_chamelium_color@ctm-0-50.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i=
915#4423</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_164150v2/shard-dg1-13/igt@kms_chamelium_color@ctm-0-50.html">SKIP</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-6/igt@kms_chamelium_edid@dp-edid-stress-resolution-=
non-4k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard=
-rkl-3/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1115=
1">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-1.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/15330">i915#15330</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>) -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@=
kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915=
#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-dg1-13/igt@kms_content_protection@mei-interface.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/9433">i915#9433</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_164150v2/shard-dg1-17/igt@kms_content_protection@mei-interfa=
ce.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/15865">i915#15865</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x512.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/13049">i915#13049</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@kms_cursor_crc@=
cursor-offscreen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-6/igt@kms_dsc@dsc-with-bpc-formats.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i=
915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/3840">i915#3840</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@kms_dsc@dsc-wi=
th-bpc-formats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-6/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@kms_flip@2x-flip-=
vs-dpms-off-vs-modeset.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-rmfb-interruptible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-8/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/9934">i915#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_164150v2/shard-rkl-6/igt@kms_flip@2x-flip-vs-rmfb-interrupt=
ible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-downscaling=
:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-6=
4bpp-yftile-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/sh=
ard-rkl-3/igt@kms_flip_scaled_crc@flip-32bpp-yftileccs-to-64bpp-yftile-down=
scaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-8/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-=
indfb-onoff.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-6/igt@kms_frontbuffer_=
tracking@fbc-2p-primscrn-spr-indfb-onoff.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915=
#1825</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-=
pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-6/igt@kms_=
frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-render.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15102">i915#15102</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-=
multidraw.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/sh=
ard-rkl-3/igt@kms_frontbuffer_tracking@fbcpsr-1p-pri-indfb-multidraw.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3023">i915#3023</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-8/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-p=
ri-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-r=
kl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-pwrite.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +2 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-s=
pr-indfb-onoff.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3=
/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/18=
25">i915#1825</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri=
-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-=
3/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-blt.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
15102">i915#15102</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-=
shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/10433">i915#10433</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150=
v2/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-=
blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3458">i915#3458</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-indfb-scaledprim=
ary.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-dg2-4/igt@kms_fron=
tbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i91=
5#15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3458">i915#3458</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_multipipe_modeset@basic-max-pipe-crc-check:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-6/igt@kms_multipipe_modeset@basic-max-pipe-crc-chec=
k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/15815">i915#15815</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@kms_mult=
ipipe_modeset@basic-max-pipe-crc-check.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/15815">i915#15815</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-8/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifi=
er.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/15709">i915#15709</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_164150v2/shard-rkl-6/igt@kms_plane@pixel-format-=
4-tiled-lnl-ccs-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
64150v2/shard-rkl-8/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</=
li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-contin=
uous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/11520">i915#11520</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3=
/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11=
520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-8/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-=
area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11520">i915#11520</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-6/igt@kms_psr2_sf@psr2-over=
lay-plane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)=
 +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-page-flip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-6/igt@kms_psr@fbc-psr-primary-page-flip.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/107=
2">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/shard-rkl-3/igt@kms_psr@f=
bc-psr-primary-page-flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +5 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-center:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-8/igt@kms_scaling_modes@scaling-mode-center.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_164150v2/shard-rkl-6/igt@kms_scaling_modes@scaling-mode-cent=
er.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-8/igt@prime_vgem@basic-write.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291">i915#329=
1</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
3708">i915#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_164150v2/shard-rkl-6/igt@prime_vgem@basic-write.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18262/shard-rkl-8/igt@tools_test@sysfs_l3_parity.html">SKIP</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164150v2/s=
hard-rkl-6/igt@tools_test@sysfs_l3_parity.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +1=
 other test skip</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18262 -&gt; Patchwork_164150v2</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18262: 5d36e6d54e963f0c1137aaf2249d2baa781f08c2 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_8839: 8839<br />
  Patchwork_164150v2: 5d36e6d54e963f0c1137aaf2249d2baa781f08c2 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============4601430183632338151==--
