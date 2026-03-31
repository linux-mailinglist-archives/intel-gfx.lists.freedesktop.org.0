Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SJsQET4oy2nLEQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 03:49:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE39363248
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 03:49:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB8F810E114;
	Tue, 31 Mar 2026 01:49:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 021CD10E114;
 Tue, 31 Mar 2026 01:49:46 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6475792436289338232=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=93_i915=2ECI=2EFull=3A_success_for_drm/i915/dp=3A_Implement?=
 =?utf-8?q?_POST=5FLT=5FADJ=5FREQ_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Mar 2026 01:49:45 -0000
Message-ID: <177492178596.414889.4720595460220876234@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260330202629.28616-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20260330202629.28616-1-ville.syrjala@linux.intel.com>
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
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[intel-gfx@lists.freedesktop.org]
X-Rspamd-Queue-Id: DFE39363248
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============6475792436289338232==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dp: Implement POST_LT_ADJ_REQ (rev4)
URL   : https://patchwork.freedesktop.org/series/145348/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_18251_full -> Patchwork_145348v4_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_145348v4_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_basic@multigpu-create-close:
    - shard-tglu:         NOTRUN -> [SKIP][1] ([i915#7697]) +1 other test skip
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@gem_basic@multigpu-create-close.html

  * igt@gem_ccs@ctrl-surf-copy:
    - shard-rkl:          NOTRUN -> [SKIP][2] ([i915#3555] / [i915#9323])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@gem_ccs@ctrl-surf-copy.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [PASS][3] -> [INCOMPLETE][4] ([i915#12392] / [i915#13356])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg2-5/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg2-6/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-tglu:         NOTRUN -> [SKIP][5] ([i915#6335])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@gem_create@create-ext-cpu-access-sanity-check.html
    - shard-rkl:          NOTRUN -> [SKIP][6] ([i915#6335])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-glk:          NOTRUN -> [INCOMPLETE][7] ([i915#13356]) +1 other test incomplete
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-glk8/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_ctx_sseu@engines:
    - shard-rkl:          NOTRUN -> [SKIP][8] ([i915#280])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@gem_ctx_sseu@engines.html

  * igt@gem_exec_balancer@parallel:
    - shard-rkl:          NOTRUN -> [SKIP][9] ([i915#4525]) +1 other test skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-rkl:          NOTRUN -> [SKIP][10] ([i915#14544] / [i915#4525])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-tglu:         NOTRUN -> [SKIP][11] ([i915#4525])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_reloc@basic-cpu-gtt-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][12] ([i915#3281]) +4 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-1/igt@gem_exec_reloc@basic-cpu-gtt-noreloc.html

  * igt@gem_exec_reloc@basic-wc-read-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][13] ([i915#14544] / [i915#3281]) +1 other test skip
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@gem_exec_reloc@basic-wc-read-noreloc.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - shard-dg2:          [PASS][14] -> [INCOMPLETE][15] ([i915#13356])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg2-1/igt@gem_exec_suspend@basic-s0@smem.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg2-3/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_lmem_swapping@heavy-random:
    - shard-tglu:         NOTRUN -> [SKIP][16] ([i915#4613]) +1 other test skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@gem_lmem_swapping@heavy-random.html

  * igt@gem_lmem_swapping@random:
    - shard-rkl:          NOTRUN -> [SKIP][17] ([i915#4613]) +3 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-1/igt@gem_lmem_swapping@random.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-glk:          NOTRUN -> [SKIP][18] ([i915#4613]) +4 other tests skip
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-glk8/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_mmap_offset@clear@smem0:
    - shard-mtlp:         [PASS][19] -> [DMESG-WARN][20] ([i915#15478]) +1 other test dmesg-warn
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-mtlp-6/igt@gem_mmap_offset@clear@smem0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-mtlp-8/igt@gem_mmap_offset@clear@smem0.html

  * igt@gem_pxp@hw-rejects-pxp-buffer:
    - shard-tglu:         NOTRUN -> [SKIP][21] ([i915#13398])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@gem_pxp@hw-rejects-pxp-buffer.html

  * igt@gem_pxp@hw-rejects-pxp-context:
    - shard-rkl:          NOTRUN -> [SKIP][22] ([i915#13717])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@gem_pxp@hw-rejects-pxp-context.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-rkl:          NOTRUN -> [ABORT][23] ([i915#15131])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-1/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@gem_set_tiling_vs_blt@untiled-to-tiled:
    - shard-rkl:          NOTRUN -> [SKIP][24] ([i915#8411])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@gem_set_tiling_vs_blt@untiled-to-tiled.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-rkl:          NOTRUN -> [SKIP][25] ([i915#3282]) +1 other test skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-tglu:         NOTRUN -> [SKIP][26] ([i915#3297])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@dmabuf-unsync:
    - shard-rkl:          NOTRUN -> [SKIP][27] ([i915#3297])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@gem_userptr_blits@dmabuf-unsync.html

  * igt@gem_workarounds@suspend-resume:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][28] ([i915#13356] / [i915#14586])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-glk10/igt@gem_workarounds@suspend-resume.html

  * igt@gen9_exec_parse@unaligned-access:
    - shard-rkl:          NOTRUN -> [SKIP][29] ([i915#2527])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@gen9_exec_parse@unaligned-access.html

  * igt@i915_pm_freq_api@freq-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][30] ([i915#8399]) +1 other test skip
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@i915_pm_freq_api@freq-suspend.html
    - shard-tglu:         NOTRUN -> [SKIP][31] ([i915#8399])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@i915_pm_freq_api@freq-suspend.html

  * igt@i915_query@hwconfig_table:
    - shard-rkl:          NOTRUN -> [SKIP][32] ([i915#6245])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-1/igt@i915_query@hwconfig_table.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-snb:          NOTRUN -> [SKIP][33] +19 other tests skip
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-snb7/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@i915_query@test-query-geometry-subslices:
    - shard-rkl:          NOTRUN -> [SKIP][34] ([i915#5723])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@i915_query@test-query-geometry-subslices.html
    - shard-tglu:         NOTRUN -> [SKIP][35] ([i915#5723])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@i915_query@test-query-geometry-subslices.html

  * igt@i915_selftest@live:
    - shard-dg1:          [PASS][36] -> [DMESG-FAIL][37] ([i915#15560])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-13/igt@i915_selftest@live.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gem_contexts:
    - shard-dg1:          [PASS][38] -> [DMESG-FAIL][39] ([i915#15433])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-13/igt@i915_selftest@live@gem_contexts.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-tglu-1:       NOTRUN -> [INCOMPLETE][40] ([i915#4817] / [i915#7443])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-1/igt@i915_suspend@basic-s3-without-i915.html

  * igt@i915_suspend@forcewake:
    - shard-glk:          NOTRUN -> [INCOMPLETE][41] ([i915#4817])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-glk9/igt@i915_suspend@forcewake.html

  * igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-2:
    - shard-glk:          [PASS][42] -> [FAIL][43] ([i915#14888]) +1 other test fail
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-glk8/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-2.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-glk5/igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-2.html

  * igt@kms_async_flips@async-flip-suspend-resume:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][44] ([i915#12761])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-glk10/igt@kms_async_flips@async-flip-suspend-resume.html

  * igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][45] ([i915#12761] / [i915#14995])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-glk10/igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#9531])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-glk:          NOTRUN -> [SKIP][47] ([i915#1769])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-glk5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3:
    - shard-dg2:          [PASS][48] -> [FAIL][49] ([i915#5956]) +1 other test fail
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg2-3/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg2-8/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-rkl:          NOTRUN -> [SKIP][50] ([i915#5286]) +2 other tests skip
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglu:         NOTRUN -> [SKIP][51] ([i915#5286]) +3 other tests skip
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][52] ([i915#3638])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@kms_big_fb@x-tiled-8bpp-rotate-90.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][53] ([i915#10307] / [i915#10434] / [i915#6095])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg2-4/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][54] ([i915#12313])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
    - shard-glk:          NOTRUN -> [SKIP][55] +375 other tests skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-glk5/igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-2:
    - shard-glk10:        NOTRUN -> [SKIP][56] +143 other tests skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-glk10/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][57] ([i915#12313])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#10307] / [i915#6095]) +34 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg2-4/igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][59] ([i915#6095]) +11 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][60] ([i915#6095]) +49 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][61] ([i915#6095]) +147 other tests skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][62] ([i915#6095]) +39 other tests skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:
    - shard-rkl:          [PASS][63] -> [INCOMPLETE][64] ([i915#15582]) +1 other test incomplete
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][65] ([i915#14098] / [i915#14544] / [i915#6095]) +1 other test skip
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#14544] / [i915#6095]) +1 other test skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][67] ([i915#6095]) +4 other tests skip
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-1/igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][68] ([i915#14098] / [i915#6095]) +34 other tests skip
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][69] ([i915#12313] / [i915#14544])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-tglu:         NOTRUN -> [SKIP][70] ([i915#3742])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium_edid@vga-edid-read:
    - shard-tglu-1:       NOTRUN -> [SKIP][71] ([i915#11151] / [i915#7828]) +2 other tests skip
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-1/igt@kms_chamelium_edid@vga-edid-read.html

  * igt@kms_chamelium_hpd@dp-hpd-after-suspend:
    - shard-glk11:        NOTRUN -> [SKIP][72] +64 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-glk11/igt@kms_chamelium_hpd@dp-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:
    - shard-rkl:          NOTRUN -> [SKIP][73] ([i915#11151] / [i915#7828]) +5 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html
    - shard-tglu:         NOTRUN -> [SKIP][74] ([i915#11151] / [i915#7828]) +3 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#15330] / [i915#3116])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-1/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#14544] / [i915#15330] / [i915#3116])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@srm:
    - shard-rkl:          NOTRUN -> [SKIP][77] ([i915#15865]) +1 other test skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@kms_content_protection@srm.html
    - shard-tglu:         NOTRUN -> [SKIP][78] ([i915#15865]) +1 other test skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [FAIL][79] ([i915#13566])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-random-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][80] ([i915#13049]) +2 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@kms_cursor_crc@cursor-random-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#3555]) +2 other tests skip
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-1/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x170:
    - shard-rkl:          NOTRUN -> [SKIP][82] ([i915#13049] / [i915#14544])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-512x170.html

  * igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1:
    - shard-rkl:          [PASS][83] -> [FAIL][84] ([i915#13566]) +1 other test fail
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-dg1:          [PASS][85] -> [DMESG-WARN][86] ([i915#4423]) +1 other test dmesg-warn
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-13/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][87] +12 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-1/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][88] ([i915#14544]) +2 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-tglu:         NOTRUN -> [SKIP][89] ([i915#4103]) +1 other test skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-9/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_dp_aux_dev@basic:
    - shard-rkl:          NOTRUN -> [SKIP][90] ([i915#1257])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@kms_dp_aux_dev@basic.html
    - shard-tglu:         NOTRUN -> [SKIP][91] ([i915#1257])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@kms_dp_aux_dev@basic.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][92] ([i915#3840])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html
    - shard-tglu:         NOTRUN -> [SKIP][93] ([i915#3840])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#3840] / [i915#9053])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-1/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][95] ([i915#9878])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-glk1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          NOTRUN -> [SKIP][96] ([i915#3955])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-1/igt@kms_fbcon_fbt@psr.html

  * igt@kms_feature_discovery@psr1:
    - shard-rkl:          NOTRUN -> [SKIP][97] ([i915#14544] / [i915#658])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_feature_discovery@psr1.html

  * igt@kms_feature_discovery@psr2:
    - shard-tglu:         NOTRUN -> [SKIP][98] ([i915#658])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-blocking-wf_vblank:
    - shard-tglu-1:       NOTRUN -> [SKIP][99] ([i915#3637] / [i915#9934]) +1 other test skip
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-1/igt@kms_flip@2x-blocking-wf_vblank.html

  * igt@kms_flip@2x-modeset-vs-vblank-race:
    - shard-tglu:         NOTRUN -> [SKIP][100] ([i915#3637] / [i915#9934]) +3 other tests skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@kms_flip@2x-modeset-vs-vblank-race.html

  * igt@kms_flip@2x-plain-flip:
    - shard-rkl:          NOTRUN -> [SKIP][101] ([i915#9934]) +5 other tests skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-1/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][102] ([i915#12745] / [i915#4839])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-glk11/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-rkl:          [PASS][103] -> [ABORT][104] ([i915#15132])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-8/igt@kms_flip@flip-vs-suspend-interruptible.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-1/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2:
    - shard-rkl:          NOTRUN -> [ABORT][105] ([i915#15132])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-1/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend@a-hdmi-a1:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][106] ([i915#12745])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-glk11/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][107] ([i915#15643]) +1 other test skip
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][108] ([i915#15643])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:
    - shard-rkl:          NOTRUN -> [SKIP][109] ([i915#14544] / [i915#15643])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-shrfb-draw-render:
    - shard-dg2:          [PASS][110] -> [FAIL][111] ([i915#15389])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-shrfb-draw-render.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
    - shard-rkl:          NOTRUN -> [SKIP][112] ([i915#1825]) +17 other tests skip
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-tglu-1:       NOTRUN -> [SKIP][113] +8 other tests skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-tiling-linear:
    - shard-dg2:          [PASS][114] -> [FAIL][115] ([i915#15389] / [i915#6880]) +1 other test fail
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-tiling-linear.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#15102]) +3 other tests skip
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:
    - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#14544] / [i915#15102] / [i915#3023])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:
    - shard-tglu:         NOTRUN -> [SKIP][118] ([i915#15102]) +8 other tests skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-pgflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][119] ([i915#14544] / [i915#1825]) +4 other tests skip
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render:
    - shard-tglu:         NOTRUN -> [SKIP][120] +33 other tests skip
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:
    - shard-tglu-1:       NOTRUN -> [SKIP][121] ([i915#15102]) +2 other tests skip
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#15102] / [i915#3023]) +13 other tests skip
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@static-swap:
    - shard-tglu:         NOTRUN -> [SKIP][123] ([i915#3555] / [i915#8228]) +1 other test skip
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@kms_hdr@static-swap.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][124] ([i915#3555] / [i915#8228])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][125] ([i915#12756] / [i915#13476])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][126] ([i915#12756] / [i915#13409] / [i915#13476]) +1 other test incomplete
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-glk11/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][127] ([i915#13476])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2.html

  * igt@kms_plane@pixel-format-y-tiled-ccs-modifier:
    - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#15709]) +2 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@kms_plane@pixel-format-y-tiled-ccs-modifier.html

  * igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier@pipe-b-plane-7:
    - shard-tglu-1:       NOTRUN -> [SKIP][129] ([i915#15608]) +1 other test skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-1/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier@pipe-b-plane-7.html

  * igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping:
    - shard-tglu:         NOTRUN -> [SKIP][130] ([i915#15709]) +2 other tests skip
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping.html

  * igt@kms_plane_alpha_blend@constant-alpha-max:
    - shard-glk11:        NOTRUN -> [FAIL][131] ([i915#10647] / [i915#12169])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-glk11/igt@kms_plane_alpha_blend@constant-alpha-max.html

  * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-hdmi-a-1:
    - shard-glk11:        NOTRUN -> [FAIL][132] ([i915#10647]) +1 other test fail
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-glk11/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-hdmi-a-1.html

  * igt@kms_plane_multiple@2x-tiling-none:
    - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#13958])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@kms_plane_multiple@2x-tiling-none.html

  * igt@kms_plane_multiple@2x-tiling-y:
    - shard-tglu:         NOTRUN -> [SKIP][134] ([i915#13958])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@kms_plane_multiple@2x-tiling-y.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
    - shard-tglu:         NOTRUN -> [SKIP][135] ([i915#15329]) +4 other tests skip
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][136] ([i915#12343])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][137] ([i915#14544] / [i915#5354])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-rkl:          NOTRUN -> [FAIL][138] ([i915#15752])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][139] ([i915#15739])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-1/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [PASS][140] -> [SKIP][141] ([i915#15073]) +2 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-dg2:          [PASS][142] -> [SKIP][143] ([i915#15073])
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg2-6/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-tglu:         NOTRUN -> [SKIP][144] ([i915#15073])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@drm-resources-equal:
    - shard-dg1:          [PASS][145] -> [SKIP][146] ([i915#12916] / [i915#4423])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-13/igt@kms_pm_rpm@drm-resources-equal.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@kms_pm_rpm@drm-resources-equal.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#6524])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#14544] / [i915#6524])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:
    - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#11520] / [i915#14544])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:
    - shard-tglu:         NOTRUN -> [SKIP][150] ([i915#11520]) +2 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][151] ([i915#11520])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][152] ([i915#11520]) +12 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-glk6/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-sf:
    - shard-glk11:        NOTRUN -> [SKIP][153] ([i915#11520]) +1 other test skip
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-glk11/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:
    - shard-glk10:        NOTRUN -> [SKIP][154] ([i915#11520]) +2 other tests skip
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-glk10/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#11520]) +1 other test skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf.html

  * igt@kms_psr@fbc-psr2-primary-blt:
    - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#1072] / [i915#9732]) +11 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@kms_psr@fbc-psr2-primary-blt.html

  * igt@kms_psr@fbc-psr2-sprite-render:
    - shard-tglu:         NOTRUN -> [SKIP][157] ([i915#9732]) +10 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@kms_psr@fbc-psr2-sprite-render.html

  * igt@kms_psr@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][158] ([i915#1072] / [i915#14544] / [i915#9732]) +3 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_psr@psr-suspend.html

  * igt@kms_psr@psr2-no-drrs:
    - shard-tglu-1:       NOTRUN -> [SKIP][159] ([i915#9732])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-1/igt@kms_psr@psr2-no-drrs.html

  * igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:
    - shard-glk:          NOTRUN -> [INCOMPLETE][160] ([i915#15500])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-glk5/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
    - shard-tglu:         NOTRUN -> [SKIP][161] ([i915#5289]) +1 other test skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html

  * igt@kms_scaling_modes@scaling-mode-full:
    - shard-tglu:         NOTRUN -> [SKIP][162] ([i915#3555]) +2 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@kms_scaling_modes@scaling-mode-full.html

  * igt@kms_selftest@drm_framebuffer:
    - shard-tglu-1:       NOTRUN -> [ABORT][163] ([i915#13179]) +1 other test abort
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-1/igt@kms_selftest@drm_framebuffer.html

  * igt@kms_setmode@basic@pipe-a-hdmi-a-1:
    - shard-dg2:          [PASS][164] -> [FAIL][165] ([i915#15106]) +1 other test fail
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg2-4/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg2-4/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html

  * igt@kms_vrr@flip-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#14544] / [i915#15243] / [i915#3555])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_vrr@flip-suspend.html

  * igt@kms_vrr@negative-basic:
    - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#3555] / [i915#9906])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@kms_vrr@negative-basic.html
    - shard-tglu:         NOTRUN -> [SKIP][168] ([i915#3555] / [i915#9906])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@kms_vrr@negative-basic.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#9906])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@kms_vrr@seamless-rr-switch-virtual.html

  * igt@perf@per-context-mode-unprivileged:
    - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#2435])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@perf@per-context-mode-unprivileged.html

  * igt@perf_pmu@busy-hang@rcs0:
    - shard-glk:          [PASS][171] -> [DMESG-WARN][172] ([i915#118]) +1 other test dmesg-warn
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-glk8/igt@perf_pmu@busy-hang@rcs0.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-glk5/igt@perf_pmu@busy-hang@rcs0.html

  * igt@perf_pmu@module-unload:
    - shard-tglu:         NOTRUN -> [ABORT][173] ([i915#15778])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-9/igt@perf_pmu@module-unload.html

  
#### Possible fixes ####

  * igt@gem_workarounds@suspend-resume-context:
    - shard-glk:          [INCOMPLETE][174] ([i915#13356]) -> [PASS][175]
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-glk8/igt@gem_workarounds@suspend-resume-context.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-glk1/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_module_load@load:
    - shard-dg1:          ([PASS][176], [PASS][177], [PASS][178], [PASS][179], [PASS][180], [PASS][181], [PASS][182], [PASS][183], [PASS][184], [PASS][185], [PASS][186], [DMESG-WARN][187], [PASS][188], [PASS][189], [PASS][190], [PASS][191], [PASS][192], [PASS][193], [PASS][194], [PASS][195], [PASS][196], [PASS][197], [PASS][198], [PASS][199], [PASS][200]) ([i915#4391] / [i915#4423]) -> ([PASS][201], [PASS][202], [PASS][203], [PASS][204], [PASS][205], [PASS][206], [PASS][207], [PASS][208], [PASS][209], [PASS][210], [PASS][211], [PASS][212], [PASS][213], [PASS][214], [PASS][215], [PASS][216], [PASS][217], [PASS][218], [PASS][219], [PASS][220], [PASS][221], [PASS][222], [PASS][223], [PASS][224], [PASS][225])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-17/igt@i915_module_load@load.html
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-18/igt@i915_module_load@load.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-18/igt@i915_module_load@load.html
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-18/igt@i915_module_load@load.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-14/igt@i915_module_load@load.html
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-17/igt@i915_module_load@load.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-19/igt@i915_module_load@load.html
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-16/igt@i915_module_load@load.html
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-17/igt@i915_module_load@load.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-12/igt@i915_module_load@load.html
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-19/igt@i915_module_load@load.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-14/igt@i915_module_load@load.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-14/igt@i915_module_load@load.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-12/igt@i915_module_load@load.html
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-12/igt@i915_module_load@load.html
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-16/igt@i915_module_load@load.html
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-17/igt@i915_module_load@load.html
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-19/igt@i915_module_load@load.html
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-13/igt@i915_module_load@load.html
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-16/igt@i915_module_load@load.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-13/igt@i915_module_load@load.html
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-18/igt@i915_module_load@load.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-14/igt@i915_module_load@load.html
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-13/igt@i915_module_load@load.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-16/igt@i915_module_load@load.html
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@i915_module_load@load.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@i915_module_load@load.html
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@i915_module_load@load.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-13/igt@i915_module_load@load.html
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-13/igt@i915_module_load@load.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-13/igt@i915_module_load@load.html
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-13/igt@i915_module_load@load.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-14/igt@i915_module_load@load.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-14/igt@i915_module_load@load.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-14/igt@i915_module_load@load.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-14/igt@i915_module_load@load.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-16/igt@i915_module_load@load.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-16/igt@i915_module_load@load.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-16/igt@i915_module_load@load.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-16/igt@i915_module_load@load.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-17/igt@i915_module_load@load.html
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-17/igt@i915_module_load@load.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-17/igt@i915_module_load@load.html
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-17/igt@i915_module_load@load.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-18/igt@i915_module_load@load.html
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-18/igt@i915_module_load@load.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-18/igt@i915_module_load@load.html
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-19/igt@i915_module_load@load.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-19/igt@i915_module_load@load.html
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-19/igt@i915_module_load@load.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - shard-rkl:          [ABORT][226] ([i915#15060]) -> [PASS][227]
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-1/igt@i915_pm_rpm@system-suspend-devices.html
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - shard-dg1:          [DMESG-WARN][228] ([i915#4391] / [i915#4423]) -> [PASS][229] +1 other test pass
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-18/igt@i915_suspend@basic-s2idle-without-i915.html
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-rkl:          [INCOMPLETE][230] ([i915#4817]) -> [PASS][231]
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-4/igt@i915_suspend@fence-restore-tiled2untiled.html
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-0:
    - shard-dg2:          [DMESG-WARN][232] -> [PASS][233]
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg2-1/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg2-3/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html

  * igt@kms_cursor_crc@cursor-onscreen-128x42:
    - shard-rkl:          [FAIL][234] ([i915#13566]) -> [PASS][235]
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-128x42.html
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-128x42.html

  * igt@kms_flip@flip-vs-dpms-on-nop-interruptible:
    - shard-rkl:          [FAIL][236] ([i915#10826]) -> [PASS][237]
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-2/igt@kms_flip@flip-vs-dpms-on-nop-interruptible.html
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@kms_flip@flip-vs-dpms-on-nop-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible:
    - shard-dg2:          [FAIL][238] ([i915#13027]) -> [PASS][239]
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg2-7/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg2-1/igt@kms_flip@flip-vs-expired-vblank-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a3:
    - shard-dg2:          [FAIL][240] ([i915#15718]) -> [PASS][241]
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg2-7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a3.html
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg2-1/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a3.html

  * igt@kms_hdr@bpc-switch:
    - shard-rkl:          [SKIP][242] ([i915#3555] / [i915#8228]) -> [PASS][243]
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-7/igt@kms_hdr@bpc-switch.html
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_hdr@bpc-switch.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-dg1:          [SKIP][244] ([i915#15073]) -> [PASS][245]
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-16/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-14/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_pm_rpm@drm-resources-equal:
    - shard-dg2:          [SKIP][246] ([i915#12916]) -> [PASS][247]
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg2-4/igt@kms_pm_rpm@drm-resources-equal.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg2-4/igt@kms_pm_rpm@drm-resources-equal.html

  * igt@kms_pm_rpm@modeset-lpsp-stress:
    - shard-rkl:          [SKIP][248] ([i915#14544] / [i915#15073]) -> [PASS][249]
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_sequence@get-busy:
    - shard-dg1:          [DMESG-WARN][250] ([i915#4423]) -> [PASS][251] +1 other test pass
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-14/igt@kms_sequence@get-busy.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-13/igt@kms_sequence@get-busy.html

  * igt@kms_setmode@basic:
    - shard-dg1:          [FAIL][252] ([i915#15106]) -> [PASS][253] +2 other tests pass
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-13/igt@kms_setmode@basic.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@kms_setmode@basic.html
    - shard-tglu:         [FAIL][254] ([i915#15106]) -> [PASS][255] +2 other tests pass
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-tglu-8/igt@kms_setmode@basic.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-2/igt@kms_setmode@basic.html

  * igt@kms_setmode@basic@pipe-b-edp-1:
    - shard-mtlp:         [FAIL][256] ([i915#15106]) -> [PASS][257] +2 other tests pass
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-mtlp-5/igt@kms_setmode@basic@pipe-b-edp-1.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-mtlp-5/igt@kms_setmode@basic@pipe-b-edp-1.html

  * igt@perf_pmu@busy-double-start@rcs0:
    - shard-mtlp:         [FAIL][258] ([i915#4349]) -> [PASS][259]
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-mtlp-5/igt@perf_pmu@busy-double-start@rcs0.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-mtlp-2/igt@perf_pmu@busy-double-start@rcs0.html

  
#### Warnings ####

  * igt@api_intel_bb@blit-reloc-keep-cache:
    - shard-rkl:          [SKIP][260] ([i915#14544] / [i915#8411]) -> [SKIP][261] ([i915#8411])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@api_intel_bb@blit-reloc-keep-cache.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@api_intel_bb@blit-reloc-keep-cache.html

  * igt@device_reset@cold-reset-bound:
    - shard-rkl:          [SKIP][262] ([i915#11078] / [i915#14544]) -> [SKIP][263] ([i915#11078])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@device_reset@cold-reset-bound.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@device_reset@cold-reset-bound.html

  * igt@drm_buddy@drm_buddy:
    - shard-rkl:          [SKIP][264] ([i915#14544] / [i915#15678]) -> [SKIP][265] ([i915#15678])
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@drm_buddy@drm_buddy.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-3/igt@drm_buddy@drm_buddy.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - shard-rkl:          [SKIP][266] ([i915#14544] / [i915#3281]) -> [SKIP][267] ([i915#3281]) +7 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@gem_bad_reloc@negative-reloc-lut.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-rkl:          [SKIP][268] ([i915#3555] / [i915#9323]) -> [SKIP][269] ([i915#14544] / [i915#3555] / [i915#9323])
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-1/igt@gem_ccs@block-copy-compressed.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-rkl:          [SKIP][270] ([i915#14544] / [i915#9323]) -> [SKIP][271] ([i915#9323])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@gem_ccs@block-multicopy-compressed.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-3/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-rkl:          [SKIP][272] ([i915#14544] / [i915#6335]) -> [SKIP][273] ([i915#6335])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@gem_create@create-ext-cpu-access-big.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-rkl:          [SKIP][274] ([i915#280]) -> [SKIP][275] ([i915#14544] / [i915#280])
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-7/igt@gem_ctx_sseu@invalid-sseu.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
    - shard-rkl:          [SKIP][276] ([i915#4525]) -> [SKIP][277] ([i915#14544] / [i915#4525])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-7/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-rkl:          [SKIP][278] ([i915#14544] / [i915#6344]) -> [SKIP][279] ([i915#6344])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@gem_exec_capture@capture-recoverable.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_reloc@basic-wc-gtt-active:
    - shard-rkl:          [SKIP][280] ([i915#3281]) -> [SKIP][281] ([i915#14544] / [i915#3281]) +3 other tests skip
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-1/igt@gem_exec_reloc@basic-wc-gtt-active.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@gem_exec_reloc@basic-wc-gtt-active.html

  * igt@gem_exec_schedule@semaphore-power:
    - shard-rkl:          [SKIP][282] ([i915#14544] / [i915#7276]) -> [SKIP][283] ([i915#7276])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@gem_exec_schedule@semaphore-power.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@gem_exec_schedule@semaphore-power.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-rkl:          [SKIP][284] ([i915#14544] / [i915#4613]) -> [SKIP][285] ([i915#4613]) +3 other tests skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-3/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_media_vme:
    - shard-rkl:          [SKIP][286] ([i915#14544] / [i915#284]) -> [SKIP][287] ([i915#284])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@gem_media_vme.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@gem_media_vme.html

  * igt@gem_partial_pwrite_pread@writes-after-reads:
    - shard-rkl:          [SKIP][288] ([i915#14544] / [i915#3282]) -> [SKIP][289] ([i915#3282]) +4 other tests skip
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-3/igt@gem_partial_pwrite_pread@writes-after-reads.html

  * igt@gem_pread@exhaustion:
    - shard-tglu:         [WARN][290] ([i915#2658]) -> [ABORT][291] ([i915#15647])
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-tglu-8/igt@gem_pread@exhaustion.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-tglu-2/igt@gem_pread@exhaustion.html

  * igt@gem_userptr_blits@relocations:
    - shard-rkl:          [SKIP][292] ([i915#3281] / [i915#3297]) -> [SKIP][293] ([i915#14544] / [i915#3281] / [i915#3297])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-1/igt@gem_userptr_blits@relocations.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@gem_userptr_blits@relocations.html

  * igt@gen9_exec_parse@batch-zero-length:
    - shard-rkl:          [SKIP][294] ([i915#2527]) -> [SKIP][295] ([i915#14544] / [i915#2527])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-1/igt@gen9_exec_parse@batch-zero-length.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@gen9_exec_parse@batch-zero-length.html

  * igt@gen9_exec_parse@shadow-peek:
    - shard-rkl:          [SKIP][296] ([i915#14544] / [i915#2527]) -> [SKIP][297] ([i915#2527]) +2 other tests skip
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@gen9_exec_parse@shadow-peek.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-3/igt@gen9_exec_parse@shadow-peek.html

  * igt@i915_module_load@resize-bar:
    - shard-rkl:          [SKIP][298] ([i915#14544] / [i915#6412]) -> [SKIP][299] ([i915#6412])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@i915_module_load@resize-bar.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-3/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_freq_api@freq-basic-api:
    - shard-rkl:          [SKIP][300] ([i915#8399]) -> [SKIP][301] ([i915#14544] / [i915#8399])
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-1/igt@i915_pm_freq_api@freq-basic-api.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@i915_pm_freq_api@freq-basic-api.html

  * igt@i915_power@sanity:
    - shard-rkl:          [SKIP][302] ([i915#14544] / [i915#7984]) -> [SKIP][303] ([i915#7984])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@i915_power@sanity.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@i915_power@sanity.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels:
    - shard-rkl:          [SKIP][304] ([i915#14544] / [i915#1769] / [i915#3555]) -> [SKIP][305] ([i915#1769] / [i915#3555])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-rkl:          [SKIP][306] ([i915#5286]) -> [SKIP][307] ([i915#14544] / [i915#5286]) +1 other test skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-7/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-rkl:          [SKIP][308] ([i915#14544] / [i915#5286]) -> [SKIP][309] ([i915#5286]) +2 other tests skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][310] ([i915#14544] / [i915#3828]) -> [SKIP][311] ([i915#3828])
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-rkl:          [SKIP][312] ([i915#3638]) -> [SKIP][313] ([i915#14544] / [i915#3638])
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-7/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
    - shard-rkl:          [SKIP][314] ([i915#14544] / [i915#3638]) -> [SKIP][315] ([i915#3638]) +2 other tests skip
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-3/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-rkl:          [SKIP][316] ([i915#14544]) -> [SKIP][317] +13 other tests skip
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          [SKIP][318] ([i915#14544] / [i915#6095]) -> [SKIP][319] ([i915#6095]) +7 other tests skip
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-3/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          [SKIP][320] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][321] ([i915#14098] / [i915#6095]) +15 other tests skip
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-3/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][322] ([i915#12313]) -> [SKIP][323] ([i915#12313] / [i915#14544])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg1:          [SKIP][324] ([i915#6095]) -> [SKIP][325] ([i915#4423] / [i915#6095]) +3 other tests skip
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-13/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-3.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs:
    - shard-rkl:          [SKIP][326] ([i915#14098] / [i915#6095]) -> [SKIP][327] ([i915#14098] / [i915#14544] / [i915#6095]) +9 other tests skip
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          [SKIP][328] ([i915#6095]) -> [SKIP][329] ([i915#14544] / [i915#6095]) +8 other tests skip
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-2.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_chamelium_frames@hdmi-crc-multiple:
    - shard-rkl:          [SKIP][330] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][331] ([i915#11151] / [i915#7828]) +4 other tests skip
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_chamelium_frames@hdmi-crc-multiple.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-3/igt@kms_chamelium_frames@hdmi-crc-multiple.html

  * igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:
    - shard-rkl:          [SKIP][332] ([i915#11151] / [i915#7828]) -> [SKIP][333] ([i915#11151] / [i915#14544] / [i915#7828]) +2 other tests skip
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-7/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.html

  * igt@kms_content_protection@dp-mst-lic-type-0-hdcp14:
    - shard-rkl:          [SKIP][334] ([i915#14544] / [i915#15330]) -> [SKIP][335] ([i915#15330])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-3/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html

  * igt@kms_content_protection@legacy-hdcp14:
    - shard-rkl:          [SKIP][336] ([i915#15865]) -> [SKIP][337] ([i915#14544] / [i915#15865])
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-7/igt@kms_content_protection@legacy-hdcp14.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_content_protection@legacy-hdcp14.html

  * igt@kms_content_protection@mei-interface:
    - shard-rkl:          [SKIP][338] ([i915#14544] / [i915#15865]) -> [SKIP][339] ([i915#15865]) +1 other test skip
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_content_protection@mei-interface.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@suspend-resume:
    - shard-dg1:          [SKIP][340] ([i915#15865]) -> [SKIP][341] ([i915#15865] / [i915#4423])
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-13/igt@kms_content_protection@suspend-resume.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@kms_content_protection@suspend-resume.html

  * igt@kms_cursor_crc@cursor-offscreen-32x10:
    - shard-rkl:          [SKIP][342] ([i915#14544] / [i915#3555]) -> [SKIP][343] ([i915#3555]) +3 other tests skip
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-32x10.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-3/igt@kms_cursor_crc@cursor-offscreen-32x10.html

  * igt@kms_cursor_crc@cursor-random-512x170:
    - shard-rkl:          [SKIP][344] ([i915#13049]) -> [SKIP][345] ([i915#13049] / [i915#14544])
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-7/igt@kms_cursor_crc@cursor-random-512x170.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x170.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-rkl:          [SKIP][346] -> [SKIP][347] ([i915#14544]) +9 other tests skip
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-7/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-rkl:          [SKIP][348] ([i915#14544] / [i915#4103]) -> [SKIP][349] ([i915#4103])
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-rkl:          [SKIP][350] ([i915#14544] / [i915#9723]) -> [SKIP][351] ([i915#9723])
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dp_link_training@non-uhbr-mst:
    - shard-rkl:          [SKIP][352] ([i915#13749]) -> [SKIP][353] ([i915#13749] / [i915#14544])
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-7/igt@kms_dp_link_training@non-uhbr-mst.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_dp_link_training@non-uhbr-mst.html

  * igt@kms_dp_link_training@uhbr-sst:
    - shard-rkl:          [SKIP][354] ([i915#13748] / [i915#14544]) -> [SKIP][355] ([i915#13748])
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_dp_link_training@uhbr-sst.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_dp_link_training@uhbr-sst.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-dg1:          [SKIP][356] ([i915#3555] / [i915#3840]) -> [SKIP][357] ([i915#3555] / [i915#3840] / [i915#4423])
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-13/igt@kms_dsc@dsc-with-output-formats.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_feature_discovery@chamelium:
    - shard-rkl:          [SKIP][358] ([i915#14544] / [i915#4854]) -> [SKIP][359] ([i915#4854])
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_feature_discovery@chamelium.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_feature_discovery@chamelium.html

  * igt@kms_flip@2x-flip-vs-dpms-on-nop:
    - shard-dg1:          [SKIP][360] ([i915#9934]) -> [SKIP][361] ([i915#4423] / [i915#9934])
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-13/igt@kms_flip@2x-flip-vs-dpms-on-nop.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@kms_flip@2x-flip-vs-dpms-on-nop.html

  * igt@kms_flip@2x-flip-vs-panning:
    - shard-rkl:          [SKIP][362] ([i915#9934]) -> [SKIP][363] ([i915#14544] / [i915#9934]) +1 other test skip
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-7/igt@kms_flip@2x-flip-vs-panning.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_flip@2x-flip-vs-panning.html

  * igt@kms_flip@2x-flip-vs-panning-vs-hang:
    - shard-rkl:          [SKIP][364] ([i915#14544] / [i915#9934]) -> [SKIP][365] ([i915#9934]) +5 other tests skip
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_flip@2x-flip-vs-panning-vs-hang.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_flip@2x-flip-vs-panning-vs-hang.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:
    - shard-rkl:          [SKIP][366] ([i915#14544] / [i915#15643]) -> [SKIP][367] ([i915#15643]) +2 other tests skip
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-rkl:          [SKIP][368] ([i915#15643]) -> [SKIP][369] ([i915#14544] / [i915#15643]) +1 other test skip
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-mtlp:         [SKIP][370] -> [SKIP][371] ([i915#15672])
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-mtlp-4/igt@kms_force_connector_basic@force-load-detect.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-mtlp-1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
    - shard-rkl:          [SKIP][372] ([i915#14544] / [i915#1825]) -> [SKIP][373] ([i915#1825]) +30 other tests skip
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][374] ([i915#1825]) -> [SKIP][375] ([i915#14544] / [i915#1825]) +16 other tests skip
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-blt:
    - shard-rkl:          [SKIP][376] ([i915#15102]) -> [SKIP][377] ([i915#14544] / [i915#15102]) +1 other test skip
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-blt.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-cpu:
    - shard-rkl:          [SKIP][378] ([i915#14544] / [i915#15102]) -> [SKIP][379] ([i915#15102]) +3 other tests skip
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:
    - shard-rkl:          [SKIP][380] ([i915#15102] / [i915#3023]) -> [SKIP][381] ([i915#14544] / [i915#15102] / [i915#3023]) +3 other tests skip
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
    - shard-dg2:          [SKIP][382] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][383] ([i915#15102] / [i915#3458])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
    - shard-rkl:          [SKIP][384] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][385] ([i915#15102] / [i915#3023]) +13 other tests skip
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-plflip-blt:
    - shard-dg1:          [SKIP][386] ([i915#4423]) -> [SKIP][387]
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-plflip-blt.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-plflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt:
    - shard-dg1:          [SKIP][388] ([i915#15104]) -> [SKIP][389] ([i915#15104] / [i915#4423])
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:
    - shard-dg1:          [SKIP][390] ([i915#15102] / [i915#3458]) -> [SKIP][391] ([i915#15102] / [i915#3458] / [i915#4423])
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-msflip-blt:
    - shard-dg1:          [SKIP][392] -> [SKIP][393] ([i915#4423])
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-msflip-blt.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-msflip-blt.html

  * igt@kms_joiner@basic-ultra-joiner:
    - shard-rkl:          [SKIP][394] ([i915#15458]) -> [SKIP][395] ([i915#14544] / [i915#15458])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-1/igt@kms_joiner@basic-ultra-joiner.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html

  * igt@kms_pipe_stress@stress-xrgb8888-4tiled:
    - shard-rkl:          [SKIP][396] ([i915#14544] / [i915#14712]) -> [SKIP][397] ([i915#14712]) +1 other test skip
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_pipe_stress@stress-xrgb8888-4tiled.html
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_pipe_stress@stress-xrgb8888-4tiled.html

  * igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source-clamping:
    - shard-rkl:          [SKIP][398] ([i915#14544] / [i915#15709]) -> [SKIP][399] ([i915#15709]) +2 other tests skip
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source-clamping.html
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-3/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping:
    - shard-rkl:          [SKIP][400] ([i915#15709]) -> [SKIP][401] ([i915#14544] / [i915#15709]) +2 other tests skip
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-1/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier:
    - shard-dg1:          [SKIP][402] ([i915#15709]) -> [SKIP][403] ([i915#15709] / [i915#4423])
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-13/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier.html
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier.html

  * igt@kms_plane_lowres@tiling-4:
    - shard-rkl:          [SKIP][404] ([i915#3555]) -> [SKIP][405] ([i915#14544] / [i915#3555])
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-7/igt@kms_plane_lowres@tiling-4.html
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_plane_lowres@tiling-4.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-rkl:          [SKIP][406] ([i915#15329] / [i915#3555]) -> [SKIP][407] ([i915#14544] / [i915#15329] / [i915#3555])
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
    - shard-rkl:          [SKIP][408] ([i915#15329]) -> [SKIP][409] ([i915#14544] / [i915#15329]) +2 other tests skip
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-rkl:          [SKIP][410] ([i915#5354]) -> [SKIP][411] ([i915#14544] / [i915#5354])
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-7/igt@kms_pm_backlight@basic-brightness.html
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_backlight@fade-with-suspend:
    - shard-rkl:          [SKIP][412] ([i915#14544] / [i915#5354]) -> [SKIP][413] ([i915#5354])
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_pm_backlight@fade-with-suspend.html
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-3/igt@kms_pm_backlight@fade-with-suspend.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-rkl:          [SKIP][414] ([i915#14544] / [i915#8430]) -> [SKIP][415] ([i915#8430])
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_pm_lpsp@screens-disabled.html
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:
    - shard-rkl:          [SKIP][416] ([i915#11520] / [i915#14544]) -> [SKIP][417] ([i915#11520]) +3 other tests skip
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area:
    - shard-rkl:          [SKIP][418] ([i915#11520]) -> [SKIP][419] ([i915#11520] / [i915#14544]) +2 other tests skip
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-7/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area.html
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-rkl:          [SKIP][420] ([i915#14544] / [i915#9683]) -> [SKIP][421] ([i915#9683])
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_psr2_su@page_flip-p010.html
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr@psr2-cursor-blt:
    - shard-rkl:          [SKIP][422] ([i915#1072] / [i915#9732]) -> [SKIP][423] ([i915#1072] / [i915#14544] / [i915#9732]) +5 other tests skip
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-7/igt@kms_psr@psr2-cursor-blt.html
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_psr@psr2-cursor-blt.html

  * igt@kms_psr@psr2-primary-mmap-gtt:
    - shard-rkl:          [SKIP][424] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][425] ([i915#1072] / [i915#9732]) +13 other tests skip
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_psr@psr2-primary-mmap-gtt.html
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_psr@psr2-primary-mmap-gtt.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-rkl:          [SKIP][426] ([i915#14544] / [i915#9685]) -> [SKIP][427] ([i915#9685])
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-rkl:          [SKIP][428] ([i915#14544] / [i915#9906]) -> [SKIP][429] ([i915#9906])
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@kms_vrr@flip-basic-fastset.html
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@lobf:
    - shard-dg1:          [SKIP][430] ([i915#11920]) -> [SKIP][431] ([i915#11920] / [i915#4423])
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-13/igt@kms_vrr@lobf.html
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@kms_vrr@lobf.html

  * igt@perf@mi-rpc:
    - shard-rkl:          [SKIP][432] ([i915#14544] / [i915#2434]) -> [SKIP][433] ([i915#2434])
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@perf@mi-rpc.html
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@perf@mi-rpc.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-rkl:          [SKIP][434] ([i915#2433]) -> [SKIP][435] ([i915#14544] / [i915#2433])
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-7/igt@perf@unprivileged-single-ctx-counters.html
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@perf@unprivileged-single-ctx-counters.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
    - shard-rkl:          [SKIP][436] ([i915#14544] / [i915#9917]) -> [SKIP][437] ([i915#9917])
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all.html

  
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10826]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10826
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/118
  [i915#11920]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920
  [i915#12169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12169
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
  [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
  [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#12756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756
  [i915#12761]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761
  [i915#12916]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12916
  [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13179]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13398]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13398
  [i915#13409]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409
  [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
  [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
  [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14586]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14586
  [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
  [i915#14888]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14888
  [i915#14995]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14995
  [i915#15060]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15060
  [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
  [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
  [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
  [i915#15106]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15106
  [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
  [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
  [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
  [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
  [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
  [i915#15389]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15389
  [i915#15433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15433
  [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
  [i915#15478]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15478
  [i915#15500]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15500
  [i915#15560]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15560
  [i915#15582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582
  [i915#15608]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15608
  [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
  [i915#15647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15647
  [i915#15672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15672
  [i915#15678]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15678
  [i915#15709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
  [i915#15718]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15718
  [i915#15739]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15739
  [i915#15752]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15752
  [i915#15778]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15778
  [i915#15865]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#2433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2433
  [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
  [i915#2435]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2435
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3742]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3742
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
  [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5723
  [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
  [i915#6412]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#6880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6880
  [i915#7276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276
  [i915#7443]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7443
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
  [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9878]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9878
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_18251 -> Patchwork_145348v4

  CI-20190529: 20190529
  CI_DRM_18251: 169e5b6f809026c4a0cb3a736b48378ca8e8fecb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8835: 8835
  Patchwork_145348v4: 169e5b6f809026c4a0cb3a736b48378ca8e8fecb @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/index.html

--===============6475792436289338232==
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
<tr><td><b>Series:</b></td><td>drm/i915/dp: Implement POST_LT_ADJ_REQ (rev4=
)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/145348/">https://patchwork.freedesktop.org/series/145348/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_145348v4/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_145348v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18251_full -&gt; Patchwork_145348v=
4_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_145348v4_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_basic@multigpu-create-close:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@gem_basic@multigpu-create=
-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/7697">i915#7697</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@ctrl-surf-copy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@gem_ccs@ctrl-surf-copy.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg2-5/igt@gem_ccs@suspend-resume@xmajor-compressed-comp=
fmt0-smem-lmem0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-dg2-6/igt@gem_ccs@suspend-resume@xma=
jor-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i91=
5#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@gem_create@create-ext-cpu=
-access-sanity-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@gem_create@create-ext-cpu-=
access-sanity-check.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-glk8/igt@gem_ctx_isolation@preservat=
ion-s3@rcs0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/13356">i915#13356</a>) +1 other test incomplete</=
li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@gem_ctx_sseu@engines.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@gem_exec_balancer@parallel=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4525">i915#4525</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@gem_exec_balancer@parallel=
-balancer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@gem_exec_balancer@paralle=
l-keep-in-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-cpu-gtt-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-1/igt@gem_exec_reloc@basic-cpu-g=
tt-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3281">i915#3281</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@gem_exec_reloc@basic-wc-re=
ad-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg2-1/igt@gem_exec_suspend@basic-s0@smem.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348=
v4/shard-dg2-3/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLETE</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915=
#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-random:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@gem_lmem_swapping@heavy-r=
andom.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4613">i915#4613</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-1/igt@gem_lmem_swapping@random.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/4613">i915#4613</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-glk8/igt@gem_lmem_swapping@random-en=
gines.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4613">i915#4613</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear@smem0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-mtlp-6/igt@gem_mmap_offset@clear@smem0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4=
/shard-mtlp-8/igt@gem_mmap_offset@clear@smem0.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15478">i915#154=
78</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@gem_pxp@hw-rejects-pxp-bu=
ffer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13398">i915#13398</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-context:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@gem_pxp@hw-rejects-pxp-con=
text.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13717">i915#13717</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-1/igt@gem_pxp@verify-pxp-key-cha=
nge-after-suspend-resume.html">ABORT</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/15131">i915#15131</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_blt@untiled-to-tiled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@gem_set_tiling_vs_blt@unti=
led-to-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@gem_set_tiling_vs_pwrite.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@gem_userptr_blits@coheren=
cy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-unsync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@gem_userptr_blits@dmabuf-u=
nsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-glk10/igt@gem_workarounds@suspend-re=
sume.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/13356">i915#13356</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/14586">i915#14586</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@unaligned-access:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@gen9_exec_parse@unaligned-=
access.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@i915_pm_freq_api@freq-susp=
end.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8399">i915#8399</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@i915_pm_freq_api@freq-sus=
pend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-1/igt@i915_query@hwconfig_table.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/6245">i915#6245</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-snb7/igt@i915_query@query-topology-c=
oherent-slice-mask.html">SKIP</a> +19 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_query@test-query-geometry-subslices:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@i915_query@test-query-geom=
etry-subslices.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/5723">i915#5723</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@i915_query@test-query-geo=
metry-subslices.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/5723">i915#5723</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg1-13/igt@i915_selftest@live.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg=
1-12/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/15560">i915#15560</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg1-13/igt@i915_selftest@live@gem_contexts.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1453=
48v4/shard-dg1-12/igt@i915_selftest@live@gem_contexts.html">DMESG-FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15433">=
i915#15433</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-1/igt@i915_suspend@basic-s3-wit=
hout-i915.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4817">i915#4817</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/7443">i915#7443</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-glk9/igt@i915_suspend@forcewake.html=
">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-glk8/igt@kms_async_flips@alternate-sync-async-flip-atom=
ic@pipe-c-hdmi-a-2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_145348v4/shard-glk5/igt@kms_async_flips@alternat=
e-sync-async-flip-atomic@pipe-c-hdmi-a-2.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14888">i915#14888</a>) +1 =
other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-glk10/igt@kms_async_flips@async-flip=
-suspend-resume.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/12761">i915#12761</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-glk10/igt@kms_async_flips@async-flip=
-suspend-resume@pipe-a-hdmi-a-2.html">INCOMPLETE</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/12761">i915#12761</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14995">i915#1=
4995</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@kms_atomic@plane-primary-o=
verlay-mutable-zpos.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-glk5/igt@kms_atomic_transition@plane=
-all-modeset-transition-fencing-internal-panels.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg2-3/igt@kms_atomic_transition@plane-all-modeset-trans=
ition@pipe-a-hdmi-a-3.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_145348v4/shard-dg2-8/igt@kms_atomic_transitio=
n@plane-all-modeset-transition@pipe-a-hdmi-a-3.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>)=
 +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@kms_big_fb@4-tiled-addfb.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +3 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@kms_big_fb@x-tiled-8bpp-ro=
tate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-dg2-4/igt@kms_ccs@bad-aux-stride-y-t=
iled-gen12-rc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#104=
34</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@kms_ccs@bad-rotation-90-4-=
tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-glk5/igt@kms_ccs@ccs-on-another-bo-4=
-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> +375 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-glk10/igt@kms_ccs@crc-primary-basic-=
4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-2.html">SKIP</a> +143 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@kms_ccs@crc-primary-basic=
-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-dg2-4/igt@kms_ccs@crc-primary-basic-=
4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095=
</a>) +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-1:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-dg2-4/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +11 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +49 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@kms_ccs@crc-primary-rotat=
ion-180-yf-tiled-ccs@pipe-d-hdmi-a-3.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +147 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:</=
p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@kms_ccs@crc-primary-suspe=
nd-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +39 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-=
ccs-cc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-tiled=
-gen12-rc-ccs-cc.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/15582">i915#15582</a>) +1 other test incompl=
ete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915=
#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-mtl-mc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915=
#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-1/igt@kms_ccs@missing-ccs-buffe=
r-4-tiled-mtl-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@kms_ccs@random-ccs-data-4-=
tiled-dg2-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a=
>) +34 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-=
tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12313">i915#12313</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@kms_cdclk@mode-transition=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3742">i915#3742</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@vga-edid-read:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-1/igt@kms_chamelium_edid@vga-ed=
id-read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-after-suspend:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-glk11/igt@kms_chamelium_hpd@dp-hpd-a=
fter-suspend.html">SKIP</a> +64 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-enable-disable-mode:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@kms_chamelium_hpd@dp-hpd-e=
nable-disable-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +5 other te=
sts skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@kms_chamelium_hpd@dp-hpd-=
enable-disable-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-1/igt@kms_content_protection@dp-=
mst-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/15330">i915#15330</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_content_protection@dp-=
mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@kms_content_protection@srm=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/15865">i915#15865</a>) +1 other test skip</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@kms_content_protection@sr=
m.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15865">i915#15865</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_cursor_crc@cursor-onsc=
reen-64x21@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@kms_cursor_crc@cursor-rand=
om-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/13049">i915#13049</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-1/igt@kms_cursor_crc@cursor-rapi=
d-movement-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x170:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_cursor_crc@cursor-rapi=
d-movement-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/13049">i915#13049</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-64x21@pipe-a-hd=
mi-a-1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_145348v4/shard-rkl-2/igt@kms_cursor_crc@cursor-sliding-64x21=
@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg1-13/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_145348v4/shard-dg1-12/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4423">i915#4423</a>) +1 other test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-1/igt@kms_cursor_legacy@cursorb-=
vs-flipa-legacy.html">SKIP</a> +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_cursor_legacy@cursorb-=
vs-flipb-varying-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +2 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-v=
arying-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-9/igt@kms_cursor_legacy@short-b=
usy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4=
103</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev@basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@kms_dp_aux_dev@basic.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/1257">i915#1257</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@kms_dp_aux_dev@basic.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/1257">i915#1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@kms_dsc@dsc-fractional-bpp=
-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3840">i915#3840</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@kms_dsc@dsc-fractional-bp=
p-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-1/igt@kms_dsc@dsc-with-output-fo=
rmats-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3840">i915#3840</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/9053">i915#9053</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-glk1/igt@kms_fbcon_fbt@fbc-suspend.h=
tml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9878">i915#9878</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-1/igt@kms_fbcon_fbt@psr.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_feature_discovery@psr1=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@kms_feature_discovery@psr=
2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-wf_vblank:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-1/igt@kms_flip@2x-blocking-wf_v=
blank.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-modeset-vs-vblank-race:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@kms_flip@2x-modeset-vs-vb=
lank-race.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +3 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-1/igt@kms_flip@2x-plain-flip.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9934">i915#9934</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-glk11/igt@kms_flip@flip-vs-suspend.h=
tml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/12745">i915#12745</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-8/igt@kms_flip@flip-vs-suspend-interruptible.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_145348v4/shard-rkl-1/igt@kms_flip@flip-vs-suspend-interruptible.html">ABO=
RT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
15132">i915#15132</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-1/igt@kms_flip@flip-vs-suspend-i=
nterruptible@c-hdmi-a2.html">ABORT</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/15132">i915#15132</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-hdmi-a1:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-glk11/igt@kms_flip@flip-vs-suspend@a=
-hdmi-a1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12745">i915#12745</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-upscalin=
g:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@kms_flip_scaled_crc@flip-3=
2bpp-4tile-to-32bpp-4tiledg2rcccs-upscaling.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) =
+1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:</=
p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_flip_scaled_crc@flip-6=
4bpp-yftile-to-16bpp-yftile-downscaling.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915=
#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri=
-shrfb-draw-render.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_145348v4/shard-dg2-3/igt@kms_frontbuffer_trackin=
g@fbc-1p-offscreen-pri-shrfb-draw-render.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15389">i915#15389</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +17 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> +8 other tests skip<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-tiling-linear:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg2-1/igt@kms_frontbuffer_tracking@fbc-tiling-linear.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_145348v4/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-tiling-linear.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/15389">i915#15389</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/6880">i915#6880</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt=
:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-1/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-offscreen-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +=
3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-pri-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#151=
02</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3023">i915#3023</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@kms_frontbuffer_tracking@=
psr-1p-primscrn-spr-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +8 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-indfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>=
) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-pri-shrfb-draw-render.html">SKIP</a> +33 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-render:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-1/igt@kms_frontbuffer_tracking@=
psr-rgb101010-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +2 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@kms_frontbuffer_tracking@p=
sr-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +13 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@kms_hdr@static-swap.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/8228">i915#8228</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@kms_hdr@static-toggle-dpms=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_pipe_crc_basic@suspend=
-read-crc.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/12756">i915#12756</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/13476">i915#13476</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-glk11/igt@kms_pipe_crc_basic@suspend=
-read-crc@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/12756">i915#12756</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409">i915#13409</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/134=
76">i915#13476</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_pipe_crc_basic@suspend=
-read-crc@pipe-a-hdmi-a-2.html">INCOMPLETE</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/13476">i915#13476</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-ccs-modifier:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@kms_plane@pixel-format-y-t=
iled-ccs-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/15709">i915#15709</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-cc-modifier@pipe-b-plane=
-7:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-1/igt@kms_plane@pixel-format-y-=
tiled-gen12-rc-ccs-cc-modifier@pipe-b-plane-7.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15608">i915#15608</a>=
) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-yf-tiled-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@kms_plane@pixel-format-yf=
-tiled-ccs-modifier-source-clamping.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +2 other=
 tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-glk11/igt@kms_plane_alpha_blend@cons=
tant-alpha-max.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/10647">i915#10647</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/12169">i915#12169</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-glk11/igt@kms_plane_alpha_blend@cons=
tant-alpha-max@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/10647">i915#10647</a>) +1 other test=
 fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-none:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@kms_plane_multiple@2x-tili=
ng-none.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-y:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@kms_plane_multiple@2x-til=
ing-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:<=
/p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@kms_plane_scaling@plane-d=
ownscale-factor-0-75-with-rotation@pipe-a.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +4=
 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@kms_pm_backlight@brightne=
ss-with-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/12343">i915#12343</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_pm_backlight@fade-with=
-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@kms_pm_dc@dc6-dpms.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/15752">i915#15752</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-1/igt@kms_pm_dc@dc9-dpms.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/15739">i915#15739</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-2/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-r=
kl-7/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) +2 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14534=
8v4/shard-dg2-6/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#150=
73</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@kms_pm_rpm@dpms-non-lpsp.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@drm-resources-equal:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg1-13/igt@kms_pm_rpm@drm-resources-equal.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14534=
8v4/shard-dg1-12/igt@kms_pm_rpm@drm-resources-equal.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12916">i915#129=
16</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@kms_prime@basic-crc-hybrid=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_prime@basic-modeset-hy=
brid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay=
-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@kms_psr2_sf@fbc-pr-overla=
y-primary-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-over=
lay-plane-update-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-glk6/igt@kms_psr2_sf@fbc-psr2-primar=
y-plane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +12 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-glk11/igt@kms_psr2_sf@pr-overlay-pla=
ne-move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-glk10/igt@kms_psr2_sf@pr-primary-pla=
ne-update-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@kms_psr2_sf@psr2-cursor-pl=
ane-move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-primary-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@kms_psr@fbc-psr2-primary-b=
lt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9732">i915#9732</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-render:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@kms_psr@fbc-psr2-sprite-r=
ender.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9732">i915#9732</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_psr@psr-suspend.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-no-drrs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-1/igt@kms_psr@psr2-no-drrs.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-glk5/igt@kms_rotation_crc@multiplane=
-rotation-cropping-bottom.html">INCOMPLETE</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/15500">i915#15500</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-7/igt@kms_rotation_crc@primary-=
4-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@kms_scaling_modes@scaling=
-mode-full.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_framebuffer:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-1/igt@kms_selftest@drm_framebuf=
fer.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13179">i915#13179</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg2-4/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145=
348v4/shard-dg2-4/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15106">i915=
#15106</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_vrr@flip-suspend.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/15243">i915#15243</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@negative-basic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@kms_vrr@negative-basic.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/9906">i915#9906</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-8/igt@kms_vrr@negative-basic.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@kms_vrr@seamless-rr-switch=
-virtual.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@per-context-mode-unprivileged:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@perf@per-context-mode-unpr=
ivileged.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/2435">i915#2435</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-hang@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-glk8/igt@perf_pmu@busy-hang@rcs0.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard=
-glk5/igt@perf_pmu@busy-hang@rcs0.html">DMESG-WARN</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/118">i915#118</a>) +1 other=
 test dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-tglu-9/igt@perf_pmu@module-unload.ht=
ml">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/15778">i915#15778</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-glk8/igt@gem_workarounds@suspend-resume-context.html">I=
NCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/13356">i915#13356</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_145348v4/shard-glk1/igt@gem_workarounds@suspend-resu=
me-context.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-dg1:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_18251/shard-dg1-17/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-18/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_18251/shard-dg1-18/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/=
shard-dg1-18/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-14/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_18251/shard-dg1-17/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-19/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_18251/shard-dg1-16/igt@i915_module_load@load.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/=
shard-dg1-17/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-12/igt@i915_module_l=
oad@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_18251/shard-dg1-19/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-14/ig=
t@i915_module_load@load.html">DMESG-WARN</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-14/igt@i915_module_load@load.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
18251/shard-dg1-12/igt@i915_module_load@load.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-12/igt@i915_mo=
dule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/CI_DRM_18251/shard-dg1-16/igt@i915_module_load@load.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1=
-17/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-19/igt@i915_module_load@load.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
18251/shard-dg1-13/igt@i915_module_load@load.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-16/igt@i915_mo=
dule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/CI_DRM_18251/shard-dg1-13/igt@i915_module_load@load.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1=
-18/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-14/igt@i915_module_load@load.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
18251/shard-dg1-13/igt@i915_module_load@load.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18251/shard-dg1-16/igt@i915_mo=
dule_load@load.html">PASS</a>) (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4391">i915#4391</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; (<a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-1=
2/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@i915_module_load@l=
oad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_145348v4/shard-dg1-12/igt@i915_module_load@load.html">PASS</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg=
1-13/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-13/igt@i915_module_loa=
d@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_145348v4/shard-dg1-13/igt@i915_module_load@load.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard=
-dg1-13/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-14/igt@i915_module_=
load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_145348v4/shard-dg1-14/igt@i915_module_load@load.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/sh=
ard-dg1-14/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-14/igt@i915_modu=
le_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_145348v4/shard-dg1-16/igt@i915_module_load@load.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4=
/shard-dg1-16/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-16/igt@i915_m=
odule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_145348v4/shard-dg1-16/igt@i915_module_load@load.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14534=
8v4/shard-dg1-17/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-17/igt@i91=
5_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_145348v4/shard-dg1-17/igt@i915_module_load@load.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
5348v4/shard-dg1-17/igt@i915_module_load@load.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-18/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_145348v4/shard-dg1-18/igt@i915_module_load@load.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_145348v4/shard-dg1-18/igt@i915_module_load@load.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-19/i=
gt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-19/igt@i915_module_load@load=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_145348v4/shard-dg1-19/igt@i915_module_load@load.html">PASS</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-devices:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-1/igt@i915_pm_rpm@system-suspend-devices.html">ABOR=
T</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
5060">i915#15060</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_145348v4/shard-rkl-6/igt@i915_pm_rpm@system-suspend-devices.=
html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg1-18/igt@i915_suspend@basic-s2idle-without-i915.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4391">i915#4391</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@i915_suspend=
@basic-s2idle-without-i915.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-4/igt@i915_suspend@fence-restore-tiled2untiled.html=
">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/4817">i915#4817</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-2/igt@i915_suspend@fence-restore=
-tiled2untiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg2-1/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html">DMESG=
-WARN</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_145348v4/shard-dg2-3/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-128x42.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/13566">i915#13566</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_145348v4/shard-rkl-7/igt@kms_cursor_crc@cursor-onscreen-12=
8x42.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-on-nop-interruptible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-2/igt@kms_flip@flip-vs-dpms-on-nop-interruptible.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/10826">i915#10826</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_145348v4/shard-rkl-7/igt@kms_flip@flip-vs-dpms-on-nop=
-interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg2-7/igt@kms_flip@flip-vs-expired-vblank-interruptible=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/13027">i915#13027</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_145348v4/shard-dg2-1/igt@kms_flip@flip-vs-expired-=
vblank-interruptible.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a3:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg2-7/igt@kms_flip@flip-vs-expired-vblank-interruptible=
@a-hdmi-a3.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/15718">i915#15718</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg2-1/igt@kms_flip@flip-v=
s-expired-vblank-interruptible@a-hdmi-a3.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-7/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228=
">i915#8228</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_145348v4/shard-rkl-6/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg1-16/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1507=
3">i915#15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_145348v4/shard-dg1-14/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@drm-resources-equal:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg2-4/igt@kms_pm_rpm@drm-resources-equal.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12916"=
>i915#12916</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_145348v4/shard-dg2-4/igt@kms_pm_rpm@drm-resources-equal.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15073">i915#15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp-=
stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_sequence@get-busy:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg1-14/igt@kms_sequence@get-busy.html">DMESG-WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i9=
15#4423</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_145348v4/shard-dg1-13/igt@kms_sequence@get-busy.html">PASS</a> +1 oth=
er test pass</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg1-13/igt@kms_setmode@basic.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15106">i915#15106<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
5348v4/shard-dg1-12/igt@kms_setmode@basic.html">PASS</a> +2 other tests pas=
s</li>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-tglu-8/igt@kms_setmode@basic.html">FAIL</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15106">i915#15106<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
5348v4/shard-tglu-2/igt@kms_setmode@basic.html">PASS</a> +2 other tests pas=
s</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic@pipe-b-edp-1:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-mtlp-5/igt@kms_setmode@basic@pipe-b-edp-1.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15106=
">i915#15106</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_145348v4/shard-mtlp-5/igt@kms_setmode@basic@pipe-b-edp-1.html">P=
ASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start@rcs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-mtlp-5/igt@perf_pmu@busy-double-start@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349=
">i915#4349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_145348v4/shard-mtlp-2/igt@perf_pmu@busy-double-start@rcs0.html">P=
ASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@blit-reloc-keep-cache:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@api_intel_bb@blit-reloc-keep-cache.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/8411">i915#8411</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@api_intel_bb@blit-relo=
c-keep-cache.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/8411">i915#8411</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@device_reset@cold-reset-bound.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078">=
i915#11078</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@device_reset@cold-reset-b=
ound.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_buddy@drm_buddy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@drm_buddy@drm_buddy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/15678">i915#15678</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_145348v4/shard-rkl-3/igt@drm_buddy@drm_buddy.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15678=
">i915#15678</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@gem_bad_reloc@negative-reloc-lut.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3281">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@gem_bad_reloc@negative-r=
eloc-lut.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3281">i915#3281</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-1/igt@gem_ccs@block-copy-compressed.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i=
915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/9323">i915#9323</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@gem_ccs@block-copy-compressed=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@gem_ccs@block-multicopy-compressed.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9323">i915#9323</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-3/igt@gem_ccs@block-multicop=
y-compressed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@gem_create@create-ext-cpu-access-big.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/6335">i915#6335</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@gem_create@create-ex=
t-cpu-access-big.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-7/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#2=
80</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_145348v4/shard-rkl-6/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-7/igt@gem_exec_balancer@parallel-dmabuf-import-out-=
fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@gem_exec_balancer@para=
llel-dmabuf-import-out-fence.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@gem_exec_capture@capture-recoverable.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/6344">i915#6344</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@gem_exec_capture@cap=
ture-recoverable.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/6344">i915#6344</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-gtt-active:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-1/igt@gem_exec_reloc@basic-wc-gtt-active.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/32=
81">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_145348v4/shard-rkl-6/igt@gem_exec_reloc@basic-wc-gtt-active.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3281">i915#3281</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@semaphore-power:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@gem_exec_schedule@semaphore-power.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/7276">i915#7276</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@gem_exec_schedule@semap=
hore-power.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/7276">i915#7276</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-verify.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-3/igt@gem_lmem_swappin=
g@parallel-random-verify.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +3 other tests skip</=
li>
</ul>
</li>
<li>
<p>igt@gem_media_vme:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@gem_media_vme.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284">i9=
15#284</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_145348v4/shard-rkl-5/igt@gem_media_vme.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284">i915#284</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@writes-after-reads:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@gem_partial_pwrite_pread@writes-after-reads.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-3/igt@gem_partial_p=
write_pread@writes-after-reads.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +4 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-tglu-8/igt@gem_pread@exhaustion.html">WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2658">i915#2658=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
45348v4/shard-tglu-2/igt@gem_pread@exhaustion.html">ABORT</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15647">i915#15647</a=
>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@relocations:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-1/igt@gem_userptr_blits@relocations.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i=
915#3281</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3297">i915#3297</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@gem_userptr_blits@relocations=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3281">i915#3281</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-zero-length:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-1/igt@gen9_exec_parse@batch-zero-length.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/252=
7">i915#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_145348v4/shard-rkl-6/igt@gen9_exec_parse@batch-zero-length.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@shadow-peek:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@gen9_exec_parse@shadow-peek.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/2527">i915#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_145348v4/shard-rkl-3/igt@gen9_exec_parse@shadow-peek.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/2527">i915#2527</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@i915_module_load@resize-bar.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/6412">i915#6412</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_145348v4/shard-rkl-3/igt@i915_module_load@resize-bar.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/6412">i915#6412</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-basic-api:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-1/igt@i915_pm_freq_api@freq-basic-api.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399"=
>i915#8399</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_145348v4/shard-rkl-6/igt@i915_pm_freq_api@freq-basic-api.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@i915_power@sanity.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/798=
4">i915#7984</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_145348v4/shard-rkl-5/igt@i915_power@sanity.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984">i915#79=
84</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-fencing-internal-=
panels:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_atomic_transition@plane-all-modeset-trans=
ition-fencing-internal-panels.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i=
915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_145348v4/shard-rkl-5/igt@kms_atomic_transition@plane-all-modeset-tra=
nsition-fencing-internal-panels.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-7/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/52=
86">i915#5286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_145348v4/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-rotate-90.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/5286">i915#5286</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_big_fb@4-tiled-8bpp=
-rotate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-=
0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/3828">i915#3828</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_=
big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-7/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/36=
38">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_145348v4/shard-rkl-6/igt@kms_big_fb@x-tiled-64bpp-rotate-90.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3638">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_145348v4/shard-rkl-3/igt@kms_big_fb@y-tiled-8bpp=
-rotate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/3638">i915#3638</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotat=
e-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_big_fb@yf-tiled-=
max-hw-stride-32bpp-rotate-180.html">SKIP</a> +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pi=
pe-b-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-3/ig=
t@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">=
i915#6095</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@=
pipe-c-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14534=
8v4/shard-rkl-3/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdm=
i-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-=
ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/12313">i915#12313</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_ccs@crc-primary-ro=
tation-180-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-=
3:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg1-13/igt@kms_ccs@crc-primary-rotation-180-y-tiled-gen=
12-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@k=
ms_ccs@crc-primary-rotation-180-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-3.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/4423">i915#4423</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-=
ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_ccs@=
crc-primary-suspend-y-tiled-gen12-mc-ccs.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/6095">i915#6095</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-7/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-mc-=
ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_ccs@=
crc-primary-suspend-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/6095">i915#6095</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@hdmi-crc-multiple:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_chamelium_frames@hdmi-crc-multiple.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-3/igt@km=
s_chamelium_frames@hdmi-crc-multiple.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#782=
8</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-7/igt@kms_chamelium_hpd@hdmi-hpd-with-enabled-mode.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_chameliu=
m_hpd@hdmi-hpd-with-enabled-mode.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544<=
/a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/78=
28">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0-hdcp14:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_content_protection@dp-mst-lic-type-0-hdcp=
14.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/15330">i915#15330</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-3/igt@kms_con=
tent_protection@dp-mst-lic-type-0-hdcp14.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy-hdcp14:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-7/igt@kms_content_protection@legacy-hdcp14.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
15865">i915#15865</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_content_protection@legacy-hdcp=
14.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/15865">i915#15865</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_content_protection@mei-interface.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/15865">i915#15865</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_content_protec=
tion@mei-interface.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/15865">i915#15865</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@suspend-resume:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg1-13/igt@kms_content_protection@suspend-resume.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/15865">i915#15865</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_145348v4/shard-dg1-12/igt@kms_content_protection@suspend-=
resume.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/15865">i915#15865</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-32x10.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-3/igt@kms_cursor_crc@curs=
or-offscreen-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/3555">i915#3555</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-7/igt@kms_cursor_crc@cursor-random-512x170.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
13049">i915#13049</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_cursor_crc@cursor-random-512x1=
70.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/13049">i915#13049</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-7/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.ht=
ml">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_145348v4/shard-rkl-6/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-curs=
or-atomic-transitions.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-=
rkl-5/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transition=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9723">i915#9723</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_dirtyfb@drrs-dirtyfb-i=
octl.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-mst:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-7/igt@kms_dp_link_training@non-uhbr-mst.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/137=
49">i915#13749</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_145348v4/shard-rkl-6/igt@kms_dp_link_training@non-uhbr-mst.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/13749">i915#13749</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-sst:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_dp_link_training@uhbr-sst.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">=
i915#13748</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_dp_link_training@uhbr=
-sst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13748">i915#13748</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg1-13/igt@kms_dsc@dsc-with-output-formats.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555=
">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3840">i915#3840</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@kms_dsc@dsc-with-output-f=
ormats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_feature_discovery@chamelium.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/4854">i915#4854</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_feature_discovery@cha=
melium.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-on-nop:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg1-13/igt@kms_flip@2x-flip-vs-dpms-on-nop.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934=
">i915#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_145348v4/shard-dg1-12/igt@kms_flip@2x-flip-vs-dpms-on-nop.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/4423">i915#4423</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-7/igt@kms_flip@2x-flip-vs-panning.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i91=
5#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_145348v4/shard-rkl-6/igt@kms_flip@2x-flip-vs-panning.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/9934">i915#9934</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-vs-hang:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_flip@2x-flip-vs-panning-vs-hang.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9934">i915#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_flip@2x-flip-vs-p=
anning-vs-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9934">i915#9934</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscaling:</=
p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bp=
p-yftile-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard=
-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-downscalin=
g.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15643">i915#15643</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bp=
p-yftile-upscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_fli=
p_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/15643">i915#15643</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-mtlp-4/igt@kms_force_connector_basic@force-load-detect.=
html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_145348v4/shard-mtlp-1/igt@kms_force_connector_basic@force-load-dete=
ct.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/15672">i915#15672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indf=
b-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt=
@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i9=
15#1825</a>) +30 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-=
shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_fron=
tbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/1825">i915#1825</a>) +16 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-=
pri-shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_fro=
ntbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-blt.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/15102">i915#15102</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-mmap-cpu=
:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-=
pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/sh=
ard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-m=
map-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/15102">i915#15102</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-c=
ur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/ig=
t@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-move.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3023">i915#3023</a>) +3 other tests skip</li>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-c=
ur-indfb-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/10433">i915#10433</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v=
4/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-mov=
e.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-rte.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@km=
s_frontbuffer_tracking@fbcpsr-1p-rte.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#302=
3</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg1-18/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-=
indfb-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@kms_frontb=
uffer_tracking@fbcpsr-2p-primscrn-indfb-plflip-blt.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt:</=
p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pr=
i-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/15104">i915#15104</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@kms=
_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-mmap-gtt.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1510=
4">i915#15104</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur=
-indfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-d=
g1-12/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cpu.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/3458">i915#3458</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shr=
fb-msflip-blt.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@kms_frontbuffer_tracking@ps=
r-2p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-ultra-joiner:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-1/igt@kms_joiner@basic-ultra-joiner.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458">=
i915#15458</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_145348v4/shard-rkl-6/igt@kms_joiner@basic-ultra-joiner.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/15458">i915#15458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_stress@stress-xrgb8888-4tiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_pipe_stress@stress-xrgb8888-4tiled.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/14712">i915#14712</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_pipe_stress@=
stress-xrgb8888-4tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/14712">i915#14712</a>) +1 other test skip</l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source-clampin=
g:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-=
modifier-source-clamping.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/s=
hard-rkl-3/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source=
-clamping.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15709">i915#15709</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-1/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifi=
er-source-clamping.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/15709">i915#15709</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_pla=
ne@pixel-format-4-tiled-lnl-ccs-modifier-source-clamping.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/15709">i915#15709</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-modifier:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg1-13/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-mo=
difier.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/15709">i915#15709</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_145348v4/shard-dg1-12/igt@kms_plane@pixel-fo=
rmat-4-tiled-mtl-rc-ccs-modifier.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-4:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-7/igt@kms_plane_lowres@tiling-4.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#=
3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_145348v4/shard-rkl-6/igt@kms_plane_lowres@tiling-4.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#1=
4544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-with-clipping-=
clamping-rotation.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/15329">i915#15329</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-=
6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15329">i915#15329</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
b:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-1/igt@kms_plane_scaling@plane-scaler-with-clipping-=
clamping-rotation@pipe-b.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@k=
ms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15329">i915#15329</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-7/igt@kms_pm_backlight@basic-brightness.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/535=
4">i915#5354</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_145348v4/shard-rkl-6/igt@kms_pm_backlight@basic-brightness.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_pm_backlight@fade-with-suspend.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/5354">i915#5354</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-3/igt@kms_pm_backlight@fade-=
with-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i=
915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/8430">i915#8430</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_pm_lpsp@screens-disabled=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-primary-plane-update-sf-=
dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/11520">i915#11520</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@k=
ms_psr2_sf@fbc-psr2-primary-plane-update-sf-dmg-area.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11=
520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-7/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-ar=
ea.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/11520">i915#11520</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_psr2_sf@pr-primary-=
plane-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +2 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/9683">i915#9683</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_psr2_su@page_flip-p010.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-7/igt@kms_psr@psr2-cursor-blt.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#10=
72</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_145348v4/shard-rkl-6/igt@kms_psr@psr2-cursor-blt.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/107=
2">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9732">i915#9732</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-primary-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_psr@psr2-primary-mmap-gtt.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i=
915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_psr@psr2-=
primary-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +13 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/9685">i915#9685</a>) -&gt; <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_p=
sr_stress_test@flip-primary-invalidate-overlay.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)=
</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/9906">i915#9906</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@kms_vrr@flip-basic-fastset.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@lobf:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-dg1-13/igt@kms_vrr@lobf.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11920">i915#11920</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v=
4/shard-dg1-12/igt@kms_vrr@lobf.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/11920">i915#11920</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>=
)</li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@perf@mi-rpc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434">i91=
5#2434</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_145348v4/shard-rkl-5/igt@perf@mi-rpc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434">i915#2434</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-7/igt@perf@unprivileged-single-ctx-counters.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/2433">i915#2433</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_145348v4/shard-rkl-6/igt@perf@unprivileged-single-ctx-counte=
rs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/2433">i915#2433</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18251/shard-rkl-6/igt@sriov_basic@enable-vfs-bind-unbind-each-numvf=
s-all.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/9917">i915#9917</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_145348v4/shard-rkl-5/igt@sriov_=
basic@enable-vfs-bind-unbind-each-numvfs-all.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917">i915#9917</a>)</=
li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18251 -&gt; Patchwork_145348v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18251: 169e5b6f809026c4a0cb3a736b48378ca8e8fecb @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_8835: 8835<br />
  Patchwork_145348v4: 169e5b6f809026c4a0cb3a736b48378ca8e8fecb @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============6475792436289338232==--
