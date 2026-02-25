Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDZZOeFZn2lRagQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 21:21:53 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A0319D24F
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 21:21:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFAE610E826;
	Wed, 25 Feb 2026 20:21:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 792E310E826;
 Wed, 25 Feb 2026 20:21:49 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============6184794396190200831=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm/=7Bi915=2Cxe=7D=3A_re?=
 =?utf-8?q?factor_register_helpers?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Feb 2026 20:21:49 -0000
Message-ID: <177205090947.288682.15478663896895289629@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <cover.1772042022.git.jani.nikula@intel.com>
In-Reply-To: <cover.1772042022.git.jani.nikula@intel.com>
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
	NEURAL_HAM(-0.00)[-0.511];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 24A0319D24F
X-Rspamd-Action: no action

--===============6184794396190200831==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/{i915,xe}: refactor register helpers
URL   : https://patchwork.freedesktop.org/series/162164/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_18048 -> Patchwork_162164v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_162164v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_162164v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/index.html

Participating hosts (43 -> 40)
------------------------------

  Missing    (3): bat-dg2-13 fi-snb-2520m bat-adls-6 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_162164v1:

### IGT changes ###

#### Possible regressions ####

  * igt@vgem_basic@unload:
    - fi-glk-j4005:       [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/fi-glk-j4005/igt@vgem_basic@unload.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/fi-glk-j4005/igt@vgem_basic@unload.html

  
Known issues
------------

  Here are the changes found in Patchwork_162164v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_lmem_swapping@basic:
    - bat-atsm-1:         [PASS][3] -> [ABORT][4] ([i915#15759]) +1 other test abort
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/bat-atsm-1/igt@gem_lmem_swapping@basic.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-atsm-1/igt@gem_lmem_swapping@basic.html
    - bat-dg2-14:         [PASS][5] -> [ABORT][6] ([i915#15759]) +1 other test abort
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/bat-dg2-14/igt@gem_lmem_swapping@basic.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg2-14/igt@gem_lmem_swapping@basic.html

  * igt@gem_mmap@basic:
    - bat-dg1-7:          NOTRUN -> [SKIP][7] ([i915#4083])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@gem_mmap@basic.html
    - bat-dg1-6:          NOTRUN -> [SKIP][8] ([i915#4083])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@gem_mmap@basic.html

  * igt@gem_mmap_gtt@basic:
    - bat-dg1-6:          NOTRUN -> [SKIP][9] ([i915#4077]) +2 other tests skip
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@gem_mmap_gtt@basic.html

  * igt@gem_render_tiled_blits@basic:
    - bat-dg1-6:          NOTRUN -> [SKIP][10] ([i915#4079])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@gem_render_tiled_blits@basic.html
    - bat-dg1-7:          NOTRUN -> [SKIP][11] ([i915#4079])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@gem_render_tiled_blits@basic.html

  * igt@gem_tiled_blits@basic:
    - bat-dg1-7:          NOTRUN -> [SKIP][12] ([i915#4077]) +2 other tests skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_pread_basic@basic:
    - bat-dg1-7:          NOTRUN -> [SKIP][13] ([i915#15657])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@gem_tiled_pread_basic@basic.html
    - bat-dg1-6:          NOTRUN -> [SKIP][14] ([i915#15657])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@gem_tiled_pread_basic@basic.html

  * igt@i915_pm_rps@basic-api:
    - bat-dg1-7:          NOTRUN -> [SKIP][15] ([i915#11681] / [i915#6621])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@i915_pm_rps@basic-api.html
    - bat-dg1-6:          NOTRUN -> [SKIP][16] ([i915#11681] / [i915#6621])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@i915_pm_rps@basic-api.html

  * igt@i915_selftest@live:
    - bat-dg2-8:          [PASS][17] -> [DMESG-FAIL][18] ([i915#12061]) +1 other test dmesg-fail
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/bat-dg2-8/igt@i915_selftest@live.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg2-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@evict:
    - bat-arls-6:         NOTRUN -> [DMESG-FAIL][19] ([i915#15738])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-arls-6/igt@i915_selftest@live@evict.html

  * igt@i915_selftest@live@gem_contexts:
    - bat-arls-6:         NOTRUN -> [TIMEOUT][20] ([i915#15738])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-arls-6/igt@i915_selftest@live@gem_contexts.html

  * igt@i915_selftest@live@gt_contexts:
    - bat-arls-6:         NOTRUN -> [DMESG-WARN][21] ([i915#15738]) +16 other tests dmesg-warn
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-arls-6/igt@i915_selftest@live@gt_contexts.html

  * igt@i915_selftest@live@workarounds:
    - bat-dg2-9:          NOTRUN -> [DMESG-FAIL][22] ([i915#12061]) +1 other test dmesg-fail
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html

  * igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:
    - bat-dg1-6:          NOTRUN -> [SKIP][23] ([i915#12311] / [i915#4212]) +7 other tests skip
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html

  * igt@kms_addfb_basic@basic-y-tiled-legacy:
    - bat-dg1-7:          NOTRUN -> [SKIP][24] ([i915#4215])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html
    - bat-dg1-6:          NOTRUN -> [SKIP][25] ([i915#12311] / [i915#4215])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html

  * igt@kms_addfb_basic@bo-too-small-due-to-tiling:
    - bat-dg1-7:          NOTRUN -> [SKIP][26] ([i915#4212]) +7 other tests skip
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html

  * igt@kms_busy@basic:
    - bat-dg1-6:          NOTRUN -> [SKIP][27] ([i915#11190] / [i915#12311] / [i915#4303])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@kms_busy@basic.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
    - bat-dg1-7:          NOTRUN -> [SKIP][28] ([i915#4103] / [i915#4213]) +1 other test skip
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html

  * igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:
    - bat-dg1-6:          NOTRUN -> [SKIP][29] ([i915#11190] / [i915#12311]) +15 other tests skip
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html

  * igt@kms_dsc@dsc-basic:
    - bat-dg1-7:          NOTRUN -> [SKIP][30] ([i915#3555] / [i915#3840])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@kms_dsc@dsc-basic.html

  * igt@kms_flip@basic-flip-vs-dpms:
    - bat-dg1-6:          NOTRUN -> [SKIP][31] ([i915#12311] / [i915#3637]) +2 other tests skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@kms_flip@basic-flip-vs-dpms.html

  * igt@kms_flip@basic-plain-flip:
    - bat-dg1-6:          NOTRUN -> [SKIP][32] ([i915#12311]) +1 other test skip
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@kms_flip@basic-plain-flip.html

  * igt@kms_force_connector_basic@force-load-detect:
    - bat-dg1-7:          NOTRUN -> [SKIP][33]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@basic:
    - bat-dg1-6:          NOTRUN -> [SKIP][34] ([i915#12311] / [i915#4342])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_pm_backlight@basic-brightness:
    - bat-dg1-7:          NOTRUN -> [SKIP][35] ([i915#5354])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@kms_pm_backlight@basic-brightness.html
    - bat-dg1-6:          NOTRUN -> [SKIP][36] ([i915#12311] / [i915#5354])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_psr@psr-primary-page-flip:
    - bat-dg1-7:          NOTRUN -> [SKIP][37] ([i915#1072] / [i915#9732]) +3 other tests skip
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@kms_psr@psr-primary-page-flip.html
    - bat-dg1-6:          NOTRUN -> [SKIP][38] ([i915#1072] / [i915#12311] / [i915#9732]) +3 other tests skip
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@kms_psr@psr-primary-page-flip.html

  * igt@kms_setmode@basic-clone-single-crtc:
    - bat-dg1-6:          NOTRUN -> [SKIP][39] ([i915#12311] / [i915#3555])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@kms_setmode@basic-clone-single-crtc.html
    - bat-dg1-7:          NOTRUN -> [SKIP][40] ([i915#3555])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@kms_setmode@basic-clone-single-crtc.html

  * igt@prime_vgem@basic-fence-mmap:
    - bat-dg1-7:          NOTRUN -> [SKIP][41] ([i915#3708] / [i915#4077]) +1 other test skip
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@prime_vgem@basic-fence-mmap.html
    - bat-dg1-6:          NOTRUN -> [SKIP][42] ([i915#3708] / [i915#4077]) +1 other test skip
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@prime_vgem@basic-fence-mmap.html

  * igt@prime_vgem@basic-fence-read:
    - bat-dg1-7:          NOTRUN -> [SKIP][43] ([i915#3708]) +3 other tests skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@prime_vgem@basic-fence-read.html

  * igt@prime_vgem@basic-read:
    - bat-dg1-6:          NOTRUN -> [SKIP][44] ([i915#3708]) +2 other tests skip
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@basic-write:
    - bat-dg1-6:          NOTRUN -> [SKIP][45] ([i915#11723] / [i915#3708])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@prime_vgem@basic-write.html

  
#### Possible fixes ####

  * igt@gem_exec_create@basic@lmem0:
    - bat-dg1-6:          [ABORT][46] ([i915#15759]) -> [PASS][47] +1 other test pass
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/bat-dg1-6/igt@gem_exec_create@basic@lmem0.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@gem_exec_create@basic@lmem0.html

  * igt@gem_huc_copy@huc-copy:
    - bat-dg1-7:          [ABORT][48] -> [PASS][49]
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/bat-dg1-7/igt@gem_huc_copy@huc-copy.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - bat-dg2-9:          [ABORT][50] ([i915#15759]) -> [PASS][51] +1 other test pass
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/bat-dg2-9/igt@gem_lmem_swapping@parallel-random-engines.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg2-9/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@i915_selftest@live@active:
    - fi-bsw-nick:        [DMESG-FAIL][52] ([i915#14808]) -> [PASS][53] +1 other test pass
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/fi-bsw-nick/igt@i915_selftest@live@active.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/fi-bsw-nick/igt@i915_selftest@live@active.html

  * igt@i915_selftest@live@workarounds:
    - bat-arls-5:         [DMESG-FAIL][54] ([i915#12061]) -> [PASS][55] +1 other test pass
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-arls-5/igt@i915_selftest@live@workarounds.html

  
#### Warnings ####

  * igt@i915_selftest@live@gt_timelines:
    - bat-arls-6:         [TIMEOUT][56] ([i915#15738]) -> [DMESG-WARN][57] ([i915#15738])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/bat-arls-6/igt@i915_selftest@live@gt_timelines.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-arls-6/igt@i915_selftest@live@gt_timelines.html

  
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#11190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#11723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11723
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12311]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311
  [i915#14808]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14808
  [i915#15657]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15657
  [i915#15738]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15738
  [i915#15759]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4215]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215
  [i915#4303]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4303
  [i915#4342]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4342
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732


Build changes
-------------

  * Linux: CI_DRM_18048 -> Patchwork_162164v1

  CI-20190529: 20190529
  CI_DRM_18048: 940d2c5064ed09bca924fd8aa017be99cc745b31 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8771: 8771
  Patchwork_162164v1: 940d2c5064ed09bca924fd8aa017be99cc745b31 @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/index.html

--===============6184794396190200831==
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
<tr><td><b>Series:</b></td><td>drm/{i915,xe}: refactor register helpers</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/162164/">https://patchwork.freedesktop.org/series/162164/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18048 -&gt; Patchwork_162164v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_162164v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_162164v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/index.html</p>
<h2>Participating hosts (43 -&gt; 40)</h2>
<p>Missing    (3): bat-dg2-13 fi-snb-2520m bat-adls-6 </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_162164v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@vgem_basic@unload:<ul>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/fi-glk-j4005/igt@vgem_basic@unload.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/fi-glk-j4005/igt@vgem_basic@unload.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_162164v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/bat-atsm-1/igt@gem_lmem_swapping@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-atsm-1/igt@gem_lmem_swapping@basic.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759">i915#15759</a>) +1 other test abort</li>
<li>bat-dg2-14:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/bat-dg2-14/igt@gem_lmem_swapping@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg2-14/igt@gem_lmem_swapping@basic.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759">i915#15759</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_mmap@basic:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@gem_mmap@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@gem_mmap_gtt@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_render_tiled_blits@basic:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@gem_render_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#4079</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@gem_tiled_blits@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic@basic:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@gem_tiled_pread_basic@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15657">i915#15657</a>)</li>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@gem_tiled_pread_basic@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15657">i915#15657</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@basic-api:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@i915_pm_rps@basic-api.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681">i915#11681</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/bat-dg2-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg2-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@evict:</p>
<ul>
<li>bat-arls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-arls-6/igt@i915_selftest@live@evict.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15738">i915#15738</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>bat-arls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-arls-6/igt@i915_selftest@live@gem_contexts.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15738">i915#15738</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_contexts:</p>
<ul>
<li>bat-arls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-arls-6/igt@i915_selftest@live@gt_contexts.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15738">i915#15738</a>) +16 other tests dmesg-warn</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-dg2-9:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg2-9/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@kms_addfb_basic@addfb25-framebuffer-vs-set-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@basic-y-tiled-legacy:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215">i915#4215</a>)</li>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@kms_addfb_basic@basic-y-tiled-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215">i915#4215</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@bo-too-small-due-to-tiling:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@kms_addfb_basic@bo-too-small-due-to-tiling.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212">i915#4212</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@kms_busy@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4303">i915#4303</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@kms_cursor_legacy@basic-flip-before-cursor-varying-size.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190">i915#11190</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-basic:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@kms_dsc@dsc-basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-flip-vs-dpms:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@kms_flip@basic-flip-vs-dpms.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@basic-plain-flip:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@kms_flip@basic-plain-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@kms_force_connector_basic@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4342">i915#4342</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@kms_pm_backlight@basic-brightness.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354">i915#5354</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-primary-page-flip:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@kms_psr@psr-primary-page-flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic-clone-single-crtc:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12311">i915#12311</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@kms_setmode@basic-clone-single-crtc.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-mmap:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +1 other test skip</li>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@prime_vgem@basic-fence-mmap.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-read:</p>
<ul>
<li>bat-dg1-7:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@prime_vgem@basic-fence-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@prime_vgem@basic-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-write:</p>
<ul>
<li>bat-dg1-6:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@prime_vgem@basic-write.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11723">i915#11723</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_create@basic@lmem0:</p>
<ul>
<li>bat-dg1-6:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/bat-dg1-6/igt@gem_exec_create@basic@lmem0.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759">i915#15759</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-6/igt@gem_exec_create@basic@lmem0.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>bat-dg1-7:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/bat-dg1-7/igt@gem_huc_copy@huc-copy.html">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg1-7/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>bat-dg2-9:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/bat-dg2-9/igt@gem_lmem_swapping@parallel-random-engines.html">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15759">i915#15759</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-dg2-9/igt@gem_lmem_swapping@parallel-random-engines.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@active:</p>
<ul>
<li>fi-bsw-nick:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/fi-bsw-nick/igt@i915_selftest@live@active.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14808">i915#14808</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/fi-bsw-nick/igt@i915_selftest@live@active.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-arls-5/igt@i915_selftest@live@workarounds.html">PASS</a> +1 other test pass</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live@gt_timelines:<ul>
<li>bat-arls-6:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18048/bat-arls-6/igt@i915_selftest@live@gt_timelines.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15738">i915#15738</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_162164v1/bat-arls-6/igt@i915_selftest@live@gt_timelines.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15738">i915#15738</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18048 -&gt; Patchwork_162164v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18048: 940d2c5064ed09bca924fd8aa017be99cc745b31 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8771: 8771<br />
  Patchwork_162164v1: 940d2c5064ed09bca924fd8aa017be99cc745b31 @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============6184794396190200831==--
