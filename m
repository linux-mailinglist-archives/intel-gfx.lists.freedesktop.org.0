Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2OKiOII9oGmrhAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 13:33:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10D521A5BB2
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Feb 2026 13:33:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47BF110E919;
	Thu, 26 Feb 2026 12:33:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5B4310E934;
 Thu, 26 Feb 2026 12:33:01 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============1779369424880363626=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/display=3A_Pane?=
 =?utf-8?q?l_Replay_BW_optimization_for_DP2=2E0_tunneling_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Animesh Manna" <animesh.manna@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Feb 2026 12:33:01 -0000
Message-ID: <177210918164.291502.2636178012280709031@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260224081009.3120480-1-animesh.manna@intel.com>
In-Reply-To: <20260224081009.3120480-1-animesh.manna@intel.com>
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
	NEURAL_HAM(-0.00)[-0.239];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[patchwork@emeril.freedesktop.org,intel-gfx-bounces@lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 10D521A5BB2
X-Rspamd-Action: no action

--===============1779369424880363626==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Panel Replay BW optimization for DP2.0 tunneling (rev4)
URL   : https://patchwork.freedesktop.org/series/158737/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_18022_full -> Patchwork_158737v4_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_158737v4_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_158737v4_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_158737v4_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_selftest@live@objects:
    - shard-dg2:          [PASS][1] -> [FAIL][2] +41 other tests fail
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-1/igt@i915_selftest@live@objects.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@i915_selftest@live@objects.html

  * igt@i915_suspend@basic-s2idle-without-i915:
    - shard-dg2:          [PASS][3] -> [WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@i915_suspend@basic-s2idle-without-i915.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@i915_suspend@basic-s2idle-without-i915.html

  * igt@perf@invalid-remove-userspace-config:
    - shard-dg2:          [PASS][5] -> [SKIP][6] +24 other tests skip
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@perf@invalid-remove-userspace-config.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@perf@invalid-remove-userspace-config.html

  * igt@perf_pmu@module-unload:
    - shard-glk:          NOTRUN -> [ABORT][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-glk4/igt@perf_pmu@module-unload.html

  
#### Warnings ####

  * igt@i915_drm_fdinfo@all-busy-check-all:
    - shard-dg2:          [SKIP][8] ([i915#14123]) -> [SKIP][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@i915_drm_fdinfo@all-busy-check-all.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@i915_drm_fdinfo@all-busy-check-all.html

  * igt@i915_drm_fdinfo@busy-check-all:
    - shard-dg2:          [SKIP][10] ([i915#11527]) -> [SKIP][11]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@i915_drm_fdinfo@busy-check-all.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@i915_drm_fdinfo@busy-check-all.html

  * igt@i915_drm_fdinfo@most-busy-idle-check-all:
    - shard-dg2:          [SKIP][12] ([i915#14073]) -> [SKIP][13] +1 other test skip
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-1/igt@i915_drm_fdinfo@most-busy-idle-check-all.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@i915_drm_fdinfo@most-busy-idle-check-all.html

  * igt@i915_drm_fdinfo@virtual-busy-all:
    - shard-dg2:          [SKIP][14] ([i915#14118]) -> [SKIP][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@i915_drm_fdinfo@virtual-busy-all.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@i915_drm_fdinfo@virtual-busy-all.html

  * igt@i915_module_load@resize-bar:
    - shard-dg2:          [DMESG-WARN][16] ([i915#14545]) -> [SKIP][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-7/igt@i915_module_load@resize-bar.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@i915_module_load@resize-bar.html

  * igt@i915_selftest@live@workarounds:
    - shard-dg2:          [DMESG-FAIL][18] ([i915#12061]) -> [FAIL][19] +1 other test fail
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-1/igt@i915_selftest@live@workarounds.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@i915_selftest@live@workarounds.html

  * igt@kms_pm_rpm@fences:
    - shard-dg2:          [SKIP][20] ([i915#4077]) -> [SKIP][21]
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_pm_rpm@fences.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_pm_rpm@fences.html

  * igt@kms_pm_rpm@modeset-lpsp:
    - shard-dg2:          [SKIP][22] ([i915#15073]) -> [SKIP][23]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-7/igt@kms_pm_rpm@modeset-lpsp.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp.html

  * igt@perf@global-sseu-config-invalid:
    - shard-dg2:          [SKIP][24] ([i915#7387]) -> [SKIP][25]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@perf@global-sseu-config-invalid.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@perf@global-sseu-config-invalid.html

  * igt@perf@mi-rpc:
    - shard-dg2:          [SKIP][26] ([i915#2434]) -> [SKIP][27]
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@perf@mi-rpc.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@perf@mi-rpc.html

  * igt@perf_pmu@busy-double-start:
    - shard-dg2:          [FAIL][28] ([i915#4349]) -> [SKIP][29]
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-7/igt@perf_pmu@busy-double-start.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@perf_pmu@busy-double-start.html

  
New tests
---------

  New tests have been introduced between CI_DRM_18022_full and Patchwork_158737v4_full:

### New IGT tests (52) ###

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-c-hdmi-a-2:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-2:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-3:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-3:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-3:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-hdmi-a-1:
    - Statuses : 1 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.13] s

  * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.05] s

  * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-hdmi-a-3:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-b-hdmi-a-1:
    - Statuses : 1 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.05] s

  * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.05] s

  * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-b-hdmi-a-3:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-c-hdmi-a-1:
    - Statuses : 2 skip(s)
    - Exec time: [0.0, 0.00] s

  * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-c-hdmi-a-2:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-c-hdmi-a-3:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-d-hdmi-a-1:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-d-hdmi-a-3:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:
    - Statuses : 1 skip(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3:
    - Statuses : 2 skip(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-3:
    - Statuses : 2 skip(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-3:
    - Statuses : 2 skip(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-3:
    - Statuses : 2 skip(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:
    - Statuses : 1 skip(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.62] s

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [2.43] s

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.51] s

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.93] s

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-2:
    - Statuses : 1 pass(s)
    - Exec time: [0.51] s

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.91] s

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-3:
    - Statuses : 1 skip(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-4:
    - Statuses : 1 pass(s)
    - Exec time: [0.90] s

  * igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2:
    - Statuses : 1 skip(s)
    - Exec time: [0.00] s

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-3:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-3:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-3:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_158737v4_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@cold-reset-bound:
    - shard-tglu:         NOTRUN -> [SKIP][30] ([i915#11078])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@device_reset@cold-reset-bound.html

  * igt@fbdev@eof:
    - shard-dg2:          [PASS][31] -> [SKIP][32] ([i915#2582]) +2 other tests skip
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@fbdev@eof.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@fbdev@eof.html

  * igt@gem_ccs@block-copy-compressed:
    - shard-tglu:         NOTRUN -> [SKIP][33] ([i915#3555] / [i915#9323])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@gem_ccs@block-copy-compressed.html

  * igt@gem_ccs@block-multicopy-compressed:
    - shard-rkl:          NOTRUN -> [SKIP][34] ([i915#9323])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@gem_ccs@block-multicopy-compressed.html

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:
    - shard-dg2:          NOTRUN -> [INCOMPLETE][35] ([i915#12392] / [i915#13356])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0.html

  * igt@gem_close_race@multigpu-basic-process:
    - shard-snb:          NOTRUN -> [SKIP][36] +68 other tests skip
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-snb7/igt@gem_close_race@multigpu-basic-process.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-rkl:          NOTRUN -> [SKIP][37] ([i915#6335])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_create@create-ext-set-pat:
    - shard-rkl:          NOTRUN -> [SKIP][38] ([i915#8562])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@gem_create@create-ext-set-pat.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-dg2:          [PASS][39] -> [SKIP][40] ([i915#15689] / [i915#2575]) +144 other tests skip
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-3/igt@gem_ctx_exec@basic-nohangcheck.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-glk:          NOTRUN -> [INCOMPLETE][41] ([i915#13356]) +1 other test incomplete
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-glk9/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_ctx_persistence@hang:
    - shard-snb:          NOTRUN -> [SKIP][42] ([i915#1099])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-snb7/igt@gem_ctx_persistence@hang.html

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-rkl:          NOTRUN -> [SKIP][43] ([i915#280])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-3/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-rkl:          NOTRUN -> [SKIP][44] ([i915#14544] / [i915#4525])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_balancer@parallel-out-fence:
    - shard-rkl:          NOTRUN -> [SKIP][45] ([i915#4525])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@gem_exec_balancer@parallel-out-fence.html

  * igt@gem_exec_reloc@basic-gtt-wc-noreloc:
    - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#3281]) +4 other tests skip
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-wc-noreloc.html

  * igt@gem_lmem_swapping@parallel-multi:
    - shard-tglu-1:       NOTRUN -> [SKIP][47] ([i915#4613]) +2 other tests skip
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@gem_lmem_swapping@parallel-multi.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-tglu:         NOTRUN -> [SKIP][48] ([i915#4613]) +2 other tests skip
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@random-engines:
    - shard-glk:          NOTRUN -> [SKIP][49] ([i915#4613]) +4 other tests skip
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-glk3/igt@gem_lmem_swapping@random-engines.html

  * igt@gem_mmap_offset@clear-via-pagefault:
    - shard-mtlp:         [PASS][50] -> [ABORT][51] ([i915#14809]) +1 other test abort
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-1/igt@gem_mmap_offset@clear-via-pagefault.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-mtlp-2/igt@gem_mmap_offset@clear-via-pagefault.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-rkl:          NOTRUN -> [SKIP][52] ([i915#3282]) +1 other test skip
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@gem_pwrite@basic-exhaustion.html
    - shard-glk:          NOTRUN -> [WARN][53] ([i915#14702] / [i915#2658])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-glk9/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
    - shard-glk10:        NOTRUN -> [SKIP][54] +22 other tests skip
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-glk10/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html

  * igt@gem_tiled_partial_pwrite_pread@writes:
    - shard-rkl:          NOTRUN -> [SKIP][55] ([i915#14544] / [i915#3282]) +1 other test skip
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@gem_tiled_partial_pwrite_pread@writes.html

  * igt@gem_userptr_blits@coherency-unsync:
    - shard-tglu-1:       NOTRUN -> [SKIP][56] ([i915#3297]) +1 other test skip
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@gem_userptr_blits@coherency-unsync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-tglu-1:       NOTRUN -> [SKIP][57] ([i915#3297] / [i915#3323])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-rkl:          NOTRUN -> [SKIP][58] ([i915#3297])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gen7_exec_parse@bitmasks:
    - shard-rkl:          NOTRUN -> [SKIP][59] ([i915#14544]) +3 other tests skip
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@gen7_exec_parse@bitmasks.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-glk:          NOTRUN -> [ABORT][60] ([i915#5566])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-glk6/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-tglu:         NOTRUN -> [SKIP][61] ([i915#2527] / [i915#2856])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-rkl:          NOTRUN -> [SKIP][62] ([i915#2527]) +1 other test skip
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@gen9_exec_parse@bb-oversize.html

  * igt@gen9_exec_parse@bb-start-cmd:
    - shard-tglu-1:       NOTRUN -> [SKIP][63] ([i915#2527] / [i915#2856]) +1 other test skip
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@gen9_exec_parse@bb-start-cmd.html

  * igt@i915_module_load@load:
    - shard-dg2:          ([PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75], [PASS][76], [PASS][77], [PASS][78], [PASS][79], [PASS][80], [PASS][81], [PASS][82], [PASS][83], [PASS][84], [PASS][85], [PASS][86], [PASS][87], [PASS][88]) -> ([PASS][89], [PASS][90], [PASS][91], [PASS][92], [PASS][93], [PASS][94], [PASS][95], [FAIL][96], [PASS][97], [FAIL][98], [PASS][99], [PASS][100], [PASS][101], [FAIL][102], [PASS][103], [FAIL][104], [PASS][105], [PASS][106], [PASS][107], [FAIL][108], [PASS][109], [PASS][110], [PASS][111], [FAIL][112], [PASS][113]) ([i915#15741])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-3/igt@i915_module_load@load.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-8/igt@i915_module_load@load.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@i915_module_load@load.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-6/igt@i915_module_load@load.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-5/igt@i915_module_load@load.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-7/igt@i915_module_load@load.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@i915_module_load@load.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-1/igt@i915_module_load@load.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@i915_module_load@load.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-7/igt@i915_module_load@load.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-6/igt@i915_module_load@load.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-5/igt@i915_module_load@load.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-4/igt@i915_module_load@load.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-8/igt@i915_module_load@load.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-1/igt@i915_module_load@load.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-6/igt@i915_module_load@load.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-4/igt@i915_module_load@load.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-5/igt@i915_module_load@load.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-8/igt@i915_module_load@load.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-1/igt@i915_module_load@load.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-3/igt@i915_module_load@load.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-3/igt@i915_module_load@load.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@i915_module_load@load.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-7/igt@i915_module_load@load.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-4/igt@i915_module_load@load.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-4/igt@i915_module_load@load.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-6/igt@i915_module_load@load.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-8/igt@i915_module_load@load.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-5/igt@i915_module_load@load.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-7/igt@i915_module_load@load.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-1/igt@i915_module_load@load.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-8/igt@i915_module_load@load.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@i915_module_load@load.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-4/igt@i915_module_load@load.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@i915_module_load@load.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-7/igt@i915_module_load@load.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-6/igt@i915_module_load@load.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-1/igt@i915_module_load@load.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@i915_module_load@load.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-3/igt@i915_module_load@load.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@i915_module_load@load.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-3/igt@i915_module_load@load.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-8/igt@i915_module_load@load.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-1/igt@i915_module_load@load.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@i915_module_load@load.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-5/igt@i915_module_load@load.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-3/igt@i915_module_load@load.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-6/igt@i915_module_load@load.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@i915_module_load@load.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-5/igt@i915_module_load@load.html

  * igt@i915_pm_freq_api@freq-basic-api:
    - shard-tglu-1:       NOTRUN -> [SKIP][114] ([i915#8399])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@i915_pm_freq_api@freq-basic-api.html

  * igt@i915_pm_freq_api@freq-suspend@gt0:
    - shard-dg2:          [PASS][115] -> [INCOMPLETE][116] ([i915#13356] / [i915#13820]) +1 other test incomplete
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-4/igt@i915_pm_freq_api@freq-suspend@gt0.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-1/igt@i915_pm_freq_api@freq-suspend@gt0.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-tglu:         NOTRUN -> [SKIP][117] ([i915#14498])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@system-suspend:
    - shard-dg2:          [PASS][118] -> [SKIP][119] ([i915#15693])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-1/igt@i915_pm_rpm@system-suspend.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@i915_pm_rpm@system-suspend.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-rkl:          [PASS][120] -> [INCOMPLETE][121] ([i915#4817])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-7/igt@i915_suspend@fence-restore-tiled2untiled.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-glk:          [PASS][122] -> [INCOMPLETE][123] ([i915#4817])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-glk1/igt@i915_suspend@fence-restore-untiled.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-glk8/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_addfb_basic@invalid-smem-bo-on-discrete:
    - shard-tglu-1:       NOTRUN -> [SKIP][124] ([i915#12454] / [i915#12712])
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_addfb_basic@invalid-smem-bo-on-discrete.html

  * igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3:
    - shard-dg2:          [PASS][125] -> [FAIL][126] ([i915#5956]) +1 other test fail
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-5/igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3.html

  * igt@kms_big_fb@4-tiled-64bpp-rotate-90:
    - shard-tglu-1:       NOTRUN -> [SKIP][127] ([i915#5286]) +2 other tests skip
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_big_fb@4-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-addfb:
    - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#5286]) +2 other tests skip
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_big_fb@4-tiled-addfb.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-tglu:         NOTRUN -> [SKIP][129] ([i915#5286]) +1 other test skip
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-4/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-rkl:          NOTRUN -> [SKIP][130] ([i915#3828])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][131] ([i915#3638])
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][132] ([i915#14098] / [i915#14544] / [i915#6095]) +8 other tests skip
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][133] ([i915#6095]) +155 other tests skip
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg1-14/igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][134] ([i915#6095]) +27 other tests skip
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-1/igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
    - shard-rkl:          NOTRUN -> [SKIP][135] ([i915#12805])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:
    - shard-tglu:         NOTRUN -> [SKIP][136] ([i915#6095]) +34 other tests skip
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-4/igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:
    - shard-glk:          NOTRUN -> [INCOMPLETE][137] ([i915#15582]) +1 other test incomplete
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-glk4/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2 (NEW):
    - shard-rkl:          NOTRUN -> [SKIP][138] ([i915#14098] / [i915#6095]) +35 other tests skip
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#10307] / [i915#6095]) +59 other tests skip
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html

  * igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-tglu-1:       NOTRUN -> [SKIP][140] ([i915#6095]) +29 other tests skip
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:
    - shard-tglu-1:       NOTRUN -> [SKIP][141] ([i915#12313])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs.html

  * igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2:
    - shard-rkl:          NOTRUN -> [SKIP][142] ([i915#14544] / [i915#6095]) +12 other tests skip
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][143] ([i915#6095]) +62 other tests skip
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1.html

  * igt@kms_chamelium_hpd@vga-hpd-after-suspend:
    - shard-tglu-1:       NOTRUN -> [SKIP][144] ([i915#11151] / [i915#7828]) +3 other tests skip
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd-after-suspend.html

  * igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:
    - shard-rkl:          NOTRUN -> [SKIP][145] ([i915#11151] / [i915#7828]) +3 other tests skip
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-3/igt@kms_chamelium_hpd@vga-hpd-for-each-pipe.html

  * igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:
    - shard-tglu:         NOTRUN -> [SKIP][146] ([i915#11151] / [i915#7828]) +5 other tests skip
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-4/igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][147] ([i915#6944] / [i915#7118] / [i915#9424])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-rkl:          NOTRUN -> [SKIP][148] ([i915#15330] / [i915#3116])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-lic-type-0-hdcp14:
    - shard-tglu-1:       NOTRUN -> [SKIP][149] ([i915#15330])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_content_protection@dp-mst-lic-type-0-hdcp14.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-tglu:         NOTRUN -> [SKIP][150] ([i915#15330] / [i915#3116] / [i915#3299])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-4/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@dp-mst-type-1-suspend-resume:
    - shard-rkl:          NOTRUN -> [SKIP][151] ([i915#15330])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-3/igt@kms_content_protection@dp-mst-type-1-suspend-resume.html

  * igt@kms_content_protection@lic-type-0-hdcp14:
    - shard-tglu-1:       NOTRUN -> [SKIP][152] ([i915#6944])
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_content_protection@lic-type-0-hdcp14.html

  * igt@kms_content_protection@lic-type-1:
    - shard-rkl:          NOTRUN -> [SKIP][153] ([i915#14544] / [i915#6944] / [i915#9424])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_content_protection@lic-type-1.html

  * igt@kms_content_protection@suspend-resume:
    - shard-tglu:         NOTRUN -> [SKIP][154] ([i915#6944])
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@kms_content_protection@suspend-resume.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#13049])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-onscreen-512x170:
    - shard-tglu-1:       NOTRUN -> [SKIP][156] ([i915#13049])
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_cursor_crc@cursor-onscreen-512x170.html

  * igt@kms_cursor_crc@cursor-onscreen-64x21:
    - shard-rkl:          [PASS][157] -> [FAIL][158] ([i915#13566]) +1 other test fail
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-64x21.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-64x21.html

  * igt@kms_cursor_crc@cursor-random-max-size:
    - shard-rkl:          NOTRUN -> [SKIP][159] ([i915#14544] / [i915#3555])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_cursor_crc@cursor-random-max-size.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-tglu:         NOTRUN -> [SKIP][160] ([i915#13049])
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
    - shard-rkl:          NOTRUN -> [SKIP][161] ([i915#4103]) +1 other test skip
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
    - shard-rkl:          NOTRUN -> [SKIP][162] +12 other tests skip
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-3/igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-glk:          NOTRUN -> [FAIL][163] ([i915#15764])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-rkl:          NOTRUN -> [SKIP][164] ([i915#14544] / [i915#4103])
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
    - shard-tglu-1:       NOTRUN -> [SKIP][165] ([i915#9723])
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html

  * igt@kms_dp_aux_dev:
    - shard-tglu-1:       NOTRUN -> [SKIP][166] ([i915#1257])
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_dp_aux_dev.html

  * igt@kms_dp_link_training@non-uhbr-sst:
    - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#13749])
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_dp_link_training@non-uhbr-sst.html

  * igt@kms_dsc@dsc-fractional-bpp-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][168] ([i915#3840])
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-3/igt@kms_dsc@dsc-fractional-bpp-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc:
    - shard-rkl:          NOTRUN -> [SKIP][169] ([i915#3555] / [i915#3840])
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_dsc@dsc-with-bpc.html

  * igt@kms_dsc@dsc-with-bpc-formats:
    - shard-tglu:         NOTRUN -> [SKIP][170] ([i915#3555] / [i915#3840])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-4/igt@kms_dsc@dsc-with-bpc-formats.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-rkl:          NOTRUN -> [SKIP][171] ([i915#14544] / [i915#3555] / [i915#3840])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#3955])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-3/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_feature_discovery@chamelium:
    - shard-tglu-1:       NOTRUN -> [SKIP][173] ([i915#2065] / [i915#4854])
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_feature_discovery@chamelium.html

  * igt@kms_feature_discovery@display-2x:
    - shard-tglu-1:       NOTRUN -> [SKIP][174] ([i915#1839])
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_feature_discovery@display-2x.html

  * igt@kms_flip@2x-flip-vs-dpms:
    - shard-tglu:         NOTRUN -> [SKIP][175] ([i915#3637] / [i915#9934]) +3 other tests skip
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-4/igt@kms_flip@2x-flip-vs-dpms.html

  * igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][176] ([i915#3637] / [i915#9934]) +1 other test skip
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible.html

  * igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible:
    - shard-tglu-1:       NOTRUN -> [SKIP][177] ([i915#9934])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible.html

  * igt@kms_flip@2x-flip-vs-panning-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][178] ([i915#14544] / [i915#9934])
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_flip@2x-flip-vs-panning-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-snb:          [PASS][179] -> [TIMEOUT][180] ([i915#14033] / [i915#14350])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:
    - shard-snb:          [PASS][181] -> [TIMEOUT][182] ([i915#14033])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1.html

  * igt@kms_flip@2x-plain-flip-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#9934]) +2 other tests skip
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_flip@2x-plain-flip-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank:
    - shard-dg2:          [PASS][184] -> [FAIL][185] ([i915#13027])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-6/igt@kms_flip@flip-vs-expired-vblank.html
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-5/igt@kms_flip@flip-vs-expired-vblank.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a3:
    - shard-dg2:          [PASS][186] -> [FAIL][187] ([i915#15745])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-6/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a3.html
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-5/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a3.html

  * igt@kms_flip@flip-vs-suspend:
    - shard-rkl:          [PASS][188] -> [INCOMPLETE][189] ([i915#6113])
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-5/igt@kms_flip@flip-vs-suspend.html
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_flip@flip-vs-suspend.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][190] ([i915#12745] / [i915#4839])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-glk10/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:
    - shard-glk10:        NOTRUN -> [INCOMPLETE][191] ([i915#12745])
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-glk10/igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@a-hdmi-a2:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][192] ([i915#6113])
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_flip@flip-vs-suspend@a-hdmi-a2.html

  * igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-tglu:         NOTRUN -> [SKIP][193] ([i915#15643]) +1 other test skip
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-4/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling:
    - shard-rkl:          NOTRUN -> [SKIP][194] ([i915#15643]) +1 other test skip
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
    - shard-tglu-1:       NOTRUN -> [SKIP][195] ([i915#15643]) +2 other tests skip
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-tglu-1:       NOTRUN -> [SKIP][196] +36 other tests skip
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:
    - shard-dg2:          NOTRUN -> [SKIP][197] ([i915#15689])
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc:
    - shard-rkl:          NOTRUN -> [SKIP][198] ([i915#14544] / [i915#15102])
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render:
    - shard-rkl:          NOTRUN -> [SKIP][199] ([i915#15102])
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][200] ([i915#14544] / [i915#1825]) +2 other tests skip
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
    - shard-tglu-1:       NOTRUN -> [SKIP][201] ([i915#5439])
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - shard-rkl:          NOTRUN -> [SKIP][202] ([i915#15102] / [i915#3023]) +9 other tests skip
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][203] ([i915#14544] / [i915#15102] / [i915#3023])
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt:
    - shard-tglu:         NOTRUN -> [SKIP][204] +32 other tests skip
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][205] ([i915#1825]) +13 other tests skip
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
    - shard-tglu-1:       NOTRUN -> [SKIP][206] ([i915#15102]) +13 other tests skip
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt:
    - shard-tglu:         NOTRUN -> [SKIP][207] ([i915#15102]) +8 other tests skip
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-4/igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt.html

  * igt@kms_getfb@getfb-handle-not-fb:
    - shard-dg1:          [PASS][208] -> [DMESG-WARN][209] ([i915#4423])
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg1-16/igt@kms_getfb@getfb-handle-not-fb.html
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg1-17/igt@kms_getfb@getfb-handle-not-fb.html

  * igt@kms_hdmi_inject@inject-audio:
    - shard-mtlp:         [PASS][210] -> [SKIP][211] ([i915#15725])
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-2/igt@kms_hdmi_inject@inject-audio.html
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-mtlp-1/igt@kms_hdmi_inject@inject-audio.html

  * igt@kms_hdr@brightness-with-hdr:
    - shard-tglu:         NOTRUN -> [SKIP][212] ([i915#12713])
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-4/igt@kms_hdr@brightness-with-hdr.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-tglu-1:       NOTRUN -> [SKIP][213] ([i915#3555] / [i915#8228])
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_hdr@static-swap:
    - shard-rkl:          NOTRUN -> [SKIP][214] ([i915#3555] / [i915#8228])
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_hdr@static-swap.html

  * igt@kms_joiner@basic-big-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][215] ([i915#15460])
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_joiner@basic-big-joiner.html

  * igt@kms_joiner@basic-max-non-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][216] ([i915#13688])
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_joiner@basic-max-non-joiner.html

  * igt@kms_joiner@invalid-modeset-force-big-joiner:
    - shard-rkl:          NOTRUN -> [SKIP][217] ([i915#15459])
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-3/igt@kms_joiner@invalid-modeset-force-big-joiner.html

  * igt@kms_joiner@invalid-modeset-ultra-joiner:
    - shard-tglu:         NOTRUN -> [SKIP][218] ([i915#15458])
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@kms_joiner@invalid-modeset-ultra-joiner.html

  * igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
    - shard-tglu-1:       NOTRUN -> [SKIP][219] ([i915#15638] / [i915#15722])
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner.html

  * igt@kms_plane@pixel-format-4-tiled-modifier:
    - shard-tglu:         NOTRUN -> [SKIP][220] ([i915#15709])
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@kms_plane@pixel-format-4-tiled-modifier.html

  * igt@kms_plane@pixel-format-4-tiled-modifier-source-clamping:
    - shard-tglu-1:       NOTRUN -> [SKIP][221] ([i915#15709]) +2 other tests skip
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_plane@pixel-format-4-tiled-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier-source-clamping:
    - shard-rkl:          NOTRUN -> [SKIP][222] ([i915#15709]) +1 other test skip
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-yf-tiled-modifier:
    - shard-rkl:          NOTRUN -> [SKIP][223] ([i915#14544] / [i915#15709])
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_plane@pixel-format-yf-tiled-modifier.html

  * igt@kms_plane_alpha_blend@constant-alpha-max:
    - shard-glk:          NOTRUN -> [FAIL][224] ([i915#10647] / [i915#12169])
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-glk3/igt@kms_plane_alpha_blend@constant-alpha-max.html

  * igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1:
    - shard-glk:          NOTRUN -> [FAIL][225] ([i915#10647]) +1 other test fail
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-glk3/igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1.html

  * igt@kms_plane_multiple@tiling-4:
    - shard-tglu:         NOTRUN -> [SKIP][226] ([i915#14259])
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@kms_plane_multiple@tiling-4.html

  * igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:
    - shard-rkl:          NOTRUN -> [SKIP][227] ([i915#15329]) +3 other tests skip
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:
    - shard-tglu:         NOTRUN -> [SKIP][228] ([i915#15329] / [i915#3555])
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation.html

  * igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b:
    - shard-tglu:         NOTRUN -> [SKIP][229] ([i915#15329]) +3 other tests skip
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-b.html

  * igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
    - shard-rkl:          NOTRUN -> [SKIP][230] ([i915#14544] / [i915#15329]) +3 other tests skip
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a.html

  * igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:
    - shard-tglu-1:       NOTRUN -> [SKIP][231] ([i915#15329]) +4 other tests skip
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d.html

  * igt@kms_plane_scaling@planes-scaler-unity-scaling:
    - shard-dg2:          [PASS][232] -> [SKIP][233] ([i915#15689] / [i915#9423]) +9 other tests skip
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_plane_scaling@planes-scaler-unity-scaling.html
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_plane_scaling@planes-scaler-unity-scaling.html

  * igt@kms_pm_backlight@fade:
    - shard-tglu-1:       NOTRUN -> [SKIP][234] ([i915#9812])
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_pm_backlight@fade.html

  * igt@kms_pm_dc@dc5-psr:
    - shard-rkl:          NOTRUN -> [SKIP][235] ([i915#9685])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-3/igt@kms_pm_dc@dc5-psr.html

  * igt@kms_pm_dc@dc5-retention-flops:
    - shard-tglu:         NOTRUN -> [SKIP][236] ([i915#3828])
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@kms_pm_dc@dc5-retention-flops.html

  * igt@kms_pm_dc@dc6-dpms:
    - shard-tglu-1:       NOTRUN -> [FAIL][237] ([i915#15752])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_pm_dc@dc6-dpms.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-rkl:          NOTRUN -> [SKIP][238] ([i915#8430])
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@dpms-lpsp:
    - shard-rkl:          [PASS][239] -> [SKIP][240] ([i915#15073]) +1 other test skip
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-8/igt@kms_pm_rpm@dpms-lpsp.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-7/igt@kms_pm_rpm@dpms-lpsp.html

  * igt@kms_pm_rpm@dpms-mode-unset-lpsp:
    - shard-dg2:          [PASS][241] -> [SKIP][242] ([i915#15073])
   [241]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [242]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
    - shard-rkl:          [PASS][243] -> [SKIP][244] ([i915#14544] / [i915#15073])
   [243]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html
   [244]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html

  * igt@kms_prime@d3hot:
    - shard-tglu:         NOTRUN -> [SKIP][245] ([i915#6524])
   [245]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@kms_prime@d3hot.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:
    - shard-tglu:         NOTRUN -> [SKIP][246] ([i915#11520]) +3 other tests skip
   [246]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-4/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:
    - shard-snb:          NOTRUN -> [SKIP][247] ([i915#11520])
   [247]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-snb7/igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf:
    - shard-rkl:          NOTRUN -> [SKIP][248] ([i915#11520] / [i915#14544]) +2 other tests skip
   [248]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:
    - shard-tglu-1:       NOTRUN -> [SKIP][249] ([i915#11520]) +6 other tests skip
   [249]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf.html

  * igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
    - shard-glk:          NOTRUN -> [SKIP][250] ([i915#11520]) +11 other tests skip
   [250]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-glk3/igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_sf@psr2-plane-move-sf-dmg-area:
    - shard-rkl:          NOTRUN -> [SKIP][251] ([i915#11520]) +3 other tests skip
   [251]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_psr2_sf@psr2-plane-move-sf-dmg-area.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-tglu:         NOTRUN -> [SKIP][252] ([i915#9683])
   [252]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-4/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-rkl:          NOTRUN -> [SKIP][253] ([i915#9683])
   [253]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-3/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr@fbc-pr-sprite-mmap-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][254] ([i915#1072] / [i915#14544] / [i915#9732]) +1 other test skip
   [254]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_psr@fbc-pr-sprite-mmap-gtt.html

  * igt@kms_psr@fbc-psr2-cursor-plane-move:
    - shard-tglu:         NOTRUN -> [SKIP][255] ([i915#9732]) +9 other tests skip
   [255]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@kms_psr@fbc-psr2-cursor-plane-move.html

  * igt@kms_psr@fbc-psr2-sprite-mmap-gtt:
    - shard-tglu-1:       NOTRUN -> [SKIP][256] ([i915#9732]) +11 other tests skip
   [256]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_psr@fbc-psr2-sprite-mmap-gtt.html

  * igt@kms_psr@psr-sprite-plane-onoff:
    - shard-rkl:          NOTRUN -> [SKIP][257] ([i915#1072] / [i915#9732]) +8 other tests skip
   [257]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-3/igt@kms_psr@psr-sprite-plane-onoff.html

  * igt@kms_psr@psr2-sprite-plane-onoff:
    - shard-glk:          NOTRUN -> [SKIP][258] +436 other tests skip
   [258]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-glk3/igt@kms_psr@psr2-sprite-plane-onoff.html

  * igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
    - shard-tglu-1:       NOTRUN -> [SKIP][259] ([i915#9685])
   [259]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html

  * igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:
    - shard-glk:          NOTRUN -> [INCOMPLETE][260] ([i915#15500])
   [260]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-glk6/igt@kms_rotation_crc@multiplane-rotation-cropping-bottom.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:
    - shard-tglu-1:       NOTRUN -> [SKIP][261] ([i915#5289]) +1 other test skip
   [261]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-tglu:         NOTRUN -> [SKIP][262] ([i915#5289])
   [262]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-rkl:          NOTRUN -> [SKIP][263] ([i915#5289])
   [263]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_scaling_modes@scaling-mode-center:
    - shard-tglu:         NOTRUN -> [SKIP][264] ([i915#3555]) +4 other tests skip
   [264]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@kms_scaling_modes@scaling-mode-center.html

  * igt@kms_scaling_modes@scaling-mode-full:
    - shard-rkl:          NOTRUN -> [SKIP][265] ([i915#3555])
   [265]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_scaling_modes@scaling-mode-full.html

  * igt@kms_setmode@clone-exclusive-crtc:
    - shard-tglu-1:       NOTRUN -> [SKIP][266] ([i915#3555]) +2 other tests skip
   [266]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_setmode@clone-exclusive-crtc.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-tglu-1:       NOTRUN -> [SKIP][267] ([i915#8623])
   [267]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_vblank@ts-continuation-idle-hang:
    - shard-dg2:          [PASS][268] -> [SKIP][269] ([i915#15689]) +196 other tests skip
   [268]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_vblank@ts-continuation-idle-hang.html
   [269]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_vblank@ts-continuation-idle-hang.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-rkl:          NOTRUN -> [SKIP][270] ([i915#9906])
   [270]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@seamless-rr-switch-virtual:
    - shard-tglu:         NOTRUN -> [SKIP][271] ([i915#9906])
   [271]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@kms_vrr@seamless-rr-switch-virtual.html

  * igt@kms_vrr@seamless-rr-switch-vrr:
    - shard-tglu-1:       NOTRUN -> [SKIP][272] ([i915#9906])
   [272]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_vrr@seamless-rr-switch-vrr.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-rkl:          NOTRUN -> [SKIP][273] ([i915#2436])
   [273]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@i915-ref-count:
    - shard-dg2:          [PASS][274] -> [SKIP][275] ([i915#15607]) +3 other tests skip
   [274]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@perf@i915-ref-count.html
   [275]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@perf@i915-ref-count.html

  * igt@perf_pmu@module-unload:
    - shard-tglu-1:       NOTRUN -> [ABORT][276] ([i915#13029])
   [276]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@perf_pmu@module-unload.html

  * igt@perf_pmu@rc6-all-gts:
    - shard-tglu-1:       NOTRUN -> [SKIP][277] ([i915#8516])
   [277]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@perf_pmu@rc6-all-gts.html

  * igt@perf_pmu@rc6-suspend:
    - shard-glk:          NOTRUN -> [INCOMPLETE][278] ([i915#13356] / [i915#14242])
   [278]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-glk1/igt@perf_pmu@rc6-suspend.html

  * igt@perf_pmu@rc6@other-idle-gt0:
    - shard-rkl:          NOTRUN -> [SKIP][279] ([i915#8516])
   [279]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@perf_pmu@rc6@other-idle-gt0.html

  * igt@prime_vgem@coherency-gtt:
    - shard-rkl:          NOTRUN -> [SKIP][280] ([i915#3708])
   [280]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@prime_vgem@coherency-gtt.html

  * igt@sriov_basic@bind-unbind-vf@vf-1:
    - shard-tglu-1:       NOTRUN -> [FAIL][281] ([i915#12910]) +9 other tests fail
   [281]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@sriov_basic@bind-unbind-vf@vf-1.html

  * igt@sriov_basic@enable-vfs-bind-unbind-each:
    - shard-rkl:          NOTRUN -> [SKIP][282] ([i915#9917])
   [282]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@sriov_basic@enable-vfs-bind-unbind-each.html

  
#### Possible fixes ####

  * igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [INCOMPLETE][283] ([i915#13356]) -> [PASS][284]
   [283]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html
   [284]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-4/igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html

  * igt@gem_exec_suspend@basic-s0@smem:
    - shard-rkl:          [INCOMPLETE][285] ([i915#13356]) -> [PASS][286] +2 other tests pass
   [285]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-3/igt@gem_exec_suspend@basic-s0@smem.html
   [286]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-3/igt@gem_exec_suspend@basic-s0@smem.html

  * igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
    - shard-rkl:          [ABORT][287] ([i915#15131]) -> [PASS][288]
   [287]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-1/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html
   [288]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@gem_pxp@verify-pxp-key-change-after-suspend-resume.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-tglu:         [WARN][289] ([i915#13790] / [i915#2681]) -> [PASS][290] +1 other test pass
   [289]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-tglu-8/igt@i915_pm_rc6_residency@rc6-fence.html
   [290]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-6/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rps@reset:
    - shard-snb:          [INCOMPLETE][291] ([i915#13821]) -> [PASS][292]
   [291]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-snb6/igt@i915_pm_rps@reset.html
   [292]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-snb7/igt@i915_pm_rps@reset.html

  * igt@kms_atomic@plane-invalid-params:
    - shard-dg1:          [DMESG-WARN][293] ([i915#4423]) -> [PASS][294] +1 other test pass
   [293]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg1-16/igt@kms_atomic@plane-invalid-params.html
   [294]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg1-17/igt@kms_atomic@plane-invalid-params.html

  * igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-1:
    - shard-tglu:         [FAIL][295] ([i915#13566]) -> [PASS][296] +1 other test pass
   [295]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-tglu-10/igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-1.html
   [296]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-9/igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-1.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1:
    - shard-snb:          [FAIL][297] ([i915#14600]) -> [PASS][298] +1 other test pass
   [297]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-snb6/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1.html
   [298]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-snb4/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render:
    - shard-snb:          [SKIP][299] -> [PASS][300] +22 other tests pass
   [299]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render.html
   [300]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-rkl:          [SKIP][301] ([i915#3555] / [i915#8228]) -> [PASS][302]
   [301]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-5/igt@kms_hdr@static-toggle-dpms.html
   [302]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc:
    - shard-rkl:          [INCOMPLETE][303] ([i915#12756] / [i915#13476]) -> [PASS][304]
   [303]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_pipe_crc_basic@suspend-read-crc.html
   [304]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_pipe_crc_basic@suspend-read-crc.html

  * igt@kms_pm_rpm@modeset-non-lpsp:
    - shard-rkl:          [SKIP][305] ([i915#15073]) -> [PASS][306]
   [305]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-8/igt@kms_pm_rpm@modeset-non-lpsp.html
   [306]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp.html

  * igt@kms_pm_rpm@modeset-non-lpsp-stress:
    - shard-dg2:          [SKIP][307] ([i915#15073]) -> [PASS][308]
   [307]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html
   [308]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.html

  
#### Warnings ####

  * igt@api_intel_bb@object-reloc-purge-cache:
    - shard-dg2:          [SKIP][309] ([i915#8411]) -> [SKIP][310] ([i915#15689] / [i915#2575])
   [309]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-7/igt@api_intel_bb@object-reloc-purge-cache.html
   [310]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@api_intel_bb@object-reloc-purge-cache.html

  * igt@drm_buddy@drm_buddy:
    - shard-rkl:          [SKIP][311] ([i915#15678]) -> [SKIP][312] ([i915#14544] / [i915#15678])
   [311]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-5/igt@drm_buddy@drm_buddy.html
   [312]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@drm_buddy@drm_buddy.html

  * igt@gem_ccs@block-multicopy-inplace:
    - shard-rkl:          [SKIP][313] ([i915#14544] / [i915#3555] / [i915#9323]) -> [SKIP][314] ([i915#3555] / [i915#9323])
   [313]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html
   [314]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@gem_ccs@block-multicopy-inplace.html

  * igt@gem_ccs@suspend-resume:
    - shard-rkl:          [SKIP][315] ([i915#14544] / [i915#9323]) -> [SKIP][316] ([i915#9323])
   [315]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@gem_ccs@suspend-resume.html
   [316]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@gem_ccs@suspend-resume.html

  * igt@gem_close_race@multigpu-basic-threads:
    - shard-dg2:          [SKIP][317] ([i915#7697]) -> [SKIP][318] ([i915#15689] / [i915#2575]) +1 other test skip
   [317]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@gem_close_race@multigpu-basic-threads.html
   [318]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_close_race@multigpu-basic-threads.html

  * igt@gem_create@create-ext-cpu-access-big:
    - shard-dg2:          [FAIL][319] ([i915#15454]) -> [SKIP][320] ([i915#15689] / [i915#2575])
   [319]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@gem_create@create-ext-cpu-access-big.html
   [320]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_create@create-ext-cpu-access-big.html

  * igt@gem_ctx_persistence@heartbeat-hang:
    - shard-dg2:          [SKIP][321] ([i915#8555]) -> [SKIP][322] ([i915#15689] / [i915#2575]) +1 other test skip
   [321]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-hang.html
   [322]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-hang.html

  * igt@gem_ctx_persistence@saturated-hostile-nopreempt:
    - shard-dg2:          [SKIP][323] ([i915#5882]) -> [SKIP][324] ([i915#15689] / [i915#2575])
   [323]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@gem_ctx_persistence@saturated-hostile-nopreempt.html
   [324]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_ctx_persistence@saturated-hostile-nopreempt.html

  * igt@gem_ctx_sseu@engines:
    - shard-dg2:          [SKIP][325] ([i915#280]) -> [SKIP][326] ([i915#15689] / [i915#2575])
   [325]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-1/igt@gem_ctx_sseu@engines.html
   [326]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_ctx_sseu@engines.html

  * igt@gem_exec_balancer@bonded-dual:
    - shard-dg2:          [SKIP][327] ([i915#4771]) -> [SKIP][328] ([i915#15689] / [i915#2575])
   [327]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@gem_exec_balancer@bonded-dual.html
   [328]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_exec_balancer@bonded-dual.html

  * igt@gem_exec_balancer@parallel-bb-first:
    - shard-rkl:          [SKIP][329] ([i915#4525]) -> [SKIP][330] ([i915#14544] / [i915#4525])
   [329]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-1/igt@gem_exec_balancer@parallel-bb-first.html
   [330]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@gem_exec_balancer@parallel-bb-first.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-rkl:          [SKIP][331] ([i915#14544] / [i915#4525]) -> [SKIP][332] ([i915#4525])
   [331]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@gem_exec_balancer@parallel-contexts.html
   [332]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_capture@capture-invisible:
    - shard-dg2:          [SKIP][333] ([i915#6334]) -> [SKIP][334] ([i915#15689] / [i915#2575])
   [333]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-7/igt@gem_exec_capture@capture-invisible.html
   [334]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_exec_capture@capture-invisible.html

  * igt@gem_exec_fence@submit3:
    - shard-dg2:          [SKIP][335] ([i915#4812]) -> [SKIP][336] ([i915#15689] / [i915#2575]) +1 other test skip
   [335]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@gem_exec_fence@submit3.html
   [336]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_exec_fence@submit3.html

  * igt@gem_exec_flush@basic-wb-ro-before-default:
    - shard-dg2:          [SKIP][337] ([i915#3539] / [i915#4852]) -> [SKIP][338] ([i915#15689] / [i915#2575]) +4 other tests skip
   [337]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@gem_exec_flush@basic-wb-ro-before-default.html
   [338]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_exec_flush@basic-wb-ro-before-default.html

  * igt@gem_exec_reloc@basic-gtt-cpu-active:
    - shard-dg2:          [SKIP][339] ([i915#3281]) -> [SKIP][340] ([i915#15689] / [i915#2575]) +13 other tests skip
   [339]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@gem_exec_reloc@basic-gtt-cpu-active.html
   [340]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_exec_reloc@basic-gtt-cpu-active.html

  * igt@gem_exec_reloc@basic-gtt-cpu-noreloc:
    - shard-rkl:          [SKIP][341] ([i915#14544] / [i915#3281]) -> [SKIP][342] ([i915#3281])
   [341]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html
   [342]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html

  * igt@gem_exec_reloc@basic-write-read-noreloc:
    - shard-rkl:          [SKIP][343] ([i915#3281]) -> [SKIP][344] ([i915#14544] / [i915#3281]) +1 other test skip
   [343]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-1/igt@gem_exec_reloc@basic-write-read-noreloc.html
   [344]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@gem_exec_reloc@basic-write-read-noreloc.html

  * igt@gem_exec_schedule@reorder-wide:
    - shard-dg2:          [SKIP][345] ([i915#4537] / [i915#4812]) -> [SKIP][346] ([i915#15689] / [i915#2575]) +1 other test skip
   [345]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-1/igt@gem_exec_schedule@reorder-wide.html
   [346]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_exec_schedule@reorder-wide.html

  * igt@gem_fence_thrash@bo-copy:
    - shard-dg2:          [SKIP][347] ([i915#4860]) -> [SKIP][348] ([i915#15689] / [i915#2575]) +2 other tests skip
   [347]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@gem_fence_thrash@bo-copy.html
   [348]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_fence_thrash@bo-copy.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-rkl:          [SKIP][349] ([i915#4613]) -> [SKIP][350] ([i915#14544] / [i915#4613]) +1 other test skip
   [349]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-5/igt@gem_lmem_swapping@parallel-random-engines.html
   [350]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-rkl:          [SKIP][351] ([i915#14544] / [i915#4613]) -> [SKIP][352] ([i915#4613])
   [351]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@gem_lmem_swapping@verify-random.html
   [352]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_media_fill@media-fill:
    - shard-dg2:          [SKIP][353] ([i915#8289]) -> [SKIP][354] ([i915#15689] / [i915#2575])
   [353]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-7/igt@gem_media_fill@media-fill.html
   [354]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_media_fill@media-fill.html

  * igt@gem_mmap_wc@bad-size:
    - shard-dg2:          [SKIP][355] ([i915#4083]) -> [SKIP][356] ([i915#15689] / [i915#2575]) +9 other tests skip
   [355]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-1/igt@gem_mmap_wc@bad-size.html
   [356]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_mmap_wc@bad-size.html

  * igt@gem_partial_pwrite_pread@reads:
    - shard-dg2:          [SKIP][357] ([i915#3282]) -> [SKIP][358] ([i915#15689] / [i915#2575]) +6 other tests skip
   [357]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-1/igt@gem_partial_pwrite_pread@reads.html
   [358]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_partial_pwrite_pread@reads.html

  * igt@gem_pxp@display-protected-crc:
    - shard-dg2:          [SKIP][359] ([i915#4270]) -> [SKIP][360] ([i915#15689] / [i915#2575]) +4 other tests skip
   [359]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-3/igt@gem_pxp@display-protected-crc.html
   [360]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_pxp@display-protected-crc.html

  * igt@gem_pxp@hw-rejects-pxp-buffer:
    - shard-rkl:          [SKIP][361] ([i915#13717] / [i915#14544]) -> [SKIP][362] ([i915#13717])
   [361]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-buffer.html
   [362]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@gem_pxp@hw-rejects-pxp-buffer.html

  * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
    - shard-dg2:          [SKIP][363] ([i915#5190] / [i915#8428]) -> [SKIP][364] ([i915#15689] / [i915#2575] / [i915#5190]) +7 other tests skip
   [363]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-7/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html
   [364]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html

  * igt@gem_set_tiling_vs_pwrite:
    - shard-rkl:          [SKIP][365] ([i915#3282]) -> [SKIP][366] ([i915#14544] / [i915#3282]) +3 other tests skip
   [365]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-1/igt@gem_set_tiling_vs_pwrite.html
   [366]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@gem_set_tiling_vs_pwrite.html
    - shard-dg2:          [SKIP][367] ([i915#4079]) -> [SKIP][368] ([i915#15689] / [i915#2575])
   [367]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@gem_set_tiling_vs_pwrite.html
   [368]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_set_tiling_vs_pwrite.html

  * igt@gem_tiled_partial_pwrite_pread@writes:
    - shard-dg2:          [SKIP][369] ([i915#4077]) -> [SKIP][370] ([i915#15689] / [i915#2575]) +18 other tests skip
   [369]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@gem_tiled_partial_pwrite_pread@writes.html
   [370]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_tiled_partial_pwrite_pread@writes.html

  * igt@gem_tiled_pread_basic@basic:
    - shard-dg2:          [SKIP][371] ([i915#15657]) -> [SKIP][372] ([i915#15689] / [i915#2575])
   [371]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@gem_tiled_pread_basic@basic.html
   [372]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_tiled_pread_basic@basic.html

  * igt@gem_userptr_blits@create-destroy-unsync:
    - shard-dg2:          [SKIP][373] ([i915#3297]) -> [SKIP][374] ([i915#15689] / [i915#2575]) +4 other tests skip
   [373]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-3/igt@gem_userptr_blits@create-destroy-unsync.html
   [374]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_userptr_blits@create-destroy-unsync.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-rkl:          [SKIP][375] ([i915#3297]) -> [SKIP][376] ([i915#14544] / [i915#3297])
   [375]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-5/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html
   [376]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap:
    - shard-dg2:          [SKIP][377] ([i915#3297] / [i915#4880]) -> [SKIP][378] ([i915#15689] / [i915#2575])
   [377]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-7/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html
   [378]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_userptr_blits@map-fixed-invalidate-overlap.html

  * igt@gen7_exec_parse@bitmasks:
    - shard-dg2:          [SKIP][379] -> [SKIP][380] ([i915#15689] / [i915#2575]) +8 other tests skip
   [379]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@gen7_exec_parse@bitmasks.html
   [380]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gen7_exec_parse@bitmasks.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-rkl:          [SKIP][381] ([i915#2527]) -> [SKIP][382] ([i915#14544] / [i915#2527])
   [381]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-5/igt@gen9_exec_parse@allowed-all.html
   [382]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@bb-start-param:
    - shard-dg2:          [SKIP][383] ([i915#2856]) -> [SKIP][384] ([i915#15689] / [i915#2575]) +3 other tests skip
   [383]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-3/igt@gen9_exec_parse@bb-start-param.html
   [384]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gen9_exec_parse@bb-start-param.html

  * igt@gen9_exec_parse@secure-batches:
    - shard-rkl:          [SKIP][385] ([i915#14544] / [i915#2527]) -> [SKIP][386] ([i915#2527]) +1 other test skip
   [385]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@gen9_exec_parse@secure-batches.html
   [386]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@gen9_exec_parse@secure-batches.html

  * igt@i915_pm_rps@min-max-config-idle:
    - shard-dg2:          [SKIP][387] ([i915#11681] / [i915#6621]) -> [SKIP][388] ([i915#15689] / [i915#2575])
   [387]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@i915_pm_rps@min-max-config-idle.html
   [388]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@i915_pm_rps@min-max-config-idle.html

  * igt@i915_query@hwconfig_table:
    - shard-rkl:          [SKIP][389] ([i915#6245]) -> [SKIP][390] ([i915#14544] / [i915#6245])
   [389]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-5/igt@i915_query@hwconfig_table.html
   [390]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@i915_query@hwconfig_table.html

  * igt@i915_query@query-topology-coherent-slice-mask:
    - shard-dg2:          [SKIP][391] ([i915#6188]) -> [SKIP][392] ([i915#15689] / [i915#2575])
   [391]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-1/igt@i915_query@query-topology-coherent-slice-mask.html
   [392]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@i915_query@query-topology-coherent-slice-mask.html

  * igt@intel_hwmon@hwmon-write:
    - shard-rkl:          [SKIP][393] ([i915#7707]) -> [SKIP][394] ([i915#14544] / [i915#7707])
   [393]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-5/igt@intel_hwmon@hwmon-write.html
   [394]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@intel_hwmon@hwmon-write.html

  * igt@kms_addfb_basic@clobberred-modifier:
    - shard-dg2:          [SKIP][395] ([i915#4212]) -> [SKIP][396] ([i915#15689]) +1 other test skip
   [395]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_addfb_basic@clobberred-modifier.html
   [396]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_addfb_basic@clobberred-modifier.html

  * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
    - shard-dg2:          [SKIP][397] ([i915#9531]) -> [SKIP][398] ([i915#15689])
   [397]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
   [398]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
    - shard-rkl:          [SKIP][399] ([i915#9531]) -> [SKIP][400] ([i915#14544] / [i915#9531])
   [399]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
   [400]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-rkl:          [SKIP][401] ([i915#14544] / [i915#5286]) -> [SKIP][402] ([i915#5286])
   [401]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html
   [402]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-rkl:          [SKIP][403] ([i915#5286]) -> [SKIP][404] ([i915#14544] / [i915#5286]) +3 other tests skip
   [403]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
   [404]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-dg2:          [SKIP][405] ([i915#3828]) -> [SKIP][406] ([i915#15689])
   [405]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html
   [406]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-rkl:          [SKIP][407] ([i915#3828]) -> [SKIP][408] ([i915#14544] / [i915#3828])
   [407]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-5/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html
   [408]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-270:
    - shard-rkl:          [SKIP][409] ([i915#14544] / [i915#3638]) -> [SKIP][410] ([i915#3638])
   [409]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html
   [410]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
    - shard-rkl:          [SKIP][411] -> [SKIP][412] ([i915#14544]) +6 other tests skip
   [411]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
   [412]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
    - shard-dg2:          [SKIP][413] ([i915#4538] / [i915#5190]) -> [SKIP][414] ([i915#15689] / [i915#5190]) +13 other tests skip
   [413]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-7/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html
   [414]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-addfb:
    - shard-dg2:          [SKIP][415] ([i915#5190]) -> [SKIP][416] ([i915#15689] / [i915#5190])
   [415]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_big_fb@yf-tiled-addfb.html
   [416]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_big_fb@yf-tiled-addfb.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-rkl:          [SKIP][417] ([i915#14544]) -> [SKIP][418]
   [417]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html
   [418]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          [SKIP][419] ([i915#14544] / [i915#6095]) -> [SKIP][420] ([i915#6095]) +3 other tests skip
   [419]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-2.html
   [420]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs:
    - shard-dg2:          [SKIP][421] ([i915#10307] / [i915#6095]) -> [SKIP][422] ([i915#15689]) +14 other tests skip
   [421]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html
   [422]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs.html

  * igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs:
    - shard-dg2:          [SKIP][423] ([i915#6095]) -> [SKIP][424] ([i915#15689]) +6 other tests skip
   [423]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-7/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs.html
   [424]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
    - shard-dg2:          [SKIP][425] ([i915#12313]) -> [SKIP][426] ([i915#15689]) +1 other test skip
   [425]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html
   [426]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs:
    - shard-dg2:          [SKIP][427] ([i915#10307] / [i915#10434] / [i915#6095]) -> [SKIP][428] ([i915#15689])
   [427]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs.html
   [428]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs.html

  * igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
    - shard-dg2:          [SKIP][429] ([i915#12805]) -> [SKIP][430] ([i915#15689]) +1 other test skip
   [429]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-1/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html
   [430]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.html

  * igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:
    - shard-rkl:          [SKIP][431] ([i915#14098] / [i915#6095]) -> [SKIP][432] ([i915#14098] / [i915#14544] / [i915#6095]) +8 other tests skip
   [431]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-1/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html
   [432]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:
    - shard-rkl:          [SKIP][433] ([i915#12313]) -> [SKIP][434] ([i915#12313] / [i915#14544])
   [433]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html
   [434]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:
    - shard-rkl:          [SKIP][435] ([i915#14098] / [i915#14544] / [i915#6095]) -> [SKIP][436] ([i915#14098] / [i915#6095]) +3 other tests skip
   [435]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html
   [436]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html

  * igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:
    - shard-rkl:          [SKIP][437] ([i915#6095]) -> [SKIP][438] ([i915#14544] / [i915#6095]) +2 other tests skip
   [437]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html
   [438]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html

  * igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:
    - shard-rkl:          [SKIP][439] ([i915#12313] / [i915#14544]) -> [SKIP][440] ([i915#12313])
   [439]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html
   [440]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-dg2:          [SKIP][441] ([i915#13781]) -> [SKIP][442] ([i915#15689])
   [441]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-1/igt@kms_cdclk@mode-transition.html
   [442]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium_color@degamma:
    - shard-dg2:          [SKIP][443] -> [SKIP][444] ([i915#15689]) +5 other tests skip
   [443]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-3/igt@kms_chamelium_color@degamma.html
   [444]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_chamelium_color@degamma.html

  * igt@kms_chamelium_edid@dp-edid-read:
    - shard-dg2:          [SKIP][445] ([i915#11151] / [i915#7828]) -> [SKIP][446] ([i915#15689]) +9 other tests skip
   [445]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_chamelium_edid@dp-edid-read.html
   [446]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_chamelium_edid@dp-edid-read.html

  * igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:
    - shard-rkl:          [SKIP][447] ([i915#11151] / [i915#14544] / [i915#7828]) -> [SKIP][448] ([i915#11151] / [i915#7828]) +1 other test skip
   [447]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html
   [448]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html

  * igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:
    - shard-rkl:          [SKIP][449] ([i915#11151] / [i915#7828]) -> [SKIP][450] ([i915#11151] / [i915#14544] / [i915#7828]) +3 other tests skip
   [449]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-5/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html
   [450]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_chamelium_edid@hdmi-edid-change-during-suspend.html

  * igt@kms_content_protection@dp-mst-lic-type-0:
    - shard-dg2:          [SKIP][451] ([i915#15330] / [i915#3299]) -> [SKIP][452] ([i915#15689])
   [451]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_content_protection@dp-mst-lic-type-0.html
   [452]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_content_protection@dp-mst-lic-type-0.html

  * igt@kms_content_protection@dp-mst-type-0-suspend-resume:
    - shard-rkl:          [SKIP][453] ([i915#14544] / [i915#15330]) -> [SKIP][454] ([i915#15330])
   [453]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html
   [454]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_content_protection@dp-mst-type-0-suspend-resume.html

  * igt@kms_content_protection@legacy:
    - shard-dg2:          [SKIP][455] ([i915#6944] / [i915#7118] / [i915#9424]) -> [SKIP][456] ([i915#15689])
   [455]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-3/igt@kms_content_protection@legacy.html
   [456]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_content_protection@legacy.html

  * igt@kms_content_protection@mei-interface:
    - shard-dg2:          [SKIP][457] ([i915#6944] / [i915#9424]) -> [SKIP][458] ([i915#15689]) +2 other tests skip
   [457]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-1/igt@kms_content_protection@mei-interface.html
   [458]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_content_protection@mei-interface.html

  * igt@kms_content_protection@type1:
    - shard-dg2:          [SKIP][459] ([i915#6944] / [i915#7118] / [i915#7162] / [i915#9424]) -> [SKIP][460] ([i915#15689])
   [459]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_content_protection@type1.html
   [460]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_content_protection@type1.html

  * igt@kms_content_protection@uevent-hdcp14:
    - shard-rkl:          [SKIP][461] ([i915#6944]) -> [SKIP][462] ([i915#14544] / [i915#6944])
   [461]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-5/igt@kms_content_protection@uevent-hdcp14.html
   [462]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_content_protection@uevent-hdcp14.html

  * igt@kms_cursor_crc@cursor-offscreen-512x170:
    - shard-dg2:          [SKIP][463] ([i915#13049]) -> [SKIP][464] ([i915#15689]) +2 other tests skip
   [463]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-7/igt@kms_cursor_crc@cursor-offscreen-512x170.html
   [464]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_cursor_crc@cursor-offscreen-512x170.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x10:
    - shard-rkl:          [SKIP][465] ([i915#3555]) -> [SKIP][466] ([i915#14544] / [i915#3555]) +2 other tests skip
   [465]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html
   [466]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-movement-32x10.html

  * igt@kms_cursor_crc@cursor-rapid-movement-32x32:
    - shard-dg2:          [SKIP][467] ([i915#3555]) -> [SKIP][468] ([i915#15689]) +2 other tests skip
   [467]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-7/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html
   [468]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_cursor_crc@cursor-rapid-movement-32x32.html

  * igt@kms_cursor_crc@cursor-sliding-512x170:
    - shard-rkl:          [SKIP][469] ([i915#13049]) -> [SKIP][470] ([i915#13049] / [i915#14544])
   [469]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-1/igt@kms_cursor_crc@cursor-sliding-512x170.html
   [470]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x170.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
    - shard-dg2:          [SKIP][471] ([i915#13046] / [i915#5354]) -> [SKIP][472] ([i915#15689]) +3 other tests skip
   [471]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
   [472]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
    - shard-dg2:          [SKIP][473] ([i915#4103] / [i915#4213]) -> [SKIP][474] ([i915#15689])
   [473]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html
   [474]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions.html

  * igt@kms_dirtyfb@psr-dirtyfb-ioctl:
    - shard-dg2:          [SKIP][475] ([i915#9833]) -> [SKIP][476] ([i915#15689])
   [475]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html
   [476]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html

  * igt@kms_dp_link_training@non-uhbr-mst:
    - shard-dg2:          [SKIP][477] ([i915#13749]) -> [SKIP][478] ([i915#15689])
   [477]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-1/igt@kms_dp_link_training@non-uhbr-mst.html
   [478]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_dp_link_training@non-uhbr-mst.html

  * igt@kms_dp_link_training@uhbr-mst:
    - shard-dg2:          [SKIP][479] ([i915#13748]) -> [SKIP][480] ([i915#15689])
   [479]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-3/igt@kms_dp_link_training@uhbr-mst.html
   [480]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_dp_link_training@uhbr-mst.html

  * igt@kms_dp_linktrain_fallback@dsc-fallback:
    - shard-rkl:          [SKIP][481] ([i915#13707] / [i915#14544]) -> [SKIP][482] ([i915#13707])
   [481]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_dp_linktrain_fallback@dsc-fallback.html
   [482]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_dp_linktrain_fallback@dsc-fallback.html

  * igt@kms_draw_crc@draw-method-mmap-wc:
    - shard-dg2:          [SKIP][483] ([i915#8812]) -> [SKIP][484] ([i915#15689])
   [483]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-7/igt@kms_draw_crc@draw-method-mmap-wc.html
   [484]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_draw_crc@draw-method-mmap-wc.html

  * igt@kms_dsc@dsc-fractional-bpp:
    - shard-dg2:          [SKIP][485] ([i915#3840] / [i915#9688]) -> [SKIP][486] ([i915#15689])
   [485]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_dsc@dsc-fractional-bpp.html
   [486]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_dsc@dsc-fractional-bpp.html

  * igt@kms_dsc@dsc-with-output-formats:
    - shard-dg2:          [SKIP][487] ([i915#3555] / [i915#3840]) -> [SKIP][488] ([i915#15689])
   [487]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_dsc@dsc-with-output-formats.html
   [488]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_dsc@dsc-with-output-formats.html

  * igt@kms_fbcon_fbt@psr:
    - shard-dg2:          [SKIP][489] ([i915#3469]) -> [SKIP][490] ([i915#15689])
   [489]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-1/igt@kms_fbcon_fbt@psr.html
   [490]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_fbcon_fbt@psr.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-rkl:          [SKIP][491] ([i915#9934]) -> [SKIP][492] ([i915#14544] / [i915#9934]) +1 other test skip
   [491]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-1/igt@kms_flip@2x-flip-vs-fences-interruptible.html
   [492]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_flip@2x-flip-vs-fences-interruptible.html
    - shard-dg2:          [SKIP][493] ([i915#8381]) -> [SKIP][494] ([i915#15689])
   [493]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_flip@2x-flip-vs-fences-interruptible.html
   [494]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@2x-flip-vs-modeset-vs-hang:
    - shard-rkl:          [SKIP][495] ([i915#14544] / [i915#9934]) -> [SKIP][496] ([i915#9934]) +4 other tests skip
   [495]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html
   [496]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html

  * igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
    - shard-dg2:          [SKIP][497] ([i915#9934]) -> [SKIP][498] ([i915#15689]) +11 other tests skip
   [497]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-3/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html
   [498]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
    - shard-dg2:          [SKIP][499] ([i915#15643] / [i915#5190]) -> [SKIP][500] ([i915#15689] / [i915#5190]) +3 other tests skip
   [499]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html
   [500]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:
    - shard-rkl:          [SKIP][501] ([i915#15643]) -> [SKIP][502] ([i915#14544] / [i915#15643]) +2 other tests skip
   [501]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html
   [502]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html

  * igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling:
    - shard-dg2:          [SKIP][503] ([i915#15643]) -> [SKIP][504] ([i915#15689]) +4 other tests skip
   [503]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html
   [504]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-mtlp:         [SKIP][505] ([i915#15672]) -> [SKIP][506]
   [505]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-mtlp-1/igt@kms_force_connector_basic@force-load-detect.html
   [506]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-mtlp-7/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:
    - shard-rkl:          [SKIP][507] ([i915#1825]) -> [SKIP][508] ([i915#14544] / [i915#1825]) +15 other tests skip
   [507]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html
   [508]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-rte:
    - shard-dg2:          [SKIP][509] ([i915#5354]) -> [SKIP][510] ([i915#15689]) +36 other tests skip
   [509]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-2p-rte.html
   [510]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-rte.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-dg1:          [SKIP][511] ([i915#4423] / [i915#8708]) -> [SKIP][512] ([i915#8708])
   [511]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html
   [512]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:
    - shard-dg1:          [SKIP][513] ([i915#15102] / [i915#3458] / [i915#4423]) -> [SKIP][514] ([i915#15102] / [i915#3458])
   [513]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html
   [514]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render:
    - shard-dg2:          [SKIP][515] ([i915#15102] / [i915#3458]) -> [SKIP][516] ([i915#15689]) +21 other tests skip
   [515]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render.html
   [516]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt:
    - shard-dg1:          [SKIP][517] ([i915#4423]) -> [SKIP][518]
   [517]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt.html
   [518]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:
    - shard-dg2:          [SKIP][519] ([i915#10055]) -> [SKIP][520] ([i915#15689])
   [519]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html
   [520]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-pwrite:
    - shard-dg2:          [SKIP][521] ([i915#15102]) -> [SKIP][522] ([i915#15689]) +2 other tests skip
   [521]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-pwrite.html
   [522]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-render:
    - shard-rkl:          [SKIP][523] ([i915#14544] / [i915#15102]) -> [SKIP][524] ([i915#15102]) +1 other test skip
   [523]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-render.html
   [524]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc:
    - shard-dg2:          [SKIP][525] ([i915#15104]) -> [SKIP][526] ([i915#15689]) +4 other tests skip
   [525]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc.html
   [526]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:
    - shard-dg2:          [SKIP][527] ([i915#15102] / [i915#3458]) -> [SKIP][528] ([i915#10433] / [i915#15102] / [i915#3458])
   [527]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html
   [528]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:
    - shard-dg2:          [SKIP][529] ([i915#10433] / [i915#15102] / [i915#3458]) -> [SKIP][530] ([i915#15102] / [i915#3458]) +2 other tests skip
   [529]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html
   [530]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
    - shard-rkl:          [SKIP][531] ([i915#14544] / [i915#15102] / [i915#3023]) -> [SKIP][532] ([i915#15102] / [i915#3023]) +4 other tests skip
   [531]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html
   [532]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt:
    - shard-dg2:          [SKIP][533] ([i915#8708]) -> [SKIP][534] ([i915#15689]) +17 other tests skip
   [533]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
   [534]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt:
    - shard-dg1:          [SKIP][535] -> [SKIP][536] ([i915#4423])
   [535]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt.html
   [536]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
    - shard-rkl:          [SKIP][537] ([i915#14544] / [i915#1825]) -> [SKIP][538] ([i915#1825]) +9 other tests skip
   [537]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html
   [538]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
    - shard-rkl:          [SKIP][539] ([i915#15102] / [i915#3023]) -> [SKIP][540] ([i915#14544] / [i915#15102] / [i915#3023]) +6 other tests skip
   [539]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html
   [540]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html

  * igt@kms_hdr@invalid-hdr:
    - shard-rkl:          [SKIP][541] ([i915#3555] / [i915#8228]) -> [SKIP][542] ([i915#14544] / [i915#3555] / [i915#8228])
   [541]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-5/igt@kms_hdr@invalid-hdr.html
   [542]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_hdr@invalid-hdr.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-dg2:          [SKIP][543] ([i915#3555] / [i915#8228]) -> [SKIP][544] ([i915#15689])
   [543]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-7/igt@kms_hdr@static-toggle-suspend.html
   [544]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_joiner@invalid-modeset-force-ultra-joiner:
    - shard-dg2:          [SKIP][545] ([i915#15458]) -> [SKIP][546] ([i915#15689])
   [545]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
   [546]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
    - shard-rkl:          [SKIP][547] ([i915#14544] / [i915#15458]) -> [SKIP][548] ([i915#15458]) +1 other test skip
   [547]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html
   [548]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html

  * igt@kms_pipe_stress@stress-xrgb8888-yftiled:
    - shard-rkl:          [SKIP][549] ([i915#14712]) -> [SKIP][550] ([i915#14544] / [i915#14712])
   [549]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-5/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html
   [550]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html

  * igt@kms_pipe_stress@stress-xrgb8888-ytiled:
    - shard-dg2:          [SKIP][551] ([i915#13705]) -> [SKIP][552] ([i915#15689])
   [551]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-7/igt@kms_pipe_stress@stress-xrgb8888-ytiled.html
   [552]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_pipe_stress@stress-xrgb8888-ytiled.html

  * igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier:
    - shard-dg2:          [SKIP][553] ([i915#15709]) -> [SKIP][554] ([i915#15689]) +6 other tests skip
   [553]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-1/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier.html
   [554]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier.html

  * igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source-clamping:
    - shard-rkl:          [SKIP][555] ([i915#14544] / [i915#15709]) -> [SKIP][556] ([i915#15709]) +1 other test skip
   [555]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source-clamping.html
   [556]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source-clamping.html

  * igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier:
    - shard-rkl:          [SKIP][557] ([i915#15709]) -> [SKIP][558] ([i915#14544] / [i915#15709])
   [557]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-5/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier.html
   [558]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier.html

  * igt@kms_plane_multiple@2x-tiling-4:
    - shard-dg2:          [SKIP][559] ([i915#13958]) -> [SKIP][560] ([i915#15689]) +2 other tests skip
   [559]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_plane_multiple@2x-tiling-4.html
   [560]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_plane_multiple@2x-tiling-4.html
    - shard-rkl:          [SKIP][561] ([i915#13958]) -> [SKIP][562] ([i915#13958] / [i915#14544])
   [561]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-1/igt@kms_plane_multiple@2x-tiling-4.html
   [562]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-4.html

  * igt@kms_plane_multiple@tiling-yf:
    - shard-dg2:          [SKIP][563] ([i915#14259]) -> [SKIP][564] ([i915#15689])
   [563]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-3/igt@kms_plane_multiple@tiling-yf.html
   [564]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_plane_multiple@tiling-yf.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          [SKIP][565] ([i915#6953] / [i915#9423]) -> [SKIP][566] ([i915#15689] / [i915#9423])
   [565]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-3/igt@kms_plane_scaling@intel-max-src-size.html
   [566]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
    - shard-rkl:          [SKIP][567] ([i915#15329]) -> [SKIP][568] ([i915#14544] / [i915#15329]) +3 other tests skip
   [567]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-1/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html
   [568]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html

  * igt@kms_pm_backlight@basic-brightness:
    - shard-rkl:          [SKIP][569] ([i915#14544] / [i915#5354]) -> [SKIP][570] ([i915#5354]) +1 other test skip
   [569]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_pm_backlight@basic-brightness.html
   [570]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_pm_backlight@basic-brightness.html

  * igt@kms_pm_lpsp@kms-lpsp:
    - shard-dg2:          [SKIP][571] ([i915#9340]) -> [SKIP][572] ([i915#15689])
   [571]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-7/igt@kms_pm_lpsp@kms-lpsp.html
   [572]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_pm_lpsp@kms-lpsp.html

  * igt@kms_pm_lpsp@screens-disabled:
    - shard-dg2:          [SKIP][573] ([i915#8430]) -> [SKIP][574] ([i915#15689])
   [573]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_pm_lpsp@screens-disabled.html
   [574]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_pm_lpsp@screens-disabled.html

  * igt@kms_pm_rpm@fences:
    - shard-dg1:          [SKIP][575] ([i915#4077] / [i915#4423]) -> [SKIP][576] ([i915#4077])
   [575]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg1-12/igt@kms_pm_rpm@fences.html
   [576]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg1-12/igt@kms_pm_rpm@fences.html

  * igt@kms_pm_rpm@pm-tiling:
    - shard-dg2:          [SKIP][577] ([i915#4077]) -> [SKIP][578] ([i915#15693])
   [577]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_pm_rpm@pm-tiling.html
   [578]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_pm_rpm@pm-tiling.html

  * igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:
    - shard-rkl:          [SKIP][579] ([i915#11520] / [i915#14544]) -> [SKIP][580] ([i915#11520]) +1 other test skip
   [579]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html
   [580]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:
    - shard-rkl:          [SKIP][581] ([i915#11520]) -> [SKIP][582] ([i915#11520] / [i915#14544]) +3 other tests skip
   [581]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-5/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html
   [582]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:
    - shard-dg2:          [SKIP][583] ([i915#11520]) -> [SKIP][584] ([i915#15689]) +11 other tests skip
   [583]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-3/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html
   [584]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-dg2:          [SKIP][585] ([i915#9683]) -> [SKIP][586] ([i915#15689])
   [585]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_psr2_su@page_flip-xrgb8888.html
   [586]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@fbc-psr-cursor-mmap-gtt:
    - shard-dg1:          [SKIP][587] ([i915#1072] / [i915#4423] / [i915#9732]) -> [SKIP][588] ([i915#1072] / [i915#9732])
   [587]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg1-12/igt@kms_psr@fbc-psr-cursor-mmap-gtt.html
   [588]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg1-17/igt@kms_psr@fbc-psr-cursor-mmap-gtt.html

  * igt@kms_psr@psr-cursor-mmap-cpu:
    - shard-dg2:          [SKIP][589] ([i915#1072] / [i915#9732]) -> [SKIP][590] ([i915#15689]) +29 other tests skip
   [589]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-7/igt@kms_psr@psr-cursor-mmap-cpu.html
   [590]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_psr@psr-cursor-mmap-cpu.html

  * igt@kms_psr@psr-cursor-plane-move:
    - shard-rkl:          [SKIP][591] ([i915#1072] / [i915#14544] / [i915#9732]) -> [SKIP][592] ([i915#1072] / [i915#9732]) +6 other tests skip
   [591]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_psr@psr-cursor-plane-move.html
   [592]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_psr@psr-cursor-plane-move.html

  * igt@kms_psr@psr2-sprite-mmap-cpu:
    - shard-rkl:          [SKIP][593] ([i915#1072] / [i915#9732]) -> [SKIP][594] ([i915#1072] / [i915#14544] / [i915#9732]) +7 other tests skip
   [593]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-1/igt@kms_psr@psr2-sprite-mmap-cpu.html
   [594]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_psr@psr2-sprite-mmap-cpu.html

  * igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
    - shard-dg2:          [SKIP][595] ([i915#9685]) -> [SKIP][596] ([i915#15689])
   [595]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-7/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html
   [596]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_psr_stress_test@flip-primary-invalidate-overlay.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
    - shard-dg2:          [SKIP][597] ([i915#12755] / [i915#5190]) -> [SKIP][598] ([i915#15689] / [i915#5190]) +1 other test skip
   [597]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html
   [598]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - shard-dg2:          [SKIP][599] ([i915#12755]) -> [SKIP][600] ([i915#15689])
   [599]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-3/igt@kms_rotation_crc@sprite-rotation-270.html
   [600]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-270.html

  * igt@kms_vrr@flip-basic-fastset:
    - shard-dg2:          [SKIP][601] ([i915#9906]) -> [SKIP][602] ([i915#15689])
   [601]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@kms_vrr@flip-basic-fastset.html
   [602]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_vrr@flip-basic-fastset.html

  * igt@kms_vrr@seamless-rr-switch-drrs:
    - shard-rkl:          [SKIP][603] ([i915#14544] / [i915#9906]) -> [SKIP][604] ([i915#9906])
   [603]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-drrs.html
   [604]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_vrr@seamless-rr-switch-drrs.html

  * igt@prime_mmap@test_aperture_limit:
    - shard-dg2:          [SKIP][605] ([i915#14121]) -> [SKIP][606] ([i915#15689] / [i915#2575])
   [605]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-1/igt@prime_mmap@test_aperture_limit.html
   [606]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@prime_mmap@test_aperture_limit.html

  * igt@prime_vgem@basic-gtt:
    - shard-dg2:          [SKIP][607] ([i915#3708] / [i915#4077]) -> [SKIP][608] ([i915#15689] / [i915#2575])
   [607]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@prime_vgem@basic-gtt.html
   [608]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@prime_vgem@basic-gtt.html

  * igt@prime_vgem@basic-read:
    - shard-rkl:          [SKIP][609] ([i915#14544] / [i915#3291] / [i915#3708]) -> [SKIP][610] ([i915#3291] / [i915#3708])
   [609]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-rkl-6/igt@prime_vgem@basic-read.html
   [610]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@prime_vgem@basic-read.html

  * igt@prime_vgem@fence-write-hang:
    - shard-dg2:          [SKIP][611] ([i915#3708]) -> [SKIP][612] ([i915#15689] / [i915#2575])
   [611]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@prime_vgem@fence-write-hang.html
   [612]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@prime_vgem@fence-write-hang.html

  * igt@sriov_basic@enable-vfs-autoprobe-off:
    - shard-dg2:          [SKIP][613] ([i915#9917]) -> [SKIP][614] ([i915#15689]) +1 other test skip
   [613]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-3/igt@sriov_basic@enable-vfs-autoprobe-off.html
   [614]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@sriov_basic@enable-vfs-autoprobe-off.html

  * igt@tools_test@sysfs_l3_parity:
    - shard-dg2:          [SKIP][615] ([i915#4818]) -> [SKIP][616] ([i915#15689] / [i915#2575] / [i915#4818])
   [615]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@tools_test@sysfs_l3_parity.html
   [616]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@tools_test@sysfs_l3_parity.html

  
  [i915#10055]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10055
  [i915#10307]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307
  [i915#10433]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433
  [i915#10434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10434
  [i915#10647]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10647
  [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1099
  [i915#11078]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078
  [i915#11151]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151
  [i915#11520]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520
  [i915#11527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11527
  [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#12169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12169
  [i915#12313]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313
  [i915#12392]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392
  [i915#12454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12454
  [i915#1257]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1257
  [i915#12712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12712
  [i915#12713]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713
  [i915#12745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12745
  [i915#12755]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12755
  [i915#12756]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12756
  [i915#12805]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805
  [i915#12910]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910
  [i915#13027]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027
  [i915#13029]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13029
  [i915#13046]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13046
  [i915#13049]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049
  [i915#13356]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356
  [i915#13476]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13476
  [i915#13566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566
  [i915#13688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13688
  [i915#13705]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13705
  [i915#13707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13707
  [i915#13717]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717
  [i915#13748]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748
  [i915#13749]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13749
  [i915#13781]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781
  [i915#13790]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13790
  [i915#13820]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13820
  [i915#13821]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821
  [i915#13958]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958
  [i915#14033]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14033
  [i915#14073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073
  [i915#14098]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098
  [i915#14118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14118
  [i915#14121]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14121
  [i915#14123]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14123
  [i915#14242]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14242
  [i915#14259]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259
  [i915#14350]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14350
  [i915#14498]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14498
  [i915#14544]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544
  [i915#14545]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14545
  [i915#14600]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14600
  [i915#14702]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14702
  [i915#14712]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14712
  [i915#14809]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14809
  [i915#15073]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073
  [i915#15102]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102
  [i915#15104]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15104
  [i915#15131]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15131
  [i915#15329]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329
  [i915#15330]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330
  [i915#15454]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15454
  [i915#15458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15458
  [i915#15459]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15459
  [i915#15460]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15460
  [i915#15500]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15500
  [i915#15582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15582
  [i915#15607]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15607
  [i915#15638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15638
  [i915#15643]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643
  [i915#15657]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15657
  [i915#15672]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15672
  [i915#15678]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15678
  [i915#15689]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689
  [i915#15693]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15693
  [i915#15709]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709
  [i915#15722]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15722
  [i915#15725]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15725
  [i915#15741]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15741
  [i915#15745]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15745
  [i915#15752]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15752
  [i915#15764]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15764
  [i915#1825]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825
  [i915#1839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839
  [i915#2065]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2065
  [i915#2434]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434
  [i915#2436]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2436
  [i915#2527]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527
  [i915#2575]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575
  [i915#2582]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2582
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
  [i915#3299]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299
  [i915#3323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3323
  [i915#3458]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458
  [i915#3469]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469
  [i915#3539]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
  [i915#3637]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637
  [i915#3638]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638
  [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
  [i915#3828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828
  [i915#3840]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840
  [i915#3955]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3955
  [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
  [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
  [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
  [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
  [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
  [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
  [i915#4270]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270
  [i915#4349]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349
  [i915#4423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423
  [i915#4525]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538
  [i915#4613]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613
  [i915#4771]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771
  [i915#4812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812
  [i915#4817]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817
  [i915#4818]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4818
  [i915#4839]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4839
  [i915#4852]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4852
  [i915#4854]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854
  [i915#4860]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860
  [i915#4880]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4880
  [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
  [i915#5286]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286
  [i915#5289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5289
  [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
  [i915#5439]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5439
  [i915#5566]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5566
  [i915#5882]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5882
  [i915#5956]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956
  [i915#6095]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095
  [i915#6113]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113
  [i915#6188]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6188
  [i915#6245]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245
  [i915#6334]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6334
  [i915#6335]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6335
  [i915#6524]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6524
  [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
  [i915#6944]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944
  [i915#6953]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953
  [i915#7118]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118
  [i915#7162]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7162
  [i915#7387]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387
  [i915#7697]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707
  [i915#7828]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828
  [i915#8228]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228
  [i915#8289]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8289
  [i915#8381]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8381
  [i915#8399]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8399
  [i915#8411]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411
  [i915#8428]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428
  [i915#8430]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430
  [i915#8516]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516
  [i915#8555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8555
  [i915#8562]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8562
  [i915#8623]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8623
  [i915#8708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708
  [i915#8812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812
  [i915#9323]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323
  [i915#9340]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340
  [i915#9423]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9423
  [i915#9424]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424
  [i915#9531]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9531
  [i915#9683]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683
  [i915#9685]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685
  [i915#9688]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9688
  [i915#9723]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9723
  [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
  [i915#9812]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9812
  [i915#9833]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833
  [i915#9906]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906
  [i915#9917]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917
  [i915#9934]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934


Build changes
-------------

  * Linux: CI_DRM_18022 -> Patchwork_158737v4

  CI-20190529: 20190529
  CI_DRM_18022: 45a3045fc0dc46a893cb8bbe304afafd4120c904 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8765: 8765
  Patchwork_158737v4: 45a3045fc0dc46a893cb8bbe304afafd4120c904 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/index.html

--===============1779369424880363626==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Panel Replay BW optimizati=
on for DP2.0 tunneling (rev4)</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/158737/">https://patchwork.freedesktop.org/series/158737/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_158737v4/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_158737v4/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18022_full -&gt; Patchwork_158737v=
4_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_158737v4_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_158737v4_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
158737v4_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_selftest@live@objects:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-1/igt@i915_selftest@live@objects.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/s=
hard-dg2-11/igt@i915_selftest@live@objects.html">FAIL</a> +41 other tests f=
ail</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s2idle-without-i915:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@i915_suspend@basic-s2idle-without-i915.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_158737v4/shard-dg2-11/igt@i915_suspend@basic-s2idle-without-i915.html">W=
ARN</a></li>
</ul>
</li>
<li>
<p>igt@perf@invalid-remove-userspace-config:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@perf@invalid-remove-userspace-config.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_158737v4/shard-dg2-11/igt@perf@invalid-remove-userspace-config.html">SKIP<=
/a> +24 other tests skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-glk4/igt@perf_pmu@module-unload.html=
">ABORT</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_drm_fdinfo@all-busy-check-all:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@i915_drm_fdinfo@all-busy-check-all.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4123">i915#14123</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_158737v4/shard-dg2-11/igt@i915_drm_fdinfo@all-busy-check-all=
.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@busy-check-all:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@i915_drm_fdinfo@busy-check-all.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11527=
">i915#11527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_158737v4/shard-dg2-11/igt@i915_drm_fdinfo@busy-check-all.html">S=
KIP</a></li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@most-busy-idle-check-all:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-1/igt@i915_drm_fdinfo@most-busy-idle-check-all.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/14073">i915#14073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@i915_drm_fdinfo@most-busy-idl=
e-check-all.html">SKIP</a> +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_drm_fdinfo@virtual-busy-all:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@i915_drm_fdinfo@virtual-busy-all.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/141=
18">i915#14118</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_158737v4/shard-dg2-11/igt@i915_drm_fdinfo@virtual-busy-all.htm=
l">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-7/igt@i915_module_load@resize-bar.html">DMESG-WARN<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
45">i915#14545</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_158737v4/shard-dg2-11/igt@i915_module_load@resize-bar.html">SK=
IP</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-1/igt@i915_selftest@live@workarounds.html">DMESG-FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
12061">i915#12061</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_158737v4/shard-dg2-11/igt@i915_selftest@live@workarounds.ht=
ml">FAIL</a> +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@fences:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_pm_rpm@fences.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1587=
37v4/shard-dg2-11/igt@kms_pm_rpm@fences.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-7/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#1=
5073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_158737v4/shard-dg2-11/igt@kms_pm_rpm@modeset-lpsp.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config-invalid:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@perf@global-sseu-config-invalid.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7387=
">i915#7387</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_158737v4/shard-dg2-11/igt@perf@global-sseu-config-invalid.html">S=
KIP</a></li>
</ul>
</li>
<li>
<p>igt@perf@mi-rpc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@perf@mi-rpc.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2434">i915#2434</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/s=
hard-dg2-11/igt@perf@mi-rpc.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@busy-double-start:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-7/igt@perf_pmu@busy-double-start.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4349">i915=
#4349</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_158737v4/shard-dg2-11/igt@perf_pmu@busy-double-start.html">SKIP</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_18022_full and Patchwork_1=
58737v4_full:</p>
<h3>New IGT tests (52)</h3>
<ul>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-c-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-rc-ccs-cc@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-yf-tiled-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-4-tiled-mtl-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.13] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-b-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.05] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-b-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-c-hdmi-a-1:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0, 0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-c-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-d-hdmi-a-1:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-yf-tiled-ccs@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-4:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-3:=
</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-3:=
</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-3:=
</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-d-hdmi-a-3:=
</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2:<=
/p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-2=
:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.62] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-3=
:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-a-hdmi-a-4=
:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [2.43] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-2=
:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.51] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-3=
:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-b-hdmi-a-4=
:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.93] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-2=
:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.51] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-3=
:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-c-hdmi-a-4=
:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.91] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-3=
:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-4=
:</p>
<ul>
<li>Statuses : 1 pass(s)</li>
<li>Exec time: [0.90] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-dg2-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>Statuses : 1 skip(s)</li>
<li>Exec time: [0.00] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-b-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-c-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-d-hdmi-a-3:</p>
<ul>
<li>Statuses : 2 skip(s)</li>
<li>Exec time: [0.0] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_158737v4_full that come from kno=
wn issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@device_reset@cold-reset-b=
ound.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11078">i915#11078</a>)</li>
</ul>
</li>
<li>
<p>igt@fbdev@eof:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@fbdev@eof.html">PASS</a> -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@=
fbdev@eof.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/2582">i915#2582</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-copy-compressed:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@gem_ccs@block-copy-compre=
ssed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-compressed:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@gem_ccs@block-multicopy-co=
mpressed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-lmem0-lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-dg2-4/igt@gem_ccs@suspend-resume@lin=
ear-compressed-compfmt0-lmem0-lmem0.html">INCOMPLETE</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/12392">i915#12392</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356">i9=
15#13356</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-snb7/igt@gem_close_race@multigpu-bas=
ic-process.html">SKIP</a> +68 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@gem_create@create-ext-cpu-=
access-big.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/6335">i915#6335</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-set-pat:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@gem_create@create-ext-set-=
pat.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/8562">i915#8562</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-3/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737=
v4/shard-dg2-11/igt@gem_ctx_exec@basic-nohangcheck.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i915#156=
89</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/2575">i915#2575</a>) +144 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-glk9/igt@gem_ctx_isolation@preservat=
ion-s3@rcs0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/13356">i915#13356</a>) +1 other test incomplete</=
li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-snb7/igt@gem_ctx_persistence@hang.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@invalid-sseu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-3/igt@gem_ctx_sseu@invalid-sseu.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/280">i915#280</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@gem_exec_balancer@parallel=
-keep-submit-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-out-fence:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@gem_exec_balancer@parallel=
-out-fence.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-wc-noreloc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@gem_exec_reloc@basic-gtt-w=
c-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3281">i915#3281</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-multi:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@gem_lmem_swapping@paralle=
l-multi.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@gem_lmem_swapping@paralle=
l-random-verify.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4613">i915#4613</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@random-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-glk3/igt@gem_lmem_swapping@random-en=
gines.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/4613">i915#4613</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear-via-pagefault:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-mtlp-1/igt@gem_mmap_offset@clear-via-pagefault.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
158737v4/shard-mtlp-2/igt@gem_mmap_offset@clear-via-pagefault.html">ABORT</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1480=
9">i915#14809</a>) +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@gem_pwrite@basic-exhaustio=
n.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3282">i915#3282</a>) +1 other test skip</li>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-glk9/igt@gem_pwrite@basic-exhaustion=
.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14702">i915#14702</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/2658">i915#2658</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-execution-after-suspend-resume:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-glk10/igt@gem_pxp@verify-pxp-executi=
on-after-suspend-resume.html">SKIP</a> +22 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@gem_tiled_partial_pwrite_p=
read@writes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/3282">i915#3282</a>) +1 other test skip=
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-unsync:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@gem_userptr_blits@coheren=
cy-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3297">i915#3297</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@gem_userptr_blits@dmabuf-=
sync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/3323">i915#3323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@gem_userptr_blits@unsync-u=
nmap-after-close.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@bitmasks:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@gen7_exec_parse@bitmasks.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-glk6/igt@gen9_exec_parse@allowed-sin=
gle.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/5566">i915#5566</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@gen9_exec_parse@batch-inv=
alid-length.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@gen9_exec_parse@bb-oversiz=
e.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-cmd:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@gen9_exec_parse@bb-start-=
cmd.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/2527">i915#2527</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/2856">i915#2856</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_18022/shard-dg2-3/igt@i915_module_load@load.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-8/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@i915_module_load@load.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/sh=
ard-dg2-6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-5/igt@i915_module_load@=
load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_18022/shard-dg2-7/igt@i915_module_load@load.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-11/igt@i91=
5_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/CI_DRM_18022/shard-dg2-1/igt@i915_module_load@load.html">PASS</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-=
dg2-11/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-7/igt@i915_module_load@loa=
d.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_18022/shard-dg2-6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-5/igt@i915_mo=
dule_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/CI_DRM_18022/shard-dg2-4/igt@i915_module_load@load.html">PASS</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-=
8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-1/igt@i915_module_load@load.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_180=
22/shard-dg2-6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-4/igt@i915_module_=
load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/CI_DRM_18022/shard-dg2-5/igt@i915_module_load@load.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-8/igt=
@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/CI_DRM_18022/shard-dg2-1/igt@i915_module_load@load.html">PA=
SS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/sh=
ard-dg2-3/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-3/igt@i915_module_load@=
load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_18022/shard-dg2-11/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18022/shard-dg2-7/igt@i=
915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_18022/shard-dg2-4/igt@i915_module_load@load.html">PASS=
</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
158737v4/shard-dg2-4/igt@i915_module_load@load.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-6/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_158737v4/shard-dg2-8/igt@i915_module_load@load.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
158737v4/shard-dg2-5/igt@i915_module_load@load.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-7/igt@=
i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_158737v4/shard-dg2-1/igt@i915_module_load@load.htm=
l">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
158737v4/shard-dg2-8/igt@i915_module_load@load.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt=
@i915_module_load@load.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_158737v4/shard-dg2-4/igt@i915_module_load@load.ht=
ml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_158737v4/shard-dg2-11/igt@i915_module_load@load.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-7/ig=
t@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_158737v4/shard-dg2-6/igt@i915_module_load@load.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_158737v4/shard-dg2-1/igt@i915_module_load@load.html">PASS</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/i=
gt@i915_module_load@load.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-3/igt@i915_module_load@load.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_158737v4/shard-dg2-11/igt@i915_module_load@load.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-3=
/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-8/igt@i915_module_load@loa=
d.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_158737v4/shard-dg2-1/igt@i915_module_load@load.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-1=
1/igt@i915_module_load@load.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-5/igt@i915_module_load@lo=
ad.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_158737v4/shard-dg2-3/igt@i915_module_load@load.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-=
6/igt@i915_module_load@load.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@i915_module_load@l=
oad.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_158737v4/shard-dg2-5/igt@i915_module_load@load.html">PASS</a>) (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15741">i915#=
15741</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-basic-api:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@i915_pm_freq_api@freq-bas=
ic-api.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/8399">i915#8399</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_freq_api@freq-suspend@gt0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-4/igt@i915_pm_freq_api@freq-suspend@gt0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158=
737v4/shard-dg2-1/igt@i915_pm_freq_api@freq-suspend@gt0.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356=
">i915#13356</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/13820">i915#13820</a>) +1 other test incomplete</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-4/igt@i915_pm_rc6_residency@rc6=
-idle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/14498">i915#14498</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-1/igt@i915_pm_rpm@system-suspend.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/s=
hard-dg2-11/igt@i915_pm_rpm@system-suspend.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15693">i915#15693</a>)</=
li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-7/igt@i915_suspend@fence-restore-tiled2untiled.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_158737v4/shard-rkl-4/igt@i915_suspend@fence-restore-tiled2untiled.html"=
>INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/4817">i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-glk1/igt@i915_suspend@fence-restore-untiled.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158=
737v4/shard-glk8/igt@i915_suspend@fence-restore-untiled.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4817"=
>i915#4817</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@invalid-smem-bo-on-discrete:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_addfb_basic@invalid-s=
mem-bo-on-discrete.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/12454">i915#12454</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/12712">i915#12712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_atomic_transition@plane-all-modeset-transition@pipe-a-hdmi-a-3:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-1/igt@kms_atomic_transition@plane-all-modeset-trans=
ition@pipe-a-hdmi-a-3.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-5/igt@kms_atomic_transitio=
n@plane-all-modeset-transition@pipe-a-hdmi-a-3.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5956">i915#5956</a>)=
 +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_big_fb@4-tiled-64bpp-=
rotate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-addfb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_big_fb@4-tiled-addfb.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/5286">i915#5286</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-4/igt@kms_big_fb@4-tiled-max-hw=
-stride-32bpp-rotate-180-async-flip.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>) +1 other t=
est skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_big_fb@linear-max-hw-s=
tride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_big_fb@x-tiled-64bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-rotation-90-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_ccs@bad-rotation-90-y-=
tiled-gen12-mc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/6095">i915#6095</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-yf-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-dg1-14/igt@kms_ccs@crc-primary-basic=
-yf-tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +155 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-3:=
</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-dg2-1/igt@kms_ccs@crc-primary-rotati=
on-180-4-tiled-dg2-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +27 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/12805">i915#12805</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1:</=
p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-4/igt@kms_ccs@crc-primary-suspe=
nd-4-tiled-dg2-rc-ccs-cc@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +34 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-glk4/igt@kms_ccs@crc-primary-suspend=
-yf-tiled-ccs@pipe-a-hdmi-a-1.html">INCOMPLETE</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/15582">i915#15582</a>) +1 other=
 test incomplete</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2 (=
NEW):</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-dg2-rc-ccs@pipe-c-hdmi-a-2.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915=
#6095</a>) +35 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-dg2-1/igt@kms_ccs@crc-sprite-planes-=
basic-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-3.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307">i915#10307</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915=
#6095</a>) +59 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_ccs@missing-ccs-buffe=
r-yf-tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +29 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_ccs@random-ccs-data-4=
-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-=
tiled-mtl-rc-ccs-cc@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095=
</a>) +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_ccs@random-ccs-data-y-=
tiled-ccs@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) +62 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-after-suspend:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_chamelium_hpd@vga-hpd=
-after-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-3/igt@kms_chamelium_hpd@vga-hpd-=
for-each-pipe.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +3 other tests s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@vga-hpd-with-enabled-mode:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-4/igt@kms_chamelium_hpd@vga-hpd=
-with-enabled-mode.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) +5 other te=
sts skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_content_protection@ato=
mic-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/6944">i915#6944</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/7118">i915#7118</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_content_protection@dp-=
mst-lic-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/15330">i915#15330</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0-hdcp14:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_content_protection@dp=
-mst-lic-type-0-hdcp14.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-4/igt@kms_content_protection@dp=
-mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/15330">i915#15330</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/3116">i915#3116</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1-suspend-resume:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-3/igt@kms_content_protection@dp-=
mst-type-1-suspend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/15330">i915#15330</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-0-hdcp14:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_content_protection@li=
c-type-0-hdcp14.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic-type-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_content_protection@lic=
-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/6944">i915#6944</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@suspend-resume:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@kms_content_protection@su=
spend-resume.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_cursor_crc@cursor-offs=
creen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-512x170:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_cursor_crc@cursor-ons=
creen-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-64x21:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-64x21.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
158737v4/shard-rkl-3/igt@kms_cursor_crc@cursor-onscreen-64x21.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566=
">i915#13566</a>) +1 other test fail</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-random-max-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_cursor_crc@cursor-rand=
om-max-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@kms_cursor_crc@cursor-sli=
ding-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13049">i915#13049</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_cursor_legacy@basic-bu=
sy-flip-before-cursor-varying-size.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4103">i915#4103</a>) +1 other te=
st skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-3/igt@kms_cursor_legacy@cursorb-=
vs-flipa-legacy.html">SKIP</a> +12 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-glk3/igt@kms_cursor_legacy@flip-vs-c=
ursor-atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/15764">i915#15764</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-atomic-transitions.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103">i915=
#4103</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@drrs-dirtyfb-ioctl:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_dirtyfb@drrs-dirtyfb-=
ioctl.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9723">i915#9723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_dp_aux_dev.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12=
57">i915#1257</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-sst:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_dp_link_training@non-u=
hbr-sst.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/13749">i915#13749</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-3/igt@kms_dsc@dsc-fractional-bpp=
-with-bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_dsc@dsc-with-bpc.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-bpc-formats:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-4/igt@kms_dsc@dsc-with-bpc-form=
ats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_dsc@dsc-with-output-fo=
rmats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/3840">i915#3840</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-3/igt@kms_fbcon_fbt@psr-suspend.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@chamelium:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_feature_discovery@cha=
melium.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/2065">i915#2065</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/4854">i915#4854</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_feature_discovery@display-2x:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_feature_discovery@dis=
play-2x.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-4/igt@kms_flip@2x-flip-vs-dpms.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3637">i915#3637</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/9934">i915#9934</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms-=
off-vs-modeset-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/3637">i915#3637</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 =
other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-dpms-on-nop-interruptible:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_flip@2x-flip-vs-dpms-=
on-nop-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-panning-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_flip@2x-flip-vs-pannin=
g-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/9934">i915#9934</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_158737v4/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-interruptible.html"=
>TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/14033">i915#14033</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/14350">i915#14350</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-vga1-hdmi-a1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-snb6/igt@kms_flip@2x-flip-vs-suspend-interruptible@ab-v=
ga1-hdmi-a1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_158737v4/shard-snb1/igt@kms_flip@2x-flip-vs-suspend-int=
erruptible@ab-vga1-hdmi-a1.html">TIMEOUT</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/14033">i915#14033</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_flip@2x-plain-flip-int=
erruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/9934">i915#9934</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-6/igt@kms_flip@flip-vs-expired-vblank.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15873=
7v4/shard-dg2-5/igt@kms_flip@flip-vs-expired-vblank.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13027">i915#130=
27</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a3:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-6/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a3.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_158737v4/shard-dg2-5/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a3.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/15745">i915#15745</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-5/igt@kms_flip@flip-vs-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/sha=
rd-rkl-6/igt@kms_flip@flip-vs-suspend.html">INCOMPLETE</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6113">i915#6113</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-glk10/igt@kms_flip@flip-vs-suspend-i=
nterruptible.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/12745">i915#12745</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4839">i915#4839</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk10:        NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-glk10/igt@kms_flip@flip-vs-suspend-i=
nterruptible@a-hdmi-a1.html">INCOMPLETE</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/12745">i915#12745</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-hdmi-a2:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_flip@flip-vs-suspend@a=
-hdmi-a2.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/6113">i915#6113</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-4/igt@kms_flip_scaled_crc@flip-=
32bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a=
>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downscaling=
:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_flip_scaled_crc@flip-3=
2bpp-yftile-to-32bpp-yftileccs-downscaling.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +=
1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_flip_scaled_crc@flip-=
64bpp-yftile-to-16bpp-yftile-upscaling.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) +2 ot=
her tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbc-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> +36 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_frontbuffer_tracking@=
fbc-rgb101010-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/15689">i915#15689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-indfb-draw-mmap-wc:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-offscreen-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i9=
15#15102</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-offscreen-pri-shrfb-draw-render:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_frontbuffer_tracking@f=
bcpsr-1p-offscreen-pri-shrfb-draw-render.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-scndscrn-shrfb-msflip-blt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825=
</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_frontbuffer_tracking@=
fbcpsr-tiling-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/5439">i915#5439</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-pri-indfb-draw-render.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#302=
3</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#=
15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/3023">i915#3023</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@kms_frontbuffer_tracking@=
psr-2p-primscrn-shrfb-pgflip-blt.html">SKIP</a> +32 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_frontbuffer_tracking@p=
sr-2p-scndscrn-indfb-msflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) +13 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-modesetfrombusy:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_frontbuffer_tracking@=
psr-modesetfrombusy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/15102">i915#15102</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-blt:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-4/igt@kms_frontbuffer_tracking@=
psr-rgb565-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/15102">i915#15102</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_getfb@getfb-handle-not-fb:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg1-16/igt@kms_getfb@getfb-handle-not-fb.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737=
v4/shard-dg1-17/igt@kms_getfb@getfb-handle-not-fb.html">DMESG-WARN</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#=
4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdmi_inject@inject-audio:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-mtlp-2/igt@kms_hdmi_inject@inject-audio.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v=
4/shard-mtlp-1/igt@kms_hdmi_inject@inject-audio.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15725">i915#15725</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@brightness-with-hdr:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-4/igt@kms_hdr@brightness-with-h=
dr.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/12713">i915#12713</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_hdr@invalid-metadata-=
sizes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-swap:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_hdr@static-swap.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-big-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_joiner@basic-big-join=
er.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/15460">i915#15460</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@basic-max-non-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_joiner@basic-max-non-j=
oiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/13688">i915#13688</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-big-joiner:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-3/igt@kms_joiner@invalid-modeset=
-force-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/15459">i915#15459</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-ultra-joiner:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@kms_joiner@invalid-modese=
t-ultra-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/15458">i915#15458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_joiner@switch-modeset=
-ultra-joiner-big-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/15638">i915#15638</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15722">i915#15722</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-modifier:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@kms_plane@pixel-format-4-=
tiled-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-modifier-source-clamping:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_plane@pixel-format-4-=
tiled-modifier-source-clamping.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +2 other test=
s skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-mtl-mc-ccs-modifier-source-clamping:<=
/p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_plane@pixel-format-4-t=
iled-mtl-mc-ccs-modifier-source-clamping.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) +1 =
other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-yf-tiled-modifier:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_plane@pixel-format-yf-=
tiled-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-glk3/igt@kms_plane_alpha_blend@const=
ant-alpha-max.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/10647">i915#10647</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/12169">i915#12169</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@constant-alpha-max@pipe-c-hdmi-a-1:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-glk3/igt@kms_plane_alpha_blend@const=
ant-alpha-max@pipe-c-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/10647">i915#10647</a>) +1 other test =
fail</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-4:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@kms_plane_multiple@tiling=
-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14259">i915#14259</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-unity-scaling-with-rotation@pipe-b:</=
p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_plane_scaling@plane-sc=
aler-unity-scaling-with-rotation@pipe-b.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +3 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-rotation.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a> / <a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#35=
55</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-rotation@pipe-=
b:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@kms_plane_scaling@plane-s=
caler-with-clipping-clamping-rotation@pipe-b.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>)=
 +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_plane_scaling@plane-up=
scale-20x20-with-rotation@pipe-a.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329<=
/a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_plane_scaling@plane-u=
pscale-factor-0-25-with-rotation@pipe-d.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) +4 o=
ther tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-scaler-unity-scaling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_plane_scaling@planes-scaler-unity-scalin=
g.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_158737v4/shard-dg2-11/igt@kms_plane_scaling@planes-scaler-unity-s=
caling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/15689">i915#15689</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/9423">i915#9423</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@fade:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_pm_backlight@fade.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9812">i915#9812</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-psr:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-3/igt@kms_pm_dc@dc5-psr.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc5-retention-flops:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@kms_pm_dc@dc5-retention-f=
lops.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/3828">i915#3828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_pm_dc@dc6-dpms.html">=
FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/15752">i915#15752</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_pm_lpsp@screens-disabl=
ed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/8430">i915#8430</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-8/igt@kms_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-r=
kl-7/igt@kms_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/15073">i915#15073</a>) +1 other test =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@dpms-mode-unset-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-4/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15873=
7v4/shard-dg2-8/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i915#150=
73</a>)</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-5/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15873=
7v4/shard-rkl-6/igt@kms_pm_rpm@dpms-mode-unset-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/15073">i915#15073</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_prime@d3hot:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@kms_prime@d3hot.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6=
524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-4/igt@kms_psr2_sf@fbc-pr-overla=
y-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +3 other t=
ests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-snb7/igt@kms_psr2_sf@pr-overlay-prim=
ary-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/11520">i915#11520</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_psr2_sf@psr2-overlay-p=
lane-move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a=
>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_psr2_sf@psr2-overlay-=
plane-move-continuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +6 other tests skip=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-glk3/igt@kms_psr2_sf@psr2-overlay-pr=
imary-update-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/11520">i915#11520</a>) +11 other tests ski=
p</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-plane-move-sf-dmg-area:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_psr2_sf@psr2-plane-mov=
e-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/11520">i915#11520</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-4/igt@kms_psr2_su@frontbuffer-x=
rgb8888.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-3/igt@kms_psr2_su@page_flip-nv12=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9683">i915#9683</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-pr-sprite-mmap-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_psr@fbc-pr-sprite-mmap=
-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +1 other te=
st skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-cursor-plane-move:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@kms_psr@fbc-psr2-cursor-p=
lane-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9732">i915#9732</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr2-sprite-mmap-gtt:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_psr@fbc-psr2-sprite-m=
map-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/9732">i915#9732</a>) +11 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-sprite-plane-onoff:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-3/igt@kms_psr@psr-sprite-plane-o=
noff.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/9732">i915#9732</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-plane-onoff:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-glk3/igt@kms_psr@psr2-sprite-plane-o=
noff.html">SKIP</a> +436 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@invalidate-primary-flip-overlay:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_psr_stress_test@inval=
idate-primary-flip-overlay.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/9685">i915#9685</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@multiplane-rotation-cropping-bottom:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-glk6/igt@kms_rotation_crc@multiplane=
-rotation-cropping-bottom.html">INCOMPLETE</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/15500">i915#15500</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-0:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/5289">i915#5289</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@kms_rotation_crc@primary-=
yf-tiled-reflect-x-180.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_rotation_crc@primary-y=
f-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/5289">i915#5289</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-center:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@kms_scaling_modes@scaling=
-mode-center.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3555">i915#3555</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_scaling_modes@scaling-mode-full:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_scaling_modes@scaling-=
mode-full.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3555">i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@clone-exclusive-crtc:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_setmode@clone-exclusi=
ve-crtc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3555">i915#3555</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_tiled_display@basic-t=
est-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@ts-continuation-idle-hang:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_vblank@ts-continuation-idle-hang.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_158737v4/shard-dg2-11/igt@kms_vblank@ts-continuation-idle-hang.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/156=
89">i915#15689</a>) +196 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_vrr@flip-basic-fastset=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-virtual:</p>
<ul>
<li>shard-tglu:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-5/igt@kms_vrr@seamless-rr-switc=
h-virtual.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-vrr:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@kms_vrr@seamless-rr-switc=
h-vrr.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@perf@gen8-unprivileged-sin=
gle-ctx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@i915-ref-count:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@perf@i915-ref-count.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-d=
g2-11/igt@perf@i915-ref-count.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/15607">i915#15607</a>) +3 other tests=
 skip</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@perf_pmu@module-unload.ht=
ml">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/13029">i915#13029</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-all-gts:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@perf_pmu@rc6-all-gts.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-glk1/igt@perf_pmu@rc6-suspend.html">=
INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/13356">i915#13356</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/14242">i915#14242</a>)</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6@other-idle-gt0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@perf_pmu@rc6@other-idle-gt=
0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/8516">i915#8516</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-gtt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@prime_vgem@coherency-gtt.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@bind-unbind-vf@vf-1:</p>
<ul>
<li>shard-tglu-1:       NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-tglu-1/igt@sriov_basic@bind-unbind-v=
f@vf-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/12910">i915#12910</a>) +9 other tests fail</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-bind-unbind-each:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@sriov_basic@enable-vfs-bin=
d-unbind-each.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/9917">i915#9917</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-5/igt@gem_ccs@suspend-resume@linear-compressed-comp=
fmt0-smem-lmem0.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/13356">i915#13356</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-4/igt@gem_=
ccs@suspend-resume@linear-compressed-compfmt0-smem-lmem0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s0@smem:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-3/igt@gem_exec_suspend@basic-s0@smem.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
13356">i915#13356</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_158737v4/shard-rkl-3/igt@gem_exec_suspend@basic-s0@smem.htm=
l">PASS</a> +2 other tests pass</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-1/igt@gem_pxp@verify-pxp-key-change-after-suspend-r=
esume.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/15131">i915#15131</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@gem_pxp@verify-pxp-=
key-change-after-suspend-resume.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-tglu-8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1379=
0">i915#13790</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/2681">i915#2681</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_158737v4/shard-tglu-6/igt@i915_pm_rc6_residency@r=
c6-fence.html">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@reset:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-snb6/igt@i915_pm_rps@reset.html">INCOMPLETE</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13821">i915#13=
821</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_158737v4/shard-snb7/igt@i915_pm_rps@reset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-invalid-params:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg1-16/igt@kms_atomic@plane-invalid-params.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/4423">i915#4423</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_158737v4/shard-dg1-17/igt@kms_atomic@plane-invalid-params.h=
tml">PASS</a> +1 other test pass</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-tglu-10/igt@kms_cursor_crc@cursor-onscreen-128x42@pipe-=
a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/13566">i915#13566</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-tglu-9/igt@kms_cursor_crc=
@cursor-onscreen-128x42@pipe-a-hdmi-a-1.html">PASS</a> +1 other test pass</=
li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@a-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-snb6/igt@kms_flip@flip-vs-absolute-wf_vblank-interrupti=
ble@a-vga1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14600">i915#14600</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-snb4/igt@kms_flip@flip-vs=
-absolute-wf_vblank-interruptible@a-vga1.html">PASS</a> +1 other test pass<=
/li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-snb7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-i=
ndfb-draw-render.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_158737v4/shard-snb4/igt@kms_frontbuffer_tracking@f=
bc-2p-scndscrn-spr-indfb-draw-render.html">PASS</a> +22 other tests pass</l=
i>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-5/igt@kms_hdr@static-toggle-dpms.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915=
#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/8228">i915#8228</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_hdr@static-toggle-dpms.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_pipe_crc_basic@suspend-read-crc.html">INC=
OMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/12756">i915#12756</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/13476">i915#13476</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_pipe_crc_=
basic@suspend-read-crc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-8/igt@kms_pm_rpm@modeset-non-lpsp.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073">i9=
15#15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_158737v4/shard-rkl-7/igt@kms_pm_rpm@modeset-non-lpsp.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@modeset-non-lpsp-stress:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15=
073">i915#15073</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_158737v4/shard-dg2-7/igt@kms_pm_rpm@modeset-non-lpsp-stress.h=
tml">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@api_intel_bb@object-reloc-purge-cache:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-7/igt@api_intel_bb@object-reloc-purge-cache.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/8411">i915#8411</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_158737v4/shard-dg2-11/igt@api_intel_bb@object-reloc-purge-ca=
che.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15689">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_buddy@drm_buddy:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-5/igt@drm_buddy@drm_buddy.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15678">i915#156=
78</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_158737v4/shard-rkl-6/igt@drm_buddy@drm_buddy.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15678=
">i915#15678</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@block-multicopy-inplace:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@gem_ccs@block-multicopy-inplace.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/9323">i915#9323</a>) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@gem_ccs@blo=
ck-multicopy-inplace.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/3555">i915#3555</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/9323">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@gem_ccs@suspend-resume.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14=
544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/9323">i915#9323</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_158737v4/shard-rkl-4/igt@gem_ccs@suspend-resume.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/932=
3">i915#9323</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_close_race@multigpu-basic-threads:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@gem_close_race@multigpu-basic-threads.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/7697">i915#7697</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_close_race@multigpu-basic-thr=
eads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/15689">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-ext-cpu-access-big:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@gem_create@create-ext-cpu-access-big.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/15454">i915#15454</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_create@create-ext-cpu-access=
-big.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/15689">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-hang:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-hang.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8=
555">i915#8555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_158737v4/shard-dg2-11/igt@gem_ctx_persistence@heartbeat-hang.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/15689">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@saturated-hostile-nopreempt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@gem_ctx_persistence@saturated-hostile-nopree=
mpt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/5882">i915#5882</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_ctx_persistence@sat=
urated-hostile-nopreempt.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/15689">i915#15689</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_sseu@engines:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-1/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/280">i915#280</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158=
737v4/shard-dg2-11/igt@gem_ctx_sseu@engines.html">SKIP</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i915#15689</a> /=
 <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i=
915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@bonded-dual:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@gem_exec_balancer@bonded-dual.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4771">=
i915#4771</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_158737v4/shard-dg2-11/igt@gem_exec_balancer@bonded-dual.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/156=
89">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-bb-first:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-1/igt@gem_exec_balancer@parallel-bb-first.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4=
525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_158737v4/shard-rkl-6/igt@gem_exec_balancer@parallel-bb-first.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@gem_exec_balancer@parallel-contexts.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@gem_exec_balancer@par=
allel-contexts.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture-invisible:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-7/igt@gem_exec_capture@capture-invisible.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/63=
34">i915#6334</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_158737v4/shard-dg2-11/igt@gem_exec_capture@capture-invisible.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/15689">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fence@submit3:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@gem_exec_fence@submit3.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812">i915#48=
12</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_158737v4/shard-dg2-11/igt@gem_exec_fence@submit3.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i915#156=
89</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-ro-before-default:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@gem_exec_flush@basic-wb-ro-before-default.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/4852">i915#4852</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_exec_flush@=
basic-wb-ro-before-default.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/15689">i915#15689</a> / <a href=3D"https=
://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +4 =
other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-active:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@gem_exec_reloc@basic-gtt-cpu-active.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
3281">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_158737v4/shard-dg2-11/igt@gem_exec_reloc@basic-gtt-cpu-active=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/15689">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/2575">i915#2575</a>) +13 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-gtt-cpu-noreloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu-noreloc.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/3281">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@gem_exec_reloc@basic=
-gtt-cpu-noreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-write-read-noreloc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-1/igt@gem_exec_reloc@basic-write-read-noreloc.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3281">i915#3281</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_158737v4/shard-rkl-6/igt@gem_exec_reloc@basic-write-read-n=
oreloc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/3281">i915#3281</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@reorder-wide:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-1/igt@gem_exec_schedule@reorder-wide.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4537">=
i915#4537</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/4812">i915#4812</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_exec_schedule@reorder-w=
ide.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15689">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/2575">i915#2575</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@gem_fence_thrash@bo-copy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@gem_fence_thrash@bo-copy.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860">i915#=
4860</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_158737v4/shard-dg2-11/igt@gem_fence_thrash@bo-copy.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i915#1=
5689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/2575">i915#2575</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-5/igt@gem_lmem_swapping@parallel-random-engines.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/4613">i915#4613</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@gem_lmem_swapping@parallel-rand=
om-engines.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/4613">i915#4613</a>) +1 other test skip<=
/li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@gem_lmem_swapping@verify-random.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/4613">i915#4613</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@gem_lmem_swapping@verify-=
random.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_media_fill@media-fill:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-7/igt@gem_media_fill@media-fill.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8289">i915#=
8289</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_158737v4/shard-dg2-11/igt@gem_media_fill@media-fill.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i915#=
15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_wc@bad-size:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-1/igt@gem_mmap_wc@bad-size.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083">i915#4083=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
58737v4/shard-dg2-11/igt@gem_mmap_wc@bad-size.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i915#15689</a>=
 / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575"=
>i915#2575</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-1/igt@gem_partial_pwrite_pread@reads.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">=
i915#3282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_158737v4/shard-dg2-11/igt@gem_partial_pwrite_pread@reads.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15=
689">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/2575">i915#2575</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-3/igt@gem_pxp@display-protected-crc.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270">i=
915#4270</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_158737v4/shard-dg2-11/igt@gem_pxp@display-protected-crc.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1568=
9">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/2575">i915#2575</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@hw-rejects-pxp-buffer:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@gem_pxp@hw-rejects-pxp-buffer.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717">=
i915#13717</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@gem_pxp@hw-rejects-pxp-bu=
ffer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13717">i915#13717</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-7/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/5190">i915#5190</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/8428">i915#8428</a>) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_render_copy@=
y-tiled-to-vebox-yf-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/15689">i915#15689</a> / <a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#=
5190</a>) +7 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_set_tiling_vs_pwrite:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-1/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282">i915#3=
282</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_158737v4/shard-rkl-6/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3282">i915#3282</a>) +3 other tests skip</li>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079">i915#=
4079</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_158737v4/shard-dg2-11/igt@gem_set_tiling_vs_pwrite.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i915#1=
5689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@gem_tiled_partial_pwrite_pread@writes.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/4077">i915#4077</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_tiled_partial_pwrite_pread@wr=
ites.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/15689">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +18 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic@basic:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@gem_tiled_pread_basic@basic.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15657">i=
915#15657</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_158737v4/shard-dg2-11/igt@gem_tiled_pread_basic@basic.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689=
">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@create-destroy-unsync:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-3/igt@gem_userptr_blits@create-destroy-unsync.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/3297">i915#3297</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_userptr_blits@create-destroy=
-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/15689">i915#15689</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/2575">i915#2575</a>) +4 other tests skip</l=
i>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-5/igt@gem_userptr_blits@invalid-mmap-offset-unsync.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/3297">i915#3297</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@gem_userptr_blits@invalid-mm=
ap-offset-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/i915/kernel/-/issues/3297">i915#3297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@map-fixed-invalidate-overlap:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-7/igt@gem_userptr_blits@map-fixed-invalidate-overla=
p.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3297">i915#3297</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/4880">i915#4880</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@gem_userptr=
_blits@map-fixed-invalidate-overlap.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/15689">i915#15689</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@bitmasks:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@gen7_exec_parse@bitmasks.html">SKIP</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/sh=
ard-dg2-11/igt@gen7_exec_parse@bitmasks.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i915#15689</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#=
2575</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-5/igt@gen9_exec_parse@allowed-all.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527">i91=
5#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_158737v4/shard-rkl-6/igt@gen9_exec_parse@allowed-all.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/2527">i915#2527</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-param:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-3/igt@gen9_exec_parse@bb-start-param.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856">=
i915#2856</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_158737v4/shard-dg2-11/igt@gen9_exec_parse@bb-start-param.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15=
689">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/2575">i915#2575</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@secure-batches:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@gen9_exec_parse@secure-batches.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/2527">i915#2527</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@gen9_exec_parse@secure-bat=
ches.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/2527">i915#2527</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@i915_pm_rps@min-max-config-idle.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1168=
1">i915#11681</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/6621">i915#6621</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@i915_pm_rps@min-max-con=
fig-idle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/15689">i915#15689</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@hwconfig_table:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-5/igt@i915_query@hwconfig_table.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6245">i915#=
6245</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_158737v4/shard-rkl-6/igt@i915_query@hwconfig_table.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#1=
4544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/6245">i915#6245</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_query@query-topology-coherent-slice-mask:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-1/igt@i915_query@query-topology-coherent-slice-mask=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/6188">i915#6188</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@i915_query@query-topology-=
coherent-slice-mask.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/15689">i915#15689</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-write:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-5/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#77=
07</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_158737v4/shard-rkl-6/igt@intel_hwmon@hwmon-write.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/7707">i915#7707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_addfb_basic@clobberred-modifier:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_addfb_basic@clobberred-modifier.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
4212">i915#4212</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_158737v4/shard-dg2-11/igt@kms_addfb_basic@clobberred-modifier=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/15689">i915#15689</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_atomic@plane-primary-overlay-mutable-zpos:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_atomic@plane-primary-overlay-mutable-zpo=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/9531">i915#9531</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_atomic@plane-primary-=
overlay-mutable-zpos.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/15689">i915#15689</a>)</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-1/igt@kms_atomic@plane-primary-overlay-mutable-zpos=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/9531">i915#9531</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_atomic@plane-primary-ov=
erlay-mutable-zpos.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/9531">i915#9531</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate=
-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_big_f=
b@4-tiled-max-hw-stride-32bpp-rotate-0.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-5/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate=
-0-async-flip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/5286">i915#5286</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_big_fb@4-t=
iled-max-hw-stride-64bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286">=
i915#5286</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate=
-0-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/3828">i915#3828</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_big_fb@linear-=
max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/15689">i915#15689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-5/igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-=
180-hflip.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/3828">i915#3828</a>) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_big_fb@linear-=
max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3828">i915#382=
8</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_big_fb@y-tiled-8bpp-rotate-270.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14=
544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/3638">i915#3638</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_big_fb@y-tiled-8bp=
p-rotate-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-16bpp-rotate-270:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-5/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SK=
IP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
158737v4/shard-rkl-6/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-7/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/45=
38">i915#4538</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/5190">i915#5190</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_big_fb@yf-tiled-64b=
pp-rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/15689">i915#15689</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +13 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-addfb:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915=
#5190</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_158737v4/shard-dg2-11/igt@kms_big_fb@yf-tiled-addfb.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i915=
#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/5190">i915#5190</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotat=
e-180.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_big_fb@yf-tiled-=
max-hw-stride-32bpp-rotate-180.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs@p=
ipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4=
/igt@kms_ccs@bad-aux-stride-y-tiled-gen12-mc-ccs@pipe-a-hdmi-a-2.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/60=
95">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_ccs@bad-pixel-format-y-tiled-gen12-mc-cc=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/10307">i915#10307</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_ccs@b=
ad-pixel-format-y-tiled-gen12-mc-ccs.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/15689">i915#15689</a>) +14 oth=
er tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-7/igt@kms_ccs@crc-primary-basic-4-tiled-dg2-mc-ccs.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_ccs@crc-primary-basic-4=
-tiled-dg2-mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/15689">i915#15689</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg=
-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/12313">i915#12313</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_ccs@crc-primary-=
rotation-180-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/15689">i915#15689</a>) +1 other test s=
kip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-3/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-=
mc-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/10307">i915#10307</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/10434">i915#10434</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard=
-dg2-11/igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-mc-ccs.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/156=
89">i915#15689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-1/igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/12805">i915#12805</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_ccs@crc-primary-suspen=
d-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/15689">i915#15689</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-1/igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_ccs@crc-prim=
ary-suspend-yf-tiled-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14098">i915#14098</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915=
#6095</a>) +8 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-bmg-c=
cs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/12313">i915#12313</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_ccs@crc-sprite-plan=
es-basic-4-tiled-bmg-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/12313">i915#12313</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-r=
c-ccs-cc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14098">i915#14098</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/sha=
rd-rkl-4/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs-cc.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
14098">i915#14098</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/6095">i915#6095</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-1/igt@kms_ccs@crc-sprite-planes-basic-4-tiled-mtl-r=
c-ccs@pipe-a-hdmi-a-2.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/6095">i915#6095</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_cc=
s@crc-sprite-planes-basic-4-tiled-mtl-rc-ccs@pipe-a-hdmi-a-2.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/6095">i915#6095</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-lnl-ccs.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/12313">i915#12313</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_ccs@random-=
ccs-data-4-tiled-lnl-ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/12313">i915#12313</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-1/igt@kms_cdclk@mode-transition.html">SKIP</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781">i915=
#13781</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_158737v4/shard-dg2-11/igt@kms_cdclk@mode-transition.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i91=
5#15689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_color@degamma:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-3/igt@kms_chamelium_color@degamma.html">SKIP</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/=
shard-dg2-11/igt@kms_chamelium_color@degamma.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i915#15689</a>)=
 +5 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-read:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_chamelium_edid@dp-edid-read.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1115=
1">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_chamelium_edid@dp-e=
did-read.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/15689">i915#15689</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_chamelium_edid@dp-edid-stress-resolution-=
non-4k.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard=
-rkl-4/igt@kms_chamelium_edid@dp-edid-stress-resolution-non-4k.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1115=
1">i915#11151</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/7828">i915#7828</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-5/igt@kms_chamelium_edid@hdmi-edid-change-during-su=
spend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/11151">i915#11151</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/7828">i915#7828</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_ch=
amelium_edid@hdmi-edid-change-during-suspend.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151">i915#11151</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544"=
>i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/7828">i915#7828</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_content_protection@dp-mst-lic-type-0.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/15330">i915#15330</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/3299">i915#3299</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_content_pr=
otection@dp-mst-lic-type-0.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/15689">i915#15689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-0-suspend-resume:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_content_protection@dp-mst-type-0-suspend-=
resume.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/15330">i915#15330</a>) -&gt; <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms=
_content_protection@dp-mst-type-0-suspend-resume.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15330">i915#15330<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-3/igt@kms_content_protection@legacy.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i=
915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_content_pr=
otection@legacy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/15689">i915#15689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei-interface:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-1/igt@kms_content_protection@mei-interface.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
6944">i915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9424">i915#9424</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_content_protectio=
n@mei-interface.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/15689">i915#15689</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@type1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_content_protection@type1.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944">i=
915#6944</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/7118">i915#7118</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/7162">i915#7162</a> / <a href=3D"https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/9424">i915#9424</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@=
kms_content_protection@type1.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/15689">i915#15689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent-hdcp14:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-5/igt@kms_content_protection@uevent-hdcp14.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
6944">i915#6944</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_158737v4/shard-rkl-6/igt@kms_content_protection@uevent-hdcp14=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/6944">i915#6944</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x170:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-7/igt@kms_cursor_crc@cursor-offscreen-512x170.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/13049">i915#13049</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_cursor_crc@cursor-offscree=
n-512x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15689">i915#15689</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x10:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-5/igt@kms_cursor_crc@cursor-rapid-movement-32x10.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-mo=
vement-32x10.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/3555">i915#3555</a>) +2 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-rapid-movement-32x32:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-7/igt@kms_cursor_crc@cursor-rapid-movement-32x32.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/3555">i915#3555</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_cursor_crc@cursor-rapid-m=
ovement-32x32.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/15689">i915#15689</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x170:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-1/igt@kms_cursor_crc@cursor-sliding-512x170.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/13049">i915#13049</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512=
x170.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/13049">i915#13049</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-toggle:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/13046">i915#13046</a> / <a href=3D"https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/5354">i915#5354</a>) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_cursor_le=
gacy@cursora-vs-flipb-toggle.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/15689">i915#15689</a>) +3 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:<=
/p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_cursor_legacy@short-busy-flip-before-cur=
sor-atomic-transitions.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/4103">i915#4103</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/4213">i915#4213</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-d=
g2-11/igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transition=
s.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15689">i915#15689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dirtyfb@psr-dirtyfb-ioctl:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9833">=
i915#9833</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_158737v4/shard-dg2-11/igt@kms_dirtyfb@psr-dirtyfb-ioctl.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/156=
89">i915#15689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@non-uhbr-mst:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-1/igt@kms_dp_link_training@non-uhbr-mst.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/137=
49">i915#13749</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_158737v4/shard-dg2-11/igt@kms_dp_link_training@non-uhbr-mst.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/15689">i915#15689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_link_training@uhbr-mst:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-3/igt@kms_dp_link_training@uhbr-mst.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13748">=
i915#13748</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_158737v4/shard-dg2-11/igt@kms_dp_link_training@uhbr-mst.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15=
689">i915#15689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dp_linktrain_fallback@dsc-fallback:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_dp_linktrain_fallback@dsc-fallback.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/13707">i915#13707</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_dp_linktrain=
_fallback@dsc-fallback.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/13707">i915#13707</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-7/igt@kms_draw_crc@draw-method-mmap-wc.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8812=
">i915#8812</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_158737v4/shard-dg2-11/igt@kms_draw_crc@draw-method-mmap-wc.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/15689">i915#15689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-fractional-bpp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_dsc@dsc-fractional-bpp.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840">i91=
5#3840</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9688">i915#9688</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_dsc@dsc-fractional-bpp.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/15689">i915#15689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@dsc-with-output-formats:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_dsc@dsc-with-output-formats.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555=
">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3840">i915#3840</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_dsc@dsc-with-output-f=
ormats.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/15689">i915#15689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-1/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3469">i915#3469</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15873=
7v4/shard-dg2-11/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i915#15689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-1/igt@kms_flip@2x-flip-vs-fences-interruptible.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/9934">i915#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_flip@2x-flip-vs-fences-inter=
ruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/9934">i915#9934</a>) +1 other test skip</l=
i>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_flip@2x-flip-vs-fences-interruptible.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/8381">i915#8381</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_flip@2x-flip-vs-fences-int=
erruptible.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/15689">i915#15689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-modeset-vs-hang:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_flip@2x-flip-vs-modeset-vs-hang.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
4544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9934">i915#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_flip@2x-flip-vs-m=
odeset-vs-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9934">i915#9934</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-3/igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs=
-modeset.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/9934">i915#9934</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_flip@2x-single=
-buffer-flip-vs-dpms-off-vs-modeset.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/15689">i915#15689</a>) +11 othe=
r tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downsc=
aling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bp=
p-ytilegen12rcccs-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v=
4/shard-dg2-11/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12=
rcccs-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/15689">i915#15689</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/5190">i915#5190</a>) +3 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp=
-4tile-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_fli=
p_scaled_crc@flip-64bpp-4tile-to-32bpp-4tile-downscaling.html">SKIP</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i91=
5#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/15643">i915#15643</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscal=
ing:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bp=
p-4tiledg2rcccs-downscaling.html">SKIP</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/15643">i915#15643</a>) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/i=
gt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-downscaling.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/15689">i915#15689</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-mtlp-1/igt@kms_force_connector_basic@force-load-detect.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/15672">i915#15672</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-mtlp-7/igt@kms_force_connector_basic=
@force-load-detect.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-=
indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_front=
buffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#=
14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/1825">i915#1825</a>) +15 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-rte:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-3/igt@kms_frontbuffer_tracking@fbc-2p-rte.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5=
354">i915#5354</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_158737v4/shard-dg2-11/igt@kms_frontbuffer_tracking@fbc-2p-rte.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/15689">i915#15689</a>) +36 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-=
pri-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/4423">i915#4423</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-d=
g1-17/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-w=
c.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg1-17/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-=
spr-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1587=
37v4/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb=
-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render:</=
p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-1/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-s=
pr-indfb-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-d=
g2-11/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-render=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/15689">i915#15689</a>) +21 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-=
pri-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/4423">i915#4423</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg1-17/igt@kms_fron=
tbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-blt.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-y:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-3/igt@kms_frontbuffer_tracking@fbcpsr-tiling-y.html=
">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/10055">i915#10055</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_frontbuffer_tracking@fbcp=
sr-tiling-y.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/15689">i915#15689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pr=
i-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_f=
rontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-pwrite.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i=
915#15689</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-render:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri=
-indfb-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-r=
kl-4/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-indfb-draw-render.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/15102">i915#15102</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-offscreen-pri=
-shrfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/15104">i915#15104</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_f=
rontbuffer_tracking@psr-1p-offscreen-pri-shrfb-draw-mmap-wc.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">=
i915#15689</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-=
indfb-draw-render.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab=
.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>) -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-=
4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-render.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/10433">i915#10433</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-=
shrfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/10433">i915#10433</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458">i915#3458</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737=
v4/shard-dg2-7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-=
blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3458">i915#3458</a>) +2 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-=
indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/15102">i915#15102</a> / <a href=3D"h=
ttps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023">i915#3023</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737=
v4/shard-rkl-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-=
blt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/3023">i915#3023</a>) +4 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-=
indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/8708">i915#8708</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_fro=
ntbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i9=
15#15689</a>) +17 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur=
-indfb-draw-blt.html">SKIP</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_158737v4/shard-dg1-12/igt@kms_frontbuffer_tracking@=
psr-2p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/4423">i915#4423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-=
shrfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/i915/kernel/-/issues/1825">i915#1825</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rk=
l-4/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-mmap-gtt.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/1825">i915#1825</a>) +9 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-p=
write.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/15102">i915#15102</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/3023">i915#3023</a>) -&gt; <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_fr=
ontbuffer_tracking@psr-rgb101010-draw-pwrite.html">SKIP</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#14544</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15102"=
>i915#15102</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/3023">i915#3023</a>) +6 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-hdr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-5/igt@kms_hdr@invalid-hdr.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i915#3555=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8=
228">i915#8228</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_158737v4/shard-rkl-6/igt@kms_hdr@invalid-hdr.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i9=
15#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/8228">i915#8228</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-7/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555">i=
915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/8228">i915#8228</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_hdr@static-toggle-suspen=
d.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15689">i915#15689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_joiner@invalid-modeset-force-ultra-joiner:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_joiner@invalid-modeset-force-ultra-joine=
r.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15458">i915#15458</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_joiner@invalid-mode=
set-force-ultra-joiner.html">SKIP</a> (<a href=3D"https://gitlab.freedeskto=
p.org/drm/i915/kernel/-/issues/15689">i915#15689</a>)</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_joiner@invalid-modeset-force-ultra-joiner=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/15458">i915#15458</a>) -&gt; <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_joine=
r@invalid-modeset-force-ultra-joiner.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/15458">i915#15458</a>) +1 othe=
r test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_stress@stress-xrgb8888-yftiled:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-5/igt@kms_pipe_stress@stress-xrgb8888-yftiled.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/14712">i915#14712</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_pipe_stress@stress-xrgb8888=
-yftiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14712">i915#14712</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_stress@stress-xrgb8888-ytiled:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-7/igt@kms_pipe_stress@stress-xrgb8888-ytiled.html">=
SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/13705">i915#13705</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_pipe_stress@stress-xrgb8888=
-ytiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/15689">i915#15689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-modifier:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-1/igt@kms_plane@pixel-format-4-tiled-dg2-mc-ccs-mod=
ifier.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/15709">i915#15709</a>) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_plane@pixel-for=
mat-4-tiled-dg2-mc-ccs-modifier.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/15689">i915#15689</a>) +6 other tes=
ts skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source-clampin=
g:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-=
modifier-source-clamping.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>) -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/s=
hard-rkl-4/igt@kms_plane@pixel-format-4-tiled-dg2-rc-ccs-cc-modifier-source=
-clamping.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/15709">i915#15709</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifier:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-5/igt@kms_plane@pixel-format-4-tiled-lnl-ccs-modifi=
er.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/15709">i915#15709</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_plane@pixel-format-=
4-tiled-lnl-ccs-modifier.html">SKIP</a> (<a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15709">i915#15709</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@2x-tiling-4:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_plane_multiple@2x-tiling-4.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958=
">i915#13958</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_158737v4/shard-dg2-11/igt@kms_plane_multiple@2x-tiling-4.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/15689">i915#15689</a>) +2 other tests skip</li>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-1/igt@kms_plane_multiple@2x-tiling-4.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958"=
>i915#13958</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_158737v4/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-4.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
3958">i915#13958</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/14544">i915#14544</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@tiling-yf:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-3/igt@kms_plane_multiple@tiling-yf.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259">i=
915#14259</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_158737v4/shard-dg2-11/igt@kms_plane_multiple@tiling-yf.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1568=
9">i915#15689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-3/igt@kms_plane_scaling@intel-max-src-size.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
6953">i915#6953</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/9423">i915#9423</a>) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_plane_scaling@int=
el-max-src-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/15689">i915#15689</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/9423">i915#9423</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:<=
/p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-1/igt@kms_plane_scaling@plane-downscale-factor-0-75=
-with-rotation@pipe-a.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/i915/kernel/-/issues/15329">i915#15329</a>) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_=
plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1454=
4">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15329">i915#15329</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_backlight@basic-brightness:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_pm_backlight@basic-brightness.html">SKIP<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/145=
44">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/5354">i915#5354</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_pm_backlight@basic-=
brightness.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/5354">i915#5354</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@kms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-7/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9340">i915#9340=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
58737v4/shard-dg2-11/igt@kms_pm_lpsp@kms-lpsp.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i915#15689</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/8430">i=
915#8430</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_158737v4/shard-dg2-11/igt@kms_pm_lpsp@screens-disabled.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689=
">i915#15689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@fences:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg1-12/igt@kms_pm_rpm@fences.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423=
">i915#4423</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_158737v4/shard-dg1-12/igt@kms_pm_rpm@fences.html">SKIP</a> (<a hr=
ef=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#40=
77</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pm_rpm@pm-tiling:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_pm_rpm@pm-tiling.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077">i915#4077=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
58737v4/shard-dg2-11/igt@kms_pm_rpm@pm-tiling.html">SKIP</a> (<a href=3D"ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15693">i915#15693</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_psr2_sf@fbc-pr-overlay-plane-update-conti=
nuous-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/11520">i915#11520</a> / <a href=3D"https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/14544">i915#14544</a>) -&gt; <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@k=
ms_psr2_sf@fbc-pr-overlay-plane-update-continuous-sf.html">SKIP</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11=
520</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-5/igt@kms_psr2_sf@pr-primary-plane-update-sf-dmg-ar=
ea-big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i91=
5/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_psr2_sf@pr-p=
rimary-plane-update-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/i915/kernel/-/issues/11520">i915#11520</a> / <a h=
ref=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#=
14544</a>) +3 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-3/igt@kms_psr2_sf@psr2-cursor-plane-move-continuous=
-exceed-sf.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i9=
15/kernel/-/issues/11520">i915#11520</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_psr2_sf@ps=
r2-cursor-plane-move-continuous-exceed-sf.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i915#15689</a>) +1=
1 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683"=
>i915#9683</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_158737v4/shard-dg2-11/igt@kms_psr2_su@page_flip-xrgb8888.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
5689">i915#15689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@fbc-psr-cursor-mmap-gtt:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg1-12/igt@kms_psr@fbc-psr-cursor-mmap-gtt.html">SKIP</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072=
">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/4423">i915#4423</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg1-17/igt@kms_psr@fbc=
-psr-cursor-mmap-gtt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-mmap-cpu:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-7/igt@kms_psr@psr-cursor-mmap-cpu.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i91=
5#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_psr@psr-cursor-mmap-cpu.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/15689">i915#15689</a>) +29 other tests skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr-cursor-plane-move:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_psr@psr-cursor-plane-move.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i=
915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/14544">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-2/igt@kms_psr@psr-c=
ursor-plane-move.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/1072">i915#1072</a> / <a href=3D"https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +6 other tests =
skip</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2-sprite-mmap-cpu:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-1/igt@kms_psr@psr2-sprite-mmap-cpu.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072">i9=
15#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/9732">i915#9732</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_158737v4/shard-rkl-6/igt@kms_psr@psr2-sprite-mmap-cpu.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/1072">i915#1072</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/14544">i915#14544</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/9732">i915#9732</a>) +7 other tests sk=
ip</li>
</ul>
</li>
<li>
<p>igt@kms_psr_stress_test@flip-primary-invalidate-overlay:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-7/igt@kms_psr_stress_test@flip-primary-invalidate-o=
verlay.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9685">i915#9685</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_psr_stress_test@=
flip-primary-invalidate-overlay.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/i915/kernel/-/issues/15689">i915#15689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-=
270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/12755">i915#12755</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/i915/kernel/-/issues/5190">i915#5190</a>) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_rot=
ation_crc@primary-yf-tiled-reflect-x-270.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i915#15689</a> / <a=
 href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190">i915=
#5190</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-270:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-3/igt@kms_rotation_crc@sprite-rotation-270.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
12755">i915#12755</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_158737v4/shard-dg2-11/igt@kms_rotation_crc@sprite-rotation-=
270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/15689">i915#15689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic-fastset:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906">i91=
5#9906</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_158737v4/shard-dg2-11/igt@kms_vrr@flip-basic-fastset.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i9=
15#15689</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@seamless-rr-switch-drrs:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-drrs.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544=
">i915#14544</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/9906">i915#9906</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@kms_vrr@seamless-rr-switc=
h-drrs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/9906">i915#9906</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_aperture_limit:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-1/igt@prime_mmap@test_aperture_limit.html">SKIP</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14121"=
>i915#14121</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_158737v4/shard-dg2-11/igt@prime_mmap@test_aperture_limit.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
15689">i915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-gtt:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@prime_vgem@basic-gtt.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i915#3708=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4=
077">i915#4077</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_158737v4/shard-dg2-11/igt@prime_vgem@basic-gtt.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">=
i915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-read:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-rkl-6/igt@prime_vgem@basic-read.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544">i915#145=
44</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/3708">i915#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_158737v4/shard-rkl-4/igt@prime_vgem@basic-read=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/3291">i915#3291</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@fence-write-hang:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@prime_vgem@fence-write-hang.html">SKIP</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708">i9=
15#3708</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_158737v4/shard-dg2-11/igt@prime_vgem@fence-write-hang.html">SKIP</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">=
i915#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@sriov_basic@enable-vfs-autoprobe-off:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-3/igt@sriov_basic@enable-vfs-autoprobe-off.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
9917">i915#9917</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_158737v4/shard-dg2-11/igt@sriov_basic@enable-vfs-autoprobe-of=
f.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/15689">i915#15689</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@tools_test@sysfs_l3_parity:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_18022/shard-dg2-11/igt@tools_test@sysfs_l3_parity.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4818">i91=
5#4818</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_158737v4/shard-dg2-11/igt@tools_test@sysfs_l3_parity.html">SKIP</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15689">i9=
15#15689</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/2575">i915#2575</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/4818">i915#4818</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18022 -&gt; Patchwork_158737v4</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18022: 45a3045fc0dc46a893cb8bbe304afafd4120c904 @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_8765: 8765<br />
  Patchwork_158737v4: 45a3045fc0dc46a893cb8bbe304afafd4120c904 @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============1779369424880363626==--
