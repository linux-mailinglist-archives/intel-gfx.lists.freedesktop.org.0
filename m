Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aHg2NBm6HWoedQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 18:58:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6822F622E8D
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 18:57:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7E931135EF;
	Mon,  1 Jun 2026 16:57:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 6beec6c84f66 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7A221135EF;
 Mon,  1 Jun 2026 16:57:55 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1067624899627512113=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/display=3A_Mask?=
 =?utf-8?q?_RO_bits_in_gen9=5Fwrite=5Fdc=5Fstate=28=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dibin Moolakadan Subrahmanian" <dibin.moolakadan.subrahmanian@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 01 Jun 2026 16:57:55 -0000
Message-ID: <178033307586.32237.7185222063495830330@6beec6c84f66>
X-Patchwork-Hint: ignore
References: <<20260506130321.487414-1-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <<20260506130321.487414-1-dibin.moolakadan.subrahmanian@intel.com>
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
	NEURAL_HAM(-0.00)[-0.578];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 6822F622E8D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============1067624899627512113==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Mask RO bits in gen9_write_dc_state()
URL   : https://patchwork.freedesktop.org/series/167641/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_18595_full -> Patchwork_167641v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_167641v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_167641v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_167641v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-shrfb-draw-mmap-gtt:
    - shard-tglu:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-tglu-7/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-shrfb-draw-mmap-gtt.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-shrfb-draw-mmap-gtt.html

  
Known issues
------------

  Here are the changes found in Patchwork_167641v1_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests:
    - shard-tglu:         NOTRUN -> [SKIP][3] ([i915#15931])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@dmabuf@all-tests.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [PASS][4] -> [INCOMPLETE][5] ([i915#13356])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg2-1/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-5/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html

  * igt@gem_create@create-ext-cpu-access-sanity-check:
    - shard-tglu:         NOTRUN -> [SKIP][6] ([i915#6335]) +1 other test skip
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@gem_create@create-ext-cpu-access-sanity-check.html

  * igt@gem_create@create-ext-set-pat:
    - shard-tglu-1:       NOTRUN -> [SKIP][7] ([i915#8562])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_persistence@heartbeat-stop:
    - shard-dg2:          NOTRUN -> [SKIP][8] ([i915#8555])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@gem_ctx_persistence@heartbeat-stop.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-rkl:          NOTRUN -> [SKIP][9] ([i915#280])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_eio@in-flight-suspend:
    - shard-dg1:          [PASS][10] -> [DMESG-WARN][11] ([i915#13390] / [i915#4391] / [i915#4423])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-13/igt@gem_eio@in-flight-suspend.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-18/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_balancer@parallel:
    - shard-rkl:          NOTRUN -> [SKIP][12] ([i915#4525]) +2 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@gem_exec_balancer@parallel.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-tglu-1:       NOTRUN -> [SKIP][13] ([i915#4525])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_capture@capture-recoverable:
    - shard-rkl:          NOTRUN -> [SKIP][14] ([i915#6344])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-7/igt@gem_exec_capture@capture-recoverable.html

  * igt@gem_exec_reloc@basic-gtt-wc:
    - shard-rkl:          NOTRUN -> [SKIP][15] ([i915#3281]) +5 other tests skip
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-wc.html

  * igt@gem_exec_reloc@basic-wc-read:
    - shard-dg2:          NOTRUN -> [SKIP][16] ([i915#3281]) +5 other tests skip
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@gem_exec_reloc@basic-wc-read.html

  * igt@gem_fenced_exec_thrash@2-spare-fences:
    - shard-dg2:          NOTRUN -> [SKIP][17] ([i915#4860]) +2 other tests skip
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@gem_fenced_exec_thrash@2-spare-fences.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglu:         NOTRUN -> [SKIP][18] ([i915#2190])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-tglu:         NOTRUN -> [SKIP][19] ([i915#4613] / [i915#7582])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-rkl:          NOTRUN -> [SKIP][20] ([i915#4613])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@gem_lmem_swapping@heavy-multi.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-tglu-1:       NOTRUN -> [SKIP][21] ([i915#4613])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-tglu:         NOTRUN -> [SKIP][22] ([i915#4613]) +2 other tests skip
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_mmap_gtt@fault-concurrent-y:
    - shard-dg2:          NOTRUN -> [SKIP][23] ([i915#4077]) +5 other tests skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@gem_mmap_gtt@fault-concurrent-y.html

  * igt@gem_mmap_wc@write-cpu-read-wc:
    - shard-dg2:          NOTRUN -> [SKIP][24] ([i915#4083]) +1 other test skip
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@gem_mmap_wc@write-cpu-read-wc.html

  * igt@gem_pread@display:
    - shard-rkl:          NOTRUN -> [SKIP][25] ([i915#3282]) +2 other tests skip
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@gem_pread@display.html

  * igt@gem_readwrite@beyond-eob:
    - shard-dg2:          NOTRUN -> [SKIP][26] ([i915#3282]) +1 other test skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@gem_readwrite@beyond-eob.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][27] ([i915#5190] / [i915#8428]) +1 other test skip
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-dg2:          NOTRUN -> [SKIP][28] ([i915#3297])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][29] ([i915#13356])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk11/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-tglu-1:       NOTRUN -> [SKIP][30] ([i915#2527] / [i915#2856])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@basic-rejected:
    - shard-rkl:          NOTRUN -> [SKIP][31] ([i915#2527])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@gen9_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-tglu:         NOTRUN -> [SKIP][32] ([i915#2527] / [i915#2856])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-dg2:          NOTRUN -> [SKIP][33] ([i915#2856])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@gen9_exec_parse@batch-without-end.html

  * igt@i915_drm_fdinfo@most-busy-idle-check-all@vecs1:
    - shard-dg2:          NOTRUN -> [SKIP][34] ([i915#14073]) +7 other tests skip
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@i915_drm_fdinfo@most-busy-idle-check-all@vecs1.html

  * igt@i915_module_load@reload-no-display:
    - shard-dg2:          NOTRUN -> [DMESG-WARN][35] ([i915#13029] / [i915#14545])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@i915_module_load@reload-no-display.html

  * igt@i915_pm_freq_api@freq-reset-multiple:
    - shard-tglu-1:       NOTRUN -> [SKIP][36] ([i915#8399]) +1 other test skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@i915_pm_freq_api@freq-reset-multiple.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-tglu:         NOTRUN -> [WARN][37] ([i915#13790] / [i915#2681]) +1 other test warn
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-glk:          [PASS][38] -> [INCOMPLETE][39] ([i915#13356])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-glk2/igt@i915_pm_rpm@system-suspend.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk8/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_pm_rpm@system-suspend-execbuf:
    - shard-glk:          NOTRUN -> [INCOMPLETE][40] ([i915#13356] / [i915#15172])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk9/igt@i915_pm_rpm@system-suspend-execbuf.html

  * igt@i915_pm_rps@thresholds:
    - shard-dg2:          NOTRUN -> [SKIP][41] ([i915#11681])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@i915_pm_rps@thresholds.html

  * igt@i915_pm_sseu@full-enable:
    - shard-dg2:          NOTRUN -> [SKIP][42] ([i915#4387])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@i915_pm_sseu@full-enable.html
    - shard-rkl:          NOTRUN -> [SKIP][43] ([i915#4387])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@i915_pm_sseu@full-enable.html

  * igt@i915_power@sanity:
    - shard-mtlp:         [PASS][44] -> [SKIP][45] ([i915#7984])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-mtlp-1/igt@i915_power@sanity.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-mtlp-7/igt@i915_power@sanity.html

  * igt@i915_query@hwconfig_table:
    - shard-tglu:         NOTRUN -> [SKIP][46] ([i915#6245])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@i915_query@hwconfig_table.html

  * igt@i915_query@query-topology-known-pci-ids:
    - shard-tglu:         NOTRUN -> [SKIP][47] ([i915#16109])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@i915_query@query-topology-known-pci-ids.html
    - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#16109])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@i915_query@query-topology-known-pci-ids.html

  * igt@i915_suspend@forcewake:
    - shard-glk11:        NOTRUN -> [INCOMPLETE][49] ([i915#16182] / [i915#4817])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk11/igt@i915_suspend@forcewake.html

  * igt@i915_suspend@sysfs-reader:
    - shard-rkl:          [PASS][50] -> [INCOMPLETE][51] ([i915#4817])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@i915_suspend@sysfs-reader.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@i915_suspend@sysfs-reader.html

  * igt@intel_hwmon@hwmon-read:
    - shard-tglu-1:       NOTRUN -> [SKIP][52] ([i915#7707])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@intel_hwmon@hwmon-read.html

  * igt@kms_3d@basic:
    - shard-mtlp:         [PASS][53] -> [SKIP][54] ([i915#15726])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-mtlp-2/igt@kms_3d@basic.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-mtlp-1/igt@kms_3d@basic.html

  * igt@kms_async_flips@async-flip-suspend-resume:
    - shard-tglu:         NOTRUN -> [ABORT][55] ([i915#15840]) +1 other test abort
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_async_flips@async-flip-suspend-resume.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-tglu:         NOTRUN -> [SKIP][56] ([i915#9531])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
    - shard-tglu:         NOTRUN -> [SKIP][57] ([i915#1769] / [i915#3555])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-270:
    - shard-dg2:          NOTRUN -> [SKIP][58] +4 other tests skip
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][59] ([i915#5286]) +2 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-32bpp-rotate-180:
    - shard-tglu:         NOTRUN -> [SKIP][60] ([i915#5286]) +2 other tests skip
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-rkl:          NOTRUN -> [SKIP][61] ([i915#5286]) +3 other tests skip
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@linear-16bpp-rotate-0:
    - shard-glk10:        NOTRUN -> [FAIL][62] ([i915#16308])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk10/igt@kms_big_fb@linear-16bpp-rotate-0.html

  * igt@kms_big_fb@linear-16bpp-rotate-180:
    - shard-tglu:         NOTRUN -> [FAIL][63] ([i915#16308]) +1 other test fail
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_big_fb@linear-16bpp-rotate-180.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-rkl:          NOTRUN -> [FAIL][64] ([i915#16308])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_big_fb@linear-8bpp-rotate-180:
    - shard-glk:          NOTRUN -> [FAIL][65] ([i915#16308])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk6/igt@kms_big_fb@linear-8bpp-rotate-180.html

  * igt@kms_big_fb@linear-8bpp-rotate-270:
    - shard-rkl:          NOTRUN -> [SKIP][66] ([i915#3638]) +2 other tests skip
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@kms_big_fb@linear-8bpp-rotate-270.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180:
    - shard-glk11:        NOTRUN -> [FAIL][67] ([i915#16308])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk11/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip:
    - shard-tglu:         NOTRUN -> [SKIP][68] ([i915#3828])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-tglu-1:       NOTRUN -> [SKIP][69] ([i915#3828])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
    - shard-dg1:          [PASS][70] -> [DMESG-WARN][71] ([i915#4423]) +3 other tests dmesg-warn
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-16/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-13/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-180:
    - shard-rkl:          NOTRUN -> [SKIP][72] +67 other tests skip
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - shard-dg2:          NOTRUN -> [SKIP][73] ([i915#4538] / [i915#5190]) +3 other tests skip
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
    - shard-dg1:          NOTRUN -> [SKIP][74] ([i915#6095]) +251 other tests skip
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-16/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][75] ([i915#14544] / [i915#6095]) +5 other tests skip
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html

  * igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][76] ([i915#14098] / [i915#14544] / [i915#6095]) +2 other tests skip
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
    - shard-tglu:         NOTRUN -> [SKIP][77] ([i915#12313]) +2 other tests skip
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html

  * igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][78] ([i915#14098] / [i915#6095]) +47 other tests skip
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-1/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][79] ([i915#6095]) +29 other tests skip
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
    - shard-glk:          NOTRUN -> [SKIP][80] +275 other tests skip
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#12805])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][82] ([i915#15582] / [i915#16205]) +1 other test incomplete
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk10/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs.html

  * igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#6095]) +4 other tests skip
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-d-hdmi-a-3.html

  * igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-a-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][84] ([i915#6095]) +44 other tests skip
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#12313])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html
    - shard-rkl:          NOTRUN -> [SKIP][86] ([i915#12313]) +1 other test skip
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][87] ([i915#6095]) +77 other tests skip
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-5/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][88] ([i915#10307] / [i915#6095]) +88 other tests skip
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:
    - shard-dg2:          NOTRUN -> [SKIP][89] ([i915#10307] / [i915#10434] / [i915#6095]) +1 other test skip
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html

  * igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][90] ([i915#13781]) +3 other tests skip
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-7/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html

  * igt@kms_chamelium_edid@hdmi-edid-read:
    - shard-dg2:          NOTRUN -> [SKIP][91] ([i915#11151] / [i915#7828])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_chamelium_edid@hdmi-edid-read.html

  * igt@kms_chamelium_frames@dp-crc-single:
    - shard-tglu-1:       NOTRUN -> [SKIP][92] ([i915#11151] / [i915#7828]) +2 other tests skip
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_chamelium_frames@dp-crc-single.html

  * igt@kms_chamelium_hpd@dp-hpd-storm-disable:
    - shard-tglu:         NOTRUN -> [SKIP][93] ([i915#11151] / [i915#7828]) +6 other tests skip
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html

  * igt@kms_chamelium_hpd@vga-hpd-fast:
    - shard-rkl:          NOTRUN -> [SKIP][94] ([i915#11151] / [i915#7828]) +6 other tests skip
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-fast.html

  * igt@kms_color@deep-color:
    - shard-rkl:          NOTRUN -> [SKIP][95] ([i915#12655] / [i915#3555])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic:
    - shard-tglu:         NOTRUN -> [SKIP][96] ([i915#15865]) +1 other test skip
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-tglu:         NOTRUN -> [SKIP][97] ([i915#15330] / [i915#3116] / [i915#3299])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-0:
    - shard-rkl:          NOTRUN -> [SKIP][98] ([i915#15330] / [i915#3116])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_content_protection@dp-mst-type-0.html

  * igt@kms_content_protection@dp-mst-type-1-suspend-resume:
    - shard-dg2:          NOTRUN -> [SKIP][99] ([i915#15330])
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html

  * igt@kms_content_protection@type1:
    - shard-tglu-1:       NOTRUN -> [SKIP][100] ([i915#15865]) +1 other test skip
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_content_protection@type1.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-tglu:         NOTRUN -> [SKIP][101] ([i915#13049]) +1 other test skip
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-128x42:
    - shard-tglu:         [PASS][102] -> [FAIL][103] ([i915#13566]) +1 other test fail
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-tglu-2/igt@kms_cursor_crc@cursor-onscreen-128x42.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-9/igt@kms_cursor_crc@cursor-onscreen-128x42.html

  * igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [FAIL][104] ([i915#13566]) +1 other test fail
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1.html

  * igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [FAIL][105] ([i915#13566]) +2 other tests fail
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-7/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-2.html

  * igt@kms_cursor_crc@cursor-random-64x21:
    - shard-tglu:         NOTRUN -> [FAIL][106] ([i915#13566]) +1 other test fail
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_cursor_crc@cursor-random-64x21.html

  * igt@kms_cursor_crc@cursor-rapid-movement-512x512:
    - shard-tglu-1:       NOTRUN -> [SKIP][107] ([i915#13049])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html

  * igt@kms_cursor_crc@cursor-rapid-movement-max-size:
    - shard-tglu:         NOTRUN -> [SKIP][108] ([i915#3555]) +2 other tests skip
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html

  * igt@kms_cursor_crc@cursor-suspend:
    - shard-rkl:          [PASS][109] -> [ABORT][110] ([i915#15132])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-2/igt@kms_cursor_crc@cursor-suspend.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-1/igt@kms_cursor_crc@cursor-suspend.html

  * igt@kms_cursor_crc@cursor-suspend@pipe-c-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [ABORT][111] ([i915#15132])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-1/igt@kms_cursor_crc@cursor-suspend@pipe-c-hdmi-a-2.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-dg2:          NOTRUN -> [SKIP][112] ([i915#4103])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#13046] / [i915#5354]) +1 other test skip
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          NOTRUN -> [FAIL][114] ([i915#15804])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-rkl:          NOTRUN -> [SKIP][115] ([i915#9723])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-7/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc:
    - shard-rkl:          NOTRUN -> [SKIP][116] ([i915#3555] / [i915#3804])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html

  * igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#3804])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          NOTRUN -> [SKIP][118] ([i915#3555]) +1 other test skip
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_dp_aux_dev@basic:
    - shard-tglu:         NOTRUN -> [SKIP][119] ([i915#1257])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_dp_aux_dev@basic.html

  * igt@kms_dp_link_training@non-uhbr-mst:
    - shard-tglu:         NOTRUN -> [SKIP][120] ([i915#13749])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_dp_link_training@non-uhbr-mst.html

  * igt@kms_dp_link_training@non-uhbr-sst:
    - shard-tglu-1:       NOTRUN -> [SKIP][121] ([i915#13749])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_dp_link_training@non-uhbr-sst.html

  * igt@kms_dp_link_training@uhbr-sst:
    - shard-rkl:          NOTRUN -> [SKIP][122] ([i915#13748])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@kms_dp_link_training@uhbr-sst.html
    - shard-dg2:          NOTRUN -> [SKIP][123] ([i915#13748])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_dp_link_training@uhbr-sst.html

  * igt@kms_dsc@dsc-with-formats:
    - shard-tglu:         NOTRUN -> [SKIP][124] ([i915#3555] / [i915#3840])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_dsc@dsc-with-formats.html
    - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#3555] / [i915#3840])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_dsc@dsc-with-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#3555] / [i915#3840])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-7/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_dsc@dsc-with-output-formats-with-bpc:
    - shard-tglu:         NOTRUN -> [SKIP][127] ([i915#3840] / [i915#9053])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_dsc@dsc-with-output-formats-with-bpc.html

  * igt@kms_fbcon_fbt@psr:
    - shard-tglu:         NOTRUN -> [SKIP][128] ([i915#3469])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_fbcon_fbt@psr.html

  * igt@kms_feature_discovery@display-3x:
    - shard-rkl:          NOTRUN -> [SKIP][129] ([i915#16081])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@kms_feature_discovery@display-3x.html

  * igt@kms_feature_discovery@display-4x:
    - shard-tglu-1:       NOTRUN -> [SKIP][130] ([i915#16081])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_feature_discovery@display-4x.html

  * igt@kms_flip@2x-absolute-wf_vblank:
    - shard-tglu-1:       NOTRUN -> [SKIP][131] ([i915#3637] / [i915#9934]) +6 other tests skip
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_flip@2x-absolute-wf_vblank.html

  * igt@kms_flip@2x-nonexisting-fb-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#9934]) +2 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_flip@2x-nonexisting-fb-interruptible.html

  * igt@kms_flip@2x-plain-flip:
    - shard-rkl:          NOTRUN -> [SKIP][133] ([i915#9934]) +6 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_flip@2x-plain-flip.html

  * igt@kms_flip@2x-plain-flip-fb-recreate:
    - shard-tglu:         NOTRUN -> [SKIP][134] ([i915#3637] / [i915#9934]) +2 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_flip@2x-plain-flip-fb-recreate.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][135] ([i915#12314] / [i915#12745] / [i915#4839] / [i915#6113])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk5/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend@a-hdmi-a1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][136] ([i915#12314] / [i915#12745] / [i915#6113])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk5/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:
    - shard-tglu:         NOTRUN -> [SKIP][137] ([i915#15643])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][138] ([i915#15643])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:
    - shard-rkl:          NOTRUN -> [SKIP][139] ([i915#15643]) +3 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#15643])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_force_connector_basic@prune-stale-modes:
    - shard-mtlp:         [PASS][141] -> [SKIP][142] ([i915#15672]) +1 other test skip
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-mtlp-2/igt@kms_force_connector_basic@prune-stale-modes.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-mtlp-1/igt@kms_force_connector_basic@prune-stale-modes.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][143] ([i915#15990] / [i915#8708]) +8 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][144] ([i915#1825]) +7 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][145] ([i915#15990]) +6 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-tglu:         NOTRUN -> [SKIP][146] ([i915#15989]) +12 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-pwrite:
    - shard-dg2:          NOTRUN -> [SKIP][147] ([i915#15991]) +14 other tests skip
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][148] ([i915#15989]) +4 other tests skip
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render.html
    - shard-rkl:          NOTRUN -> [SKIP][149] ([i915#15989]) +15 other tests skip
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render.html

  * igt@kms_frontbuffer_tracking@fbchdr-tiling-linear:
    - shard-rkl:          [PASS][150] -> [SKIP][151] ([i915#15989]) +10 other tests skip
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-tiling-linear.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbchdr-tiling-linear.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:
    - shard-tglu:         NOTRUN -> [SKIP][152] +77 other tests skip
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
    - shard-dg2:          NOTRUN -> [SKIP][153] ([i915#10433] / [i915#15102])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-rkl:          NOTRUN -> [SKIP][154] ([i915#5439])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-indfb-fliptrack-mmap-gtt:
    - shard-tglu:         NOTRUN -> [SKIP][155] ([i915#15102]) +32 other tests skip
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][156] ([i915#15102]) +13 other tests skip
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][157] ([i915#15102]) +20 other tests skip
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-rte:
    - shard-tglu-1:       NOTRUN -> [SKIP][158] ([i915#15102]) +20 other tests skip
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-glk10:        NOTRUN -> [SKIP][159] +119 other tests skip
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk10/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-tiling-4:
    - shard-tglu-1:       NOTRUN -> [SKIP][160] ([i915#5439])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsrhdr-tiling-4.html

  * igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-pwrite:
    - shard-dg2:          [PASS][161] -> [SKIP][162] ([i915#15989]) +2 other tests skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg2-10/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-pwrite.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@hdr-farfromfence-mmap-gtt:
    - shard-tglu-1:       NOTRUN -> [SKIP][163] ([i915#15989]) +11 other tests skip
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_frontbuffer_tracking@hdr-farfromfence-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#15102] / [i915#3023]) +12 other tests skip
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render:
    - shard-dg2:          NOTRUN -> [SKIP][165] ([i915#15991] / [i915#5354]) +9 other tests skip
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite:
    - shard-tglu-1:       NOTRUN -> [SKIP][166] +55 other tests skip
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch:
    - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#16012] / [i915#3555] / [i915#8228])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-2-xrgb2101010:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][168] ([i915#15436])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-2-xrgb2101010.html

  * igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1-xrgb2101010:
    - shard-dg1:          NOTRUN -> [SKIP][169] ([i915#16012]) +5 other tests skip
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-14/igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1-xrgb2101010.html

  * igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-2-xrgb16161616f:
    - shard-rkl:          NOTRUN -> [SKIP][170] ([i915#16012]) +1 other test skip
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-2-xrgb16161616f.html

  * igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-3-xrgb16161616f:
    - shard-dg2:          NOTRUN -> [SKIP][171] ([i915#16012]) +1 other test skip
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-7/igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-3-xrgb16161616f.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-dg2:          [PASS][172] -> [SKIP][173] ([i915#16011] / [i915#3555] / [i915#8228])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg2-10/igt@kms_hdr@invalid-metadata-sizes.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_hdr@invalid-metadata-sizes.html
    - shard-tglu:         NOTRUN -> [SKIP][174] ([i915#16011] / [i915#3555] / [i915#8228])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-1-xrgb2101010:
    - shard-tglu:         NOTRUN -> [SKIP][175] ([i915#16011]) +1 other test skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-1-xrgb2101010.html

  * igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-2-xrgb2101010:
    - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#16011]) +7 other tests skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-2-xrgb2101010.html

  * igt@kms_hdr@static-swap@pipe-a-hdmi-a-3-xrgb2101010:
    - shard-dg1:          NOTRUN -> [SKIP][177] ([i915#16011]) +9 other tests skip
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-12/igt@kms_hdr@static-swap@pipe-a-hdmi-a-3-xrgb2101010.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#16011] / [i915#3555] / [i915#8228])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-tglu-1:       NOTRUN -> [SKIP][179] ([i915#16011] / [i915#3555] / [i915#8228])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-1-xrgb16161616f:
    - shard-tglu-1:       NOTRUN -> [SKIP][180] ([i915#16011]) +4 other tests skip
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-1-xrgb16161616f.html

  * igt@kms_hdr@static-toggle@pipe-a-hdmi-a-1-xrgb16161616f:
    - shard-dg2:          NOTRUN -> [SKIP][181] ([i915#16011]) +3 other tests skip
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_hdr@static-toggle@pipe-a-hdmi-a-1-xrgb16161616f.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][182] ([i915#15460])
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@invalid-modeset-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#15460])
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-7/igt@kms_joiner@invalid-modeset-big-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#15459])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_panel_fitting@atomic-fastset:
    - shard-rkl:          NOTRUN -> [SKIP][185] ([i915#6301])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_panel_fitting@atomic-fastset.html

  * igt@kms_panel_fitting@legacy:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#6301])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_panel_fitting@legacy.html

  * igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][187] ([i915#12756] / [i915#13409] / [i915#13476]) +1 other test incomplete
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html

  * igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier:
    - shard-dg2:          NOTRUN -> [SKIP][188] ([i915#15709]) +2 other tests skip
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier.html

  * igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier:
    - shard-tglu-1:       NOTRUN -> [SKIP][189] ([i915#15709])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier.html

  * igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier@pipe-b-plane-5:
    - shard-dg2:          NOTRUN -> [SKIP][190] ([i915#15608]) +1 other test skip
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier@pipe-b-plane-5.html

  * igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier:
    - shard-tglu:         NOTRUN -> [SKIP][191] ([i915#15709]) +1 other test skip
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier.html

  * igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([i915#15709]) +2 other tests skip
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier.html

  * igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier@pipe-a-plane-7:
    - shard-tglu-1:       NOTRUN -> [SKIP][193] ([i915#15608]) +3 other tests skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier@pipe-a-plane-7.html

  * igt@kms_plane@planar-pixel-format-settings@nv12-tile4-src-y:
    - shard-tglu:         NOTRUN -> [SKIP][194] ([i915#16112])
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_plane@planar-pixel-format-settings@nv12-tile4-src-y.html

  * igt@kms_plane_alpha_blend@alpha-basic:
    - shard-glk10:        NOTRUN -> [FAIL][195] ([i915#12178])
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk10/igt@kms_plane_alpha_blend@alpha-basic.html

  * igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:
    - shard-glk10:        NOTRUN -> [FAIL][196] ([i915#7862]) +1 other test fail
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk10/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html

  * igt@kms_plane_lowres@tiling-yf:
    - shard-rkl:          NOTRUN -> [SKIP][197] ([i915#3555]) +2 other tests skip
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_plane_lowres@tiling-yf.html

  * igt@kms_plane_multiple@2x-tiling-x:
    - shard-tglu:         NOTRUN -> [SKIP][198] ([i915#13958])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_plane_multiple@2x-tiling-x.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b:
    - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#15329]) +7 other tests skip
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:
    - shard-tglu:         NOTRUN -> [SKIP][200] ([i915#15329]) +4 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html

  * igt@kms_pm_backlight@brightness-with-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][201] ([i915#12343])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_pm_backlight@brightness-with-dpms.html

  * igt@kms_pm_backlight@fade-with-dpms:
    - shard-tglu-1:       NOTRUN -> [SKIP][202] ([i915#12343] / [i915#9812])
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_pm_backlight@fade-with-dpms.html

  * igt@kms_pm_dc@dc3co-vpb-simulation:
    - shard-tglu:         NOTRUN -> [SKIP][203] ([i915#15948])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_pm_dc@dc3co-vpb-simulation.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-dg2:          NOTRUN -> [SKIP][204] ([i915#15751])
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_pm_dc@dc6-dpms.html
    - shard-rkl:          NOTRUN -> [FAIL][205] ([i915#15752])
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_dc@dc9-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][206] ([i915#15739])
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_pm_dc@dc9-dpms.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-tglu-1:       NOTRUN -> [SKIP][207] ([i915#8430])
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-non-lpsp:
    - shard-rkl:          NOTRUN -> [SKIP][208] ([i915#15073])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_pm_rpm@dpms-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-dg2:          NOTRUN -> [SKIP][209] ([i915#15073])
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp.html
    - shard-dg1:          [PASS][210] -> [SKIP][211] ([i915#15073])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-17/igt@kms_pm_rpm@modeset-non-lpsp.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-15/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [PASS][212] -> [SKIP][213] ([i915#15073])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  * igt@kms_pm_rpm@system-suspend-modeset:
    - shard-rkl:          [PASS][214] -> [INCOMPLETE][215] ([i915#14419])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_pm_rpm@system-suspend-modeset.html
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_pm_rpm@system-suspend-modeset.html

  * igt@kms_prime@basic-crc-hybrid:
    - shard-tglu:         NOTRUN -> [SKIP][216] ([i915#6524])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_prime@basic-crc-hybrid.html

  * igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][217] ([i915#11520]) +4 other tests skip
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf:
    - shard-glk10:        NOTRUN -> [SKIP][218] ([i915#11520]) +1 other test skip
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk10/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf:
    - shard-tglu:         NOTRUN -> [SKIP][219] ([i915#11520]) +3 other tests skip
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:
    - shard-rkl:          NOTRUN -> [SKIP][220] ([i915#11520]) +8 other tests skip
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:
    - shard-glk:          NOTRUN -> [SKIP][221] ([i915#11520]) +4 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk2/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
    - shard-dg2:          NOTRUN -> [SKIP][222] ([i915#11520]) +4 other tests skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:
    - shard-glk11:        NOTRUN -> [SKIP][223] ([i915#11520]) +2 other tests skip
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk11/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-rkl:          NOTRUN -> [SKIP][224] ([i915#9683])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-dg2:          NOTRUN -> [SKIP][225] ([i915#9683])
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_psr2_su@page_flip-nv12.html
    - shard-tglu:         NOTRUN -> [SKIP][226] ([i915#9683])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@fbc-pr-sprite-plane-onoff:
    - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#1072] / [i915#9732]) +17 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@kms_psr@fbc-pr-sprite-plane-onoff.html

  * igt@kms_psr@fbc-psr-no-drrs:
    - shard-tglu:         NOTRUN -> [SKIP][228] ([i915#9732]) +14 other tests skip
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_psr@fbc-psr-no-drrs.html

  * igt@kms_psr@fbc-psr-primary-render:
    - shard-glk11:        NOTRUN -> [SKIP][229] +152 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk11/igt@kms_psr@fbc-psr-primary-render.html

  * igt@kms_psr@psr2-cursor-mmap-gtt:
    - shard-tglu-1:       NOTRUN -> [SKIP][230] ([i915#9732]) +8 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_psr@psr2-cursor-mmap-gtt.html

  * igt@kms_psr@psr2-cursor-plane-move:
    - shard-dg2:          NOTRUN -> [SKIP][231] ([i915#1072] / [i915#9732]) +9 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_psr@psr2-cursor-plane-move.html

  * igt@kms_rotation_crc@bad-pixel-format:
    - shard-dg2:          NOTRUN -> [SKIP][232] ([i915#12755] / [i915#15867])
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_rotation_crc@bad-pixel-format.html

  * igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
    - shard-rkl:          NOTRUN -> [SKIP][233] ([i915#5289])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:
    - shard-dg2:          NOTRUN -> [SKIP][234] ([i915#12755] / [i915#15867] / [i915#5190])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html
    - shard-tglu:         NOTRUN -> [SKIP][235] ([i915#5289]) +1 other test skip
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html

  * igt@kms_scaling_modes@scaling-mode-none:
    - shard-tglu-1:       NOTRUN -> [SKIP][236] ([i915#3555]) +1 other test skip
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_scaling_modes@scaling-mode-none.html

  * igt@kms_tiled_display@basic-test-pattern:
    - shard-glk11:        NOTRUN -> [FAIL][237] ([i915#10959])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk11/igt@kms_tiled_display@basic-test-pattern.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-tglu:         NOTRUN -> [SKIP][238] ([i915#9906]) +1 other test skip
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@flipline:
    - shard-rkl:          NOTRUN -> [SKIP][239] ([i915#15243] / [i915#3555])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_vrr@flipline.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-dg2:          NOTRUN -> [SKIP][240] ([i915#9906])
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_vrr@seamless-rr-switch-virtual.html

  * igt@perf_pmu@busy-idle@vcs0:
    - shard-dg2:          NOTRUN -> [FAIL][241] ([i915#4349]) +5 other tests fail
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@perf_pmu@busy-idle@vcs0.html

  * igt@perf_pmu@module-unload:
    - shard-rkl:          NOTRUN -> [ABORT][242] ([i915#15778])
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@most-busy-idle-check-all:
    - shard-rkl:          [PASS][243] -> [FAIL][244] ([i915#4349]) +1 other test fail
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-7/igt@perf_pmu@most-busy-idle-check-all.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-8/igt@perf_pmu@most-busy-idle-check-all.html

  * igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-7:
    - shard-tglu-1:       NOTRUN -> [SKIP][245] ([i915#16066]) +9 other tests skip
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-7.html

  
#### Possible fixes ####

  * igt@gem_exec_endless@dispatch:
    - shard-mtlp:         [TIMEOUT][246] ([i915#3778] / [i915#7016]) -> [PASS][247] +1 other test pass
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-mtlp-6/igt@gem_exec_endless@dispatch.html
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-mtlp-6/igt@gem_exec_endless@dispatch.html

  * igt@gem_exec_suspend@basic-s0:
    - shard-dg2:          [INCOMPLETE][248] ([i915#13356]) -> [PASS][249] +1 other test pass
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg2-1/igt@gem_exec_suspend@basic-s0.html
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@gem_exec_suspend@basic-s0.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-rkl:          [INCOMPLETE][250] ([i915#13356]) -> [PASS][251]
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@gem_workarounds@suspend-resume-context.html
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_rpm@system-suspend-devices:
    - shard-rkl:          [ABORT][252] ([i915#15060]) -> [PASS][253]
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@i915_pm_rpm@system-suspend-devices.html
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-7/igt@i915_pm_rpm@system-suspend-devices.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [ABORT][254] ([i915#15131]) -> [PASS][255]
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@i915_suspend@basic-s3-without-i915.html
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html

  * igt@i915_suspend@forcewake:
    - shard-rkl:          [INCOMPLETE][256] ([i915#4817]) -> [PASS][257]
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-3/igt@i915_suspend@forcewake.html
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@i915_suspend@forcewake.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3:
    - shard-dg2:          [FAIL][258] ([i915#5956]) -> [PASS][259] +1 other test pass
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg2-5/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html

  * igt@kms_cursor_crc@cursor-onscreen-128x42:
    - shard-rkl:          [FAIL][260] ([i915#13566]) -> [PASS][261] +2 other tests pass
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-128x42.html
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-128x42.html

  * igt@kms_cursor_crc@cursor-random-256x256:
    - shard-dg1:          [DMESG-WARN][262] ([i915#4423]) -> [PASS][263] +3 other tests pass
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-14/igt@kms_cursor_crc@cursor-random-256x256.html
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-17/igt@kms_cursor_crc@cursor-random-256x256.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-rkl:          [INCOMPLETE][264] ([i915#16276] / [i915#6113]) -> [PASS][265] +1 other test pass
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_flip@flip-vs-suspend.html
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-spr-indfb-move:
    - shard-glk:          [SKIP][266] -> [PASS][267] +19 other tests pass
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-glk2/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-spr-indfb-move.html
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk8/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-blt:
    - shard-rkl:          [SKIP][268] ([i915#15989]) -> [PASS][269] +2 other tests pass
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-blt.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-blt.html

  * igt@kms_hdmi_inject@inject-audio:
    - shard-tglu:         [SKIP][270] ([i915#13030]) -> [PASS][271]
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-tglu-4/igt@kms_hdmi_inject@inject-audio.html
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-7/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg1:          [SKIP][272] ([i915#15073]) -> [PASS][273] +1 other test pass
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-12/igt@kms_pm_rpm@modeset-lpsp.html
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-14/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@kms_pm_rpm@system-suspend-idle:
    - shard-dg2:          [INCOMPLETE][274] ([i915#14419]) -> [PASS][275]
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg2-10/igt@kms_pm_rpm@system-suspend-idle.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_pm_rpm@system-suspend-idle.html

  
#### Warnings ####

  * igt@gem_close_race@multigpu-basic-process:
    - shard-rkl:          [SKIP][276] ([i915#7697]) -> [SKIP][277] ([i915#14544] / [i915#7697])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@gem_close_race@multigpu-basic-process.html
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_ctx_sseu@invalid-args:
    - shard-rkl:          [SKIP][278] ([i915#280]) -> [SKIP][279] ([i915#14544] / [i915#280])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@gem_ctx_sseu@invalid-args.html
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@gem_ctx_sseu@invalid-args.html

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-rkl:          [SKIP][280] ([i915#4525]) -> [SKIP][281] ([i915#14544] / [i915#4525])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_reloc@basic-gtt-cpu:
    - shard-rkl:          [SKIP][282] ([i915#3281]) -> [SKIP][283] ([i915#14544] / [i915#3281]) +1 other test skip
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-cpu.html
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu.html

  * igt@gem_exec_reloc@basic-write-read:
    - shard-rkl:          [SKIP][284] ([i915#14544] / [i915#3281]) -> [SKIP][285] ([i915#3281]) +4 other tests skip
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@gem_exec_reloc@basic-write-read.html
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@gem_exec_reloc@basic-write-read.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-rkl:          [SKIP][286] ([i915#4613]) -> [SKIP][287] ([i915#14544] / [i915#4613])
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@gem_lmem_swapping@heavy-verify-multi.html
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_partial_pwrite_pread@reads-uncached:
    - shard-rkl:          [SKIP][288] ([i915#3282]) -> [SKIP][289] ([i915#14544] / [i915#3282])
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@gem_partial_pwrite_pread@reads-uncached.html
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@gem_partial_pwrite_pread@reads-uncached.html

  * igt@gem_readwrite@beyond-eob:
    - shard-rkl:          [SKIP][290] ([i915#14544] / [i915#3282]) -> [SKIP][291] ([i915#3282]) +1 other test skip
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@gem_readwrite@beyond-eob.html
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@gem_readwrite@beyond-eob.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-rkl:          [SKIP][292] ([i915#3297]) -> [SKIP][293] ([i915#14544] / [i915#3297])
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@gem_userptr_blits@coherency-sync.html
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-rkl:          [SKIP][294] ([i915#14544] / [i915#3297]) -> [SKIP][295] ([i915#3297])
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@gem_userptr_blits@unsync-overlap.html
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-rkl:          [SKIP][296] ([i915#14544] / [i915#2527]) -> [SKIP][297] ([i915#2527])
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@gen9_exec_parse@batch-without-end.html
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@gen9_exec_parse@batch-without-end.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
    - shard-rkl:          [SKIP][298] ([i915#5286]) -> [SKIP][299] ([i915#14544] / [i915#5286])
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-rkl:          [SKIP][300] ([i915#14544] / [i915#5286]) -> [SKIP][301] ([i915#5286]) +1 other test skip
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          [SKIP][302] ([i915#14544] / [i915#3828]) -> [SKIP][303] ([i915#3828])
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
    - shard-rkl:          [SKIP][304] ([i915#14544] / [i915#3638]) -> [SKIP][305] ([i915#3638])
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          [SKIP][306] ([i915#14544] / [i915#6095]) -> [SKIP][307] ([i915#6095]) +7 other tests skip
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2.html
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          [SKIP][308] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][309] ([i915#14098] / [i915#6095]) +7 other tests skip
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2.html
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs:
    - shard-rkl:          [SKIP][310] ([i915#14098] / [i915#6095]) -> [SKIP][311] ([i915#14098] / [i915#14544] / [i915#6095]) +2 other tests skip
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs.html
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs.html

  * igt@kms_chamelium_edid@hdmi-mode-timings:
    - shard-rkl:          [SKIP][312] ([i915#11151] / [i915#7828]) -> [SKIP][313] ([i915#11151] / [i915#14544] / [i915#7828]) +1 other test skip
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_chamelium_edid@hdmi-mode-timings.html
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_chamelium_edid@hdmi-mode-timings.html

  * igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
    - shard-rkl:          [SKIP][314] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][315] ([i915#11151] / [i915#7828])
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html

  * igt@kms_content_protection@dp-mst-type-1-suspend-resume:
    - shard-rkl:          [SKIP][316] ([i915#14544] / [i915#15330]) -> [SKIP][317] ([i915#15330])
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html

  * igt@kms_content_protection@legacy-hdcp14:
    - shard-rkl:          [SKIP][318] ([i915#14544] / [i915#15865]) -> [SKIP][319] ([i915#15865])
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_content_protection@legacy-hdcp14.html
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_content_protection@legacy-hdcp14.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg1:          [SKIP][320] ([i915#9433]) -> [SKIP][321] ([i915#15865])
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-12/igt@kms_content_protection@mei-interface.html
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-14/igt@kms_content_protection@mei-interface.html

  * igt@kms_cursor_crc@cursor-onscreen-32x10:
    - shard-rkl:          [SKIP][322] ([i915#14544] / [i915#3555]) -> [SKIP][323] ([i915#3555])
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-32x10.html
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-32x10.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - shard-rkl:          [SKIP][324] ([i915#14544] / [i915#4103]) -> [SKIP][325] ([i915#4103])
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:
    - shard-dg1:          [SKIP][326] ([i915#4103]) -> [SKIP][327] ([i915#4103] / [i915#4423])
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-15/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-16/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html

  * igt@kms_feature_discovery@psr2:
    - shard-rkl:          [SKIP][328] ([i915#658]) -> [SKIP][329] ([i915#14544] / [i915#658])
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_feature_discovery@psr2.html
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_feature_discovery@psr2.html

  * igt@kms_flip@2x-plain-flip-ts-check:
    - shard-rkl:          [SKIP][330] ([i915#14544] / [i915#9934]) -> [SKIP][331] ([i915#9934])
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_flip@2x-plain-flip-ts-check.html
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@kms_flip@2x-plain-flip-ts-check.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-glk:          [INCOMPLETE][332] ([i915#12314] / [i915#12745] / [i915#4839] / [i915#6113]) -> [INCOMPLETE][333] ([i915#12745] / [i915#4839])
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-glk5/igt@kms_flip@flip-vs-suspend-interruptible.html
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk4/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:
    - shard-glk:          [INCOMPLETE][334] ([i915#12314] / [i915#12745]) -> [INCOMPLETE][335] ([i915#12745])
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-glk5/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk4/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:
    - shard-rkl:          [SKIP][336] ([i915#15643]) -> [SKIP][337] ([i915#14544] / [i915#15643])
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
    - shard-rkl:          [SKIP][338] ([i915#14544] / [i915#15643]) -> [SKIP][339] ([i915#15643]) +1 other test skip
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][340] ([i915#1825]) -> [SKIP][341] ([i915#14544] / [i915#1825])
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-pwrite:
    - shard-rkl:          [SKIP][342] -> [SKIP][343] ([i915#14544]) +13 other tests skip
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-pwrite.html
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:
    - shard-rkl:          [SKIP][344] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][345] ([i915#15102] / [i915#3023]) +5 other tests skip
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt:
    - shard-dg1:          [SKIP][346] -> [SKIP][347] ([i915#4423]) +2 other tests skip
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt.html
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:
    - shard-dg2:          [SKIP][348] ([i915#10433] / [i915#15102]) -> [SKIP][349] ([i915#15102]) +2 other tests skip
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt:
    - shard-rkl:          [SKIP][350] ([i915#14544] / [i915#15102]) -> [SKIP][351] ([i915#15102]) +5 other tests skip
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt.html
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-move:
    - shard-rkl:          [SKIP][352] ([i915#15102]) -> [SKIP][353] ([i915#14544] / [i915#15102]) +5 other tests skip
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-move.html
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-move.html

  * igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-cur-indfb-draw-render:
    - shard-dg1:          [SKIP][354] ([i915#4423]) -> [SKIP][355]
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-cur-indfb-draw-render.html
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:
    - shard-rkl:          [SKIP][356] ([i915#14544]) -> [SKIP][357] +17 other tests skip
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][358] ([i915#14544] / [i915#1825]) -> [SKIP][359] ([i915#1825]) +1 other test skip
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:
    - shard-rkl:          [SKIP][360] ([i915#15102] / [i915#3023]) -> [SKIP][361] ([i915#14544] / [i915#15102] / [i915#3023]) +2 other tests skip
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-rkl:          [SKIP][362] ([i915#16012] / [i915#3555] / [i915#8228]) -> [INCOMPLETE][363] ([i915#15436])
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_hdr@bpc-switch-suspend.html
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-rkl:          [SKIP][364] ([i915#15458]) -> [SKIP][365] ([i915#14544] / [i915#15458])
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_joiner@invalid-modeset-ultra-joiner.html
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_panel_fitting@legacy:
    - shard-rkl:          [SKIP][366] ([i915#14544] / [i915#6301]) -> [SKIP][367] ([i915#6301])
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_panel_fitting@legacy.html
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_panel_fitting@legacy.html

  * igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier:
    - shard-dg1:          [SKIP][368] ([i915#15709]) -> [SKIP][369] ([i915#15709] / [i915#4423])
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-15/igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier.html
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-16/igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier.html

  * igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier:
    - shard-rkl:          [SKIP][370] ([i915#14544] / [i915#15709]) -> [SKIP][371] ([i915#15709]) +1 other test skip
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier.html
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-rkl:          [SKIP][372] ([i915#14259] / [i915#14544]) -> [SKIP][373] ([i915#14259])
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-rkl:          [SKIP][374] ([i915#15329] / [i915#3555]) -> [SKIP][375] ([i915#14544] / [i915#15329] / [i915#3555])
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
    - shard-rkl:          [SKIP][376] ([i915#15329]) -> [SKIP][377] ([i915#14544] / [i915#15329]) +2 other tests skip
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-rkl:          [SKIP][378] ([i915#14544] / [i915#9340]) -> [SKIP][379] ([i915#9340])
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html
    - shard-dg1:          [SKIP][380] ([i915#9340]) -> [SKIP][381] ([i915#3828])
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-17/igt@kms_pm_lpsp@kms-lpsp.html
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-15/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:
    - shard-rkl:          [SKIP][382] ([i915#11520]) -> [SKIP][383] ([i915#11520] / [i915#14544])
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf.html
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:
    - shard-dg1:          [SKIP][384] ([i915#11520]) -> [SKIP][385] ([i915#11520] / [i915#4423])
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-16/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-13/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
    - shard-rkl:          [SKIP][386] ([i915#11520] / [i915#14544]) -> [SKIP][387] ([i915#11520]) +2 other tests skip
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html

  * igt@kms_psr@pr-primary-mmap-cpu:
    - shard-rkl:          [SKIP][388] ([i915#1072] / [i915#9732]) -> [SKIP][389] ([i915#1072] / [i915#14544] / [i915#9732]) +1 other test skip
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_psr@pr-primary-mmap-cpu.html
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_psr@pr-primary-mmap-cpu.html

  * igt@kms_psr@psr-sprite-plane-onoff:
    - shard-rkl:          [SKIP][390] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][391] ([i915#1072] / [i915#9732]) +4 other tests skip
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_psr@psr-sprite-plane-onoff.html
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_psr@psr-sprite-plane-onoff.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-rkl:          [SKIP][392] ([i915#3555]) -> [SKIP][393] ([i915#14544] / [i915#3555]) +1 other test skip
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_setmode@clone-exclusive-crtc.html
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-rkl:          [SKIP][394] ([i915#14544] / [i915#9906]) -> [SKIP][395] ([i915#9906])
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-vrr.html
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@kms_vrr@seamless-rr-switch-vrr.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#10959]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10959
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#12178]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12178
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12314]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314
  [i915#12343]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343
  [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
  [i915#12655]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
  [i915#12756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#13029]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029
  [i915#13030]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13030
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13390]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390
  [i915#13409]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409
  [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
  [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
  [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
  [i915#13790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
  [i915#14419]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
  [i915#15060]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15060
  [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
  [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
  [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
  [i915#15132]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132
  [i915#15172]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15172
  [i915#15243]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243
  [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
  [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
  [i915#15436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15436
  [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
  [i915#15459]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459
  [i915#15460]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460
  [i915#15582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582
  [i915#15608]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15608
  [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
  [i915#15672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15672
  [i915#15709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
  [i915#15726]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15726
  [i915#15739]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15739
  [i915#15751]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15751
  [i915#15752]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15752
  [i915#15778]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15778
  [i915#15804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15804
  [i915#15840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15840
  [i915#15865]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865
  [i915#15867]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15867
  [i915#15931]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15931
  [i915#15948]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15948
  [i915#15989]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989
  [i915#15990]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990
  [i915#15991]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991
  [i915#16011]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011
  [i915#16012]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012
  [i915#16066]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16066
  [i915#16081]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16081
  [i915#16109]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16109
  [i915#16112]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16112
  [i915#16182]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16182
  [i915#16205]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16205
  [i915#16276]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16276
  [i915#16308]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16308
  [i915#1769]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#2190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681
  [i915#280]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280
  [i915#2856]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023
  [i915#3116]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116
  [i915#3281]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3778]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3778
  [i915#3804]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
  [i915#4387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387
  [i915#4391]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
  [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
  [i915#6301]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#6344]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658
  [i915#7016]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7016
  [i915#7582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#7862]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7862
  [i915#7984]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
  [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
  [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#9053]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433
  [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_18595 -> Patchwork_167641v1

  CI-20190529: 20190529
  CI_DRM_18595: 8133a9f4c4fd407e81df71530490836a1170bb2f @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8943: 8943
  Patchwork_167641v1: 8133a9f4c4fd407e81df71530490836a1170bb2f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/index.html

--===============1067624899627512113==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Mask RO bits in gen9_write_dc_state()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/167641/">https://patchwork.freedesktop.org/series/167641/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18595_full -&gt; Patchwork_167641v1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_167641v1_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_167641v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_167641v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-shrfb-draw-mmap-gtt:<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-tglu-7/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-shrfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-6/igt@kms_frontbuffer_tracking@fbc-1p-offscreen-pri-shrfb-draw-mmap-gtt.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_167641v1_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@dmabuf@all-tests.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15931">i915#15931</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg2-1/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-5/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-sanity-check:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@gem_create@create-ext-cpu-access-sanity-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335">i915#6335</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@gem_create@create-ext-set-pat.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-stop:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@gem_ctx_persistence@heartbeat-stop.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555">i915#8555</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@gem_ctx_sseu@invalid-sseu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-13/igt@gem_eio@in-flight-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-18/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390">i915#13390</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4391">i915#4391</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@gem_exec_balancer@parallel.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-recoverable:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-7/igt@gem_exec_capture@capture-recoverable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344">i915#6344</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@gem_exec_reloc@basic-wc-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@2-spare-fences:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@gem_fenced_exec_thrash@2-spare-fences.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#4860</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@gem_lmem_evict@dontneed-evict-race.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582">i915#7582</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@gem_lmem_swapping@heavy-multi.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@gem_lmem_swapping@parallel-multi.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@gem_lmem_swapping@smem-oom.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@fault-concurrent-y:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@gem_mmap_gtt@fault-concurrent-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@write-cpu-read-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@gem_mmap_wc@write-cpu-read-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_pread@display:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@gem_pread@display.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@gem_readwrite@beyond-eob.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428">i915#8428</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk11/igt@gem_workarounds@suspend-resume-context.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@gen9_exec_parse@allowed-single.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@gen9_exec_parse@basic-rejected.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@gen9_exec_parse@basic-rejected-ctx-param.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@gen9_exec_parse@batch-without-end.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@most-busy-idle-check-all@vecs1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@i915_drm_fdinfo@most-busy-idle-check-all@vecs1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073">i915#14073</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-no-display:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@i915_module_load@reload-no-display.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029">i915#13029</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545">i915#14545</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-reset-multiple:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@i915_pm_freq_api@freq-reset-multiple.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399">i915#8399</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790">i915#13790</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2681">i915#2681</a>) +1 other test warn</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-glk2/igt@i915_pm_rpm@system-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk8/igt@i915_pm_rpm@system-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-execbuf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk9/igt@i915_pm_rpm@system-suspend-execbuf.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15172">i915#15172</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@thresholds:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@i915_pm_rps@thresholds.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_sseu@full-enable:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@i915_pm_sseu@full-enable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4387">i915#4387</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_power@sanity:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-mtlp-1/igt@i915_power@sanity.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-mtlp-7/igt@i915_power@sanity.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984">i915#7984</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@i915_query@hwconfig_table.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245">i915#6245</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-known-pci-ids:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@i915_query@query-topology-known-pci-ids.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16109">i915#16109</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@i915_query@query-topology-known-pci-ids.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16109">i915#16109</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk11/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16182">i915#16182</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_3d@basic:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-mtlp-2/igt@kms_3d@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-mtlp-1/igt@kms_3d@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15726">i915#15726</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-suspend-resume:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_async_flips@async-flip-suspend-resume.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15840">i915#15840</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1769">i915#1769</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_big_fb@4-tiled-16bpp-rotate-270.html">SKIP</a> +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_big_fb@4-tiled-32bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_big_fb@4-tiled-32bpp-rotate-180.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-0:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk10/igt@kms_big_fb@linear-16bpp-rotate-0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16308">i915#16308</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-16bpp-rotate-180:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_big_fb@linear-16bpp-rotate-180.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16308">i915#16308</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_big_fb@linear-32bpp-rotate-180.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16308">i915#16308</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-180:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk6/igt@kms_big_fb@linear-8bpp-rotate-180.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16308">i915#16308</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@kms_big_fb@linear-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk11/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16308">i915#16308</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-16/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-13/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) +3 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_big_fb@yf-tiled-16bpp-rotate-180.html">SKIP</a> +67 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538">i915#4538</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-16/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +251 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-1/igt@kms_ccs@bad-rotation-90-4-tiled-dg2-rc-ccs-cc@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +47 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk2/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> +275 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk10/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582">i915#15582</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16205">i915#16205</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-d-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_ccs@crc-sprite-planes-basic-yf-tiled-ccs@pipe-a-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +44 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313">i915#12313</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-5/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +77 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +88 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_ccs@random-ccs-data-y-tiled-gen12-mc-ccs@pipe-d-hdmi-a-1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-7/igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781">i915#13781</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-read:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_chamelium_edid@hdmi-edid-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_frames@dp-crc-single:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_chamelium_frames@dp-crc-single.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@dp-hpd-storm-disable:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_chamelium_hpd@dp-hpd-storm-disable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-fast:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-7/igt@kms_chamelium_hpd@vga-hpd-fast.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@kms_color@deep-color.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12655">i915#12655</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_content_protection@atomic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_content_protection@dp-mst-lic-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_content_protection@dp-mst-type-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1-suspend-resume:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_content_protection@type1.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_cursor_crc@cursor-offscreen-512x170.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-tglu-2/igt@kms_cursor_crc@cursor-onscreen-128x42.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-9/igt@kms_cursor_crc@cursor-onscreen-128x42.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-64x21@pipe-a-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-7/igt@kms_cursor_crc@cursor-random-256x85@pipe-a-hdmi-a-2.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +2 other tests fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-64x21:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_cursor_crc@cursor-random-64x21.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-512x512:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_cursor_crc@cursor-rapid-movement-512x512.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-max-size:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_cursor_crc@cursor-rapid-movement-max-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-2/igt@kms_cursor_crc@cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-1/igt@kms_cursor_crc@cursor-suspend.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132">i915#15132</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-suspend@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-1/igt@kms_cursor_crc@cursor-suspend@pipe-c-hdmi-a-2.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15132">i915#15132</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046">i915#13046</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15804">i915#15804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-7/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804">i915#3804</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev@basic:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_dp_aux_dev@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257">i915#1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-mst:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_dp_link_training@non-uhbr-mst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749">i915#13749</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-sst:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_dp_link_training@non-uhbr-sst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749">i915#13749</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-sst:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@kms_dp_link_training@uhbr-sst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">i915#13748</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_dp_link_training@uhbr-sst.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">i915#13748</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_dsc@dsc-with-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_dsc@dsc-with-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-7/igt@kms_dsc@dsc-with-output-formats.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats-with-bpc:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_dsc@dsc-with-output-formats-with-bpc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9053">i915#9053</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469">i915#3469</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-3x:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@kms_feature_discovery@display-3x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16081">i915#16081</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-4x:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_feature_discovery@display-4x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16081">i915#16081</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-absolute-wf_vblank:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_flip@2x-absolute-wf_vblank.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-nonexisting-fb-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_flip@2x-nonexisting-fb-interruptible.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_flip@2x-plain-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_flip@2x-plain-flip-fb-recreate.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk5/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk5/igt@kms_flip@flip-vs-suspend@a-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-7/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@prune-stale-modes:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-mtlp-2/igt@kms_force_connector_basic@prune-stale-modes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-mtlp-1/igt@kms_force_connector_basic@prune-stale-modes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15672">i915#15672</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15990">i915#15990</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_frontbuffer_tracking@fbchdr-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbchdr-2p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +4 other tests skip</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-tiling-linear:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-tiling-linear.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbchdr-tiling-linear.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +10 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-fullscreen.html">SKIP</a> +77 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-7/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-indfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +32 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-rte:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-rte.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +20 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk10/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> +119 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-tiling-4:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsrhdr-tiling-4.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg2-10/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_frontbuffer_tracking@hdr-1p-primscrn-pri-shrfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@hdr-farfromfence-mmap-gtt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_frontbuffer_tracking@hdr-farfromfence-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-msflip-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15991">i915#15991</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-pwrite.html">SKIP</a> +55 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@kms_hdr@bpc-switch.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-2-xrgb2101010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_hdr@bpc-switch-suspend@pipe-a-hdmi-a-2-xrgb2101010.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15436">i915#15436</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1-xrgb2101010:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-14/igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-1-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-2-xrgb16161616f:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@kms_hdr@bpc-switch@pipe-a-hdmi-a-2-xrgb16161616f.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-3-xrgb16161616f:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-7/igt@kms_hdr@invalid-hdr@pipe-a-hdmi-a-3-xrgb16161616f.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg2-10/igt@kms_hdr@invalid-metadata-sizes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_hdr@invalid-metadata-sizes.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-1-xrgb2101010:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-1-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-2-xrgb2101010:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_hdr@invalid-metadata-sizes@pipe-a-hdmi-a-2-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap@pipe-a-hdmi-a-3-xrgb2101010:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-12/igt@kms_hdr@static-swap@pipe-a-hdmi-a-3-xrgb2101010.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-1-xrgb16161616f:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_hdr@static-toggle-suspend@pipe-a-hdmi-a-1-xrgb16161616f.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle@pipe-a-hdmi-a-1-xrgb16161616f:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_hdr@static-toggle@pipe-a-hdmi-a-1-xrgb16161616f.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16011">i915#16011</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_joiner@basic-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460">i915#15460</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-7/igt@kms_joiner@invalid-modeset-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460">i915#15460</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_joiner@invalid-modeset-force-big-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459">i915#15459</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@atomic-fastset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_panel_fitting@atomic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk2/igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756">i915#12756</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13409">i915#13409</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476">i915#13476</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_plane@pixel-format-4-tiled-bmg-ccs-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier@pipe-b-plane-5:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-modifier@pipe-b-plane-5.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15608">i915#15608</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_plane@pixel-format-4-tiled-mtl-rc-ccs-cc-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier@pipe-a-plane-7:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_plane@pixel-format-y-tiled-gen12-rc-ccs-modifier@pipe-a-plane-7.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15608">i915#15608</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@planar-pixel-format-settings@nv12-tile4-src-y:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_plane@planar-pixel-format-settings@nv12-tile4-src-y.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16112">i915#16112</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk10/igt@kms_plane_alpha_blend@alpha-basic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12178">i915#12178</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk10/igt@kms_plane_alpha_blend@alpha-basic@pipe-c-hdmi-a-1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7862">i915#7862</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@tiling-yf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_plane_lowres@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-x:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_plane_multiple@2x-tiling-x.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958">i915#13958</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-factor-0-5-with-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@brightness-with-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_pm_backlight@brightness-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_pm_backlight@fade-with-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12343">i915#12343</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_pm_dc@dc3co-vpb-simulation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15948">i915#15948</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_pm_dc@dc6-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15751">i915#15751</a>)</li>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@kms_pm_dc@dc6-dpms.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15752">i915#15752</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_pm_dc@dc9-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15739">i915#15739</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-17/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-15/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg2-6/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_pm_rpm@system-suspend-modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_pm_rpm@system-suspend-modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419">i915#14419</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-crc-hybrid:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_prime@basic-crc-hybrid.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk10/igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_psr2_sf@pr-overlay-plane-move-continuous-exceed-fully-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_psr2_sf@pr-overlay-plane-update-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk2/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk11/igt@kms_psr2_sf@psr2-primary-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@kms_psr2_su@frontbuffer-xrgb8888.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-sprite-plane-onoff:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@kms_psr@fbc-pr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-no-drrs:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_psr@fbc-psr-no-drrs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +14 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-primary-render:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk11/igt@kms_psr@fbc-psr-primary-render.html">SKIP</a> +152 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-mmap-gtt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_psr@psr2-cursor-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-cursor-plane-move:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@kms_psr@psr2-cursor-plane-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@bad-pixel-format:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_rotation_crc@bad-pixel-format.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755">i915#12755</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15867">i915#15867</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755">i915#12755</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15867">i915#15867</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>)</li>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-none:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@kms_scaling_modes@scaling-mode-none.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-glk11:        NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk11/igt@kms_tiled_display@basic-test-pattern.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10959">i915#10959</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-10/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flipline:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_vrr@flipline.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15243">i915#15243</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_vrr@seamless-rr-switch-virtual.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-idle@vcs0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-4/igt@perf_pmu@busy-idle@vcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915#4349</a>) +5 other tests fail</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@perf_pmu@module-unload.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15778">i915#15778</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@most-busy-idle-check-all:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-7/igt@perf_pmu@most-busy-idle-check-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-8/igt@perf_pmu@most-busy-idle-check-all.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915#4349</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-7:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-1/igt@sriov_basic@enable-vfs-autoprobe-on@numvfs-7.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16066">i915#16066</a>) +9 other tests skip</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_endless@dispatch:</p>
<ul>
<li>shard-mtlp:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-mtlp-6/igt@gem_exec_endless@dispatch.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3778">i915#3778</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7016">i915#7016</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-mtlp-6/igt@gem_exec_endless@dispatch.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg2-1/igt@gem_exec_suspend@basic-s0.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@gem_exec_suspend@basic-s0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@gem_workarounds@suspend-resume-context.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@gem_workarounds@suspend-resume-context.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-devices:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@i915_pm_rpm@system-suspend-devices.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15060">i915#15060</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-7/igt@i915_pm_rpm@system-suspend-devices.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-1/igt@i915_suspend@basic-s3-without-i915.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131">i915#15131</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-7/igt@i915_suspend@basic-s3-without-i915.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-3/igt@i915_suspend@forcewake.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817">i915#4817</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@i915_suspend@forcewake.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg2-5/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-128x42.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566">i915#13566</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-2/igt@kms_cursor_crc@cursor-onscreen-128x42.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-256x256:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-14/igt@kms_cursor_crc@cursor-random-256x256.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-17/igt@kms_cursor_crc@cursor-random-256x256.html">PASS</a> +3 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16276">i915#16276</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_flip@flip-vs-suspend.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-glk2/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-spr-indfb-move.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk8/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-spr-indfb-move.html">PASS</a> +19 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15989">i915#15989</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-rgb101010-draw-blt.html">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>shard-tglu:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-tglu-4/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13030">i915#13030</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-tglu-7/igt@kms_hdmi_inject@inject-audio.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-12/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-14/igt@kms_pm_rpm@modeset-lpsp.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@system-suspend-idle:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg2-10/igt@kms_pm_rpm@system-suspend-idle.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14419">i915#14419</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-3/igt@kms_pm_rpm@system-suspend-idle.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@gem_close_race@multigpu-basic-process.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@gem_close_race@multigpu-basic-process.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697">i915#7697</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-args:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@gem_ctx_sseu@invalid-args.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@gem_exec_balancer@parallel-keep-in-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-in-fence.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@gem_exec_reloc@basic-gtt-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@gem_exec_reloc@basic-write-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@gem_exec_reloc@basic-write-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@gem_lmem_swapping@heavy-verify-multi.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@gem_lmem_swapping@heavy-verify-multi.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads-uncached:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@gem_partial_pwrite_pread@reads-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@gem_partial_pwrite_pread@reads-uncached.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@beyond-eob:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@gem_readwrite@beyond-eob.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@gem_readwrite@beyond-eob.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@gen9_exec_parse@batch-without-end.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@gen9_exec_parse@batch-without-end.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-mode-timings:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_chamelium_edid@hdmi-mode-timings.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_chamelium_edid@hdmi-mode-timings.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_chamelium_hpd@hdmi-hpd-storm-disable.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy-hdcp14:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_content_protection@legacy-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_content_protection@legacy-hdcp14.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-12/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9433">i915#9433</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-14/igt@kms_content_protection@mei-interface.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15865">i915#15865</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-32x10:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_cursor_crc@cursor-onscreen-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_cursor_crc@cursor-onscreen-32x10.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-15/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-16/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@psr2:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_feature_discovery@psr2.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-ts-check:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_flip@2x-plain-flip-ts-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@kms_flip@2x-plain-flip-ts-check.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-glk5/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk4/igt@kms_flip@flip-vs-suspend-interruptible.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-glk5/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12314">i915#12314</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-glk4/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbchdr-2p-primscrn-cur-indfb-draw-pwrite.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsr-1p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-15/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary:</p>
<ul>
<li>shard-dg2:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg2-4/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433">i915#10433</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-indfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-offscreen-pri-indfb-draw-blt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-move:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsrhdr-1p-primscrn-spr-indfb-move.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-19/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-cur-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsrhdr-2p-primscrn-cur-indfb-draw-render.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html">SKIP</a> +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-indfb-scaledprimary.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_hdr@bpc-switch-suspend.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/16012">i915#16012</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228">i915#8228</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_hdr@bpc-switch-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15436">i915#15436</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_joiner@invalid-modeset-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458">i915#15458</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_joiner@invalid-modeset-ultra-joiner.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458">i915#15458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_panel_fitting@legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-15/igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-16/igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_plane@pixel-format-y-tiled-gen12-mc-ccs-modifier.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>)</li>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-17/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-15/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_psr2_sf@pr-cursor-plane-move-continuous-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg1:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-dg1-16/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-dg1-13/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@pr-primary-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_psr@pr-primary-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_psr@pr-primary-mmap-cpu.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-onoff:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-4/igt@kms_psr@psr-sprite-plane-onoff.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-5/igt@kms_setmode@clone-exclusive-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-6/igt@kms_setmode@clone-exclusive-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-rkl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18595/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_167641v1/shard-rkl-3/igt@kms_vrr@seamless-rr-switch-vrr.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18595 -&gt; Patchwork_167641v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18595: 8133a9f4c4fd407e81df71530490836a1170bb2f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8943: 8943<br />
  Patchwork_167641v1: 8133a9f4c4fd407e81df71530490836a1170bb2f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============1067624899627512113==--
