Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ID/ZOjgBzGkoNQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 19:15:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 397FF36E538
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 19:15:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7DF610ED3A;
	Tue, 31 Mar 2026 17:15:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from a3b018990fe9 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 278BD10ED3A;
 Tue, 31 Mar 2026 17:15:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3550875754714276609=="
MIME-Version: 1.0
Subject: =?utf-8?q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_series_starting_with_=5B1?=
 =?utf-8?q?/2=5D_drm/i915=3A_Track_fence_region_ID_in_plane_state?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 31 Mar 2026 17:15:33 -0000
Message-ID: <177497733313.417276.10379317178342956060@a3b018990fe9>
X-Patchwork-Hint: ignore
References: <20260331162138.19258-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20260331162138.19258-1-ville.syrjala@linux.intel.com>
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
X-Rspamd-Queue-Id: 397FF36E538
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--===============3550875754714276609==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915: Track fence region ID in plane state
URL   : https://patchwork.freedesktop.org/series/164182/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_18256 -> Patchwork_164182v1
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_164182v1 absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_164182v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
  to document this new failure mode, which will reduce false positives in CI.

  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/index.html

Participating hosts (41 -> 40)
------------------------------

  Additional (1): bat-adls-6 
  Missing    (2): bat-dg2-13 fi-snb-2520m 

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_164182v1:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_busy@basic:
    - fi-pnv-d510:        [PASS][1] -> [ABORT][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-pnv-d510/igt@kms_busy@basic.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-pnv-d510/igt@kms_busy@basic.html

  * igt@kms_busy@basic@flip:
    - fi-cfl-8700k:       [PASS][3] -> [DMESG-WARN][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-cfl-8700k/igt@kms_busy@basic@flip.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-cfl-8700k/igt@kms_busy@basic@flip.html
    - bat-adls-6:         NOTRUN -> [DMESG-WARN][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/bat-adls-6/igt@kms_busy@basic@flip.html
    - fi-pnv-d510:        [PASS][6] -> [DMESG-WARN][7]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-pnv-d510/igt@kms_busy@basic@flip.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-pnv-d510/igt@kms_busy@basic@flip.html
    - bat-rpls-4:         [PASS][8] -> [DMESG-WARN][9]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/bat-rpls-4/igt@kms_busy@basic@flip.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/bat-rpls-4/igt@kms_busy@basic@flip.html
    - fi-kbl-7567u:       [PASS][10] -> [ABORT][11] +1 other test abort
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-kbl-7567u/igt@kms_busy@basic@flip.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-kbl-7567u/igt@kms_busy@basic@flip.html
    - bat-jsl-5:          [PASS][12] -> [ABORT][13] +1 other test abort
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/bat-jsl-5/igt@kms_busy@basic@flip.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/bat-jsl-5/igt@kms_busy@basic@flip.html
    - fi-tgl-1115g4:      [PASS][14] -> [DMESG-WARN][15]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-tgl-1115g4/igt@kms_busy@basic@flip.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-tgl-1115g4/igt@kms_busy@basic@flip.html
    - fi-cfl-guc:         [PASS][16] -> [DMESG-WARN][17]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-cfl-guc/igt@kms_busy@basic@flip.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-cfl-guc/igt@kms_busy@basic@flip.html
    - fi-cfl-8109u:       [PASS][18] -> [ABORT][19] +1 other test abort
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-cfl-8109u/igt@kms_busy@basic@flip.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-cfl-8109u/igt@kms_busy@basic@flip.html

  * igt@kms_busy@basic@modeset:
    - fi-cfl-8700k:       [PASS][20] -> [ABORT][21] +1 other test abort
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-cfl-8700k/igt@kms_busy@basic@modeset.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-cfl-8700k/igt@kms_busy@basic@modeset.html
    - bat-adls-6:         NOTRUN -> [ABORT][22] +1 other test abort
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/bat-adls-6/igt@kms_busy@basic@modeset.html
    - fi-glk-j4005:       [PASS][23] -> [ABORT][24] +1 other test abort
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-glk-j4005/igt@kms_busy@basic@modeset.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-glk-j4005/igt@kms_busy@basic@modeset.html
    - bat-rpls-4:         [PASS][25] -> [ABORT][26] +1 other test abort
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/bat-rpls-4/igt@kms_busy@basic@modeset.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/bat-rpls-4/igt@kms_busy@basic@modeset.html
    - fi-tgl-1115g4:      [PASS][27] -> [ABORT][28] +1 other test abort
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-tgl-1115g4/igt@kms_busy@basic@modeset.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-tgl-1115g4/igt@kms_busy@basic@modeset.html
    - fi-cfl-guc:         [PASS][29] -> [ABORT][30] +1 other test abort
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-cfl-guc/igt@kms_busy@basic@modeset.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-cfl-guc/igt@kms_busy@basic@modeset.html

  
#### Warnings ####

  * igt@kms_busy@basic@modeset:
    - fi-pnv-d510:        [SKIP][31] -> [ABORT][32]
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-pnv-d510/igt@kms_busy@basic@modeset.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-pnv-d510/igt@kms_busy@basic@modeset.html

  
New tests
---------

  New tests have been introduced between CI_DRM_18256 and Patchwork_164182v1:

### New IGT tests (60) ###

  * igt@kms_busy@addfb25-4-tiled:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@addfb25-bad-modifier:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@addfb25-framebuffer-vs-set-tiling:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@addfb25-modifier-no-flag:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@addfb25-x-tiled-legacy:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@addfb25-x-tiled-mismatch-legacy:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@addfb25-y-tiled-legacy:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@addfb25-y-tiled-small-legacy:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@addfb25-yf-tiled-legacy:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@bad-close:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@bad-flink:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@bad-open:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@bad-pitch-0:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@bad-pitch-1024:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@bad-pitch-128:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@bad-pitch-256:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@bad-pitch-32:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@bad-pitch-63:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@bad-pitch-65536:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@bad-pitch-999:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@basic-all:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@basic-await:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@basic-each:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@basic-eu-total:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@basic-process:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@basic-subslice-total:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@basic-x-tiled-legacy:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@basic-y-tiled-legacy:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@bo-too-small:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@bo-too-small-due-to-tiling:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@busy:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@clobberred-modifier:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@create-fd-close:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@double-flink:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@engines:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@error-state-basic:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@flink-lifetime:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@framebuffer-vs-set-tiling:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@info:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@invalid-get-prop:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@invalid-get-prop-any:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@invalid-set-prop:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@invalid-set-prop-any:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@nb-await:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@no-handle:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@nullptr:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@read:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@read-all-entries:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@safe-alignment:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@size-max:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@small-bo:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@tile-pitch-mismatch:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@too-high:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@too-wide:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@unused-handle:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@unused-modifier:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@unused-offsets:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@unused-pitches:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@wait:
    - Statuses :
    - Exec time: [None] s

  * igt@kms_busy@write:
    - Statuses :
    - Exec time: [None] s

  

Known issues
------------

  Here are the changes found in Patchwork_164182v1 that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@dmabuf@all-tests@dma_fence_chain:
    - fi-skl-6600u:       NOTRUN -> [SKIP][33]
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-skl-6600u/igt@dmabuf@all-tests@dma_fence_chain.html

  * igt@gem_tiled_pread_basic@basic:
    - bat-adls-6:         NOTRUN -> [SKIP][34] ([i915#15656])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/bat-adls-6/igt@gem_tiled_pread_basic@basic.html

  * igt@i915_selftest@live:
    - bat-dg2-8:          [PASS][35] -> [DMESG-FAIL][36] ([i915#12061]) +1 other test dmesg-fail
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/bat-dg2-8/igt@i915_selftest@live.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/bat-dg2-8/igt@i915_selftest@live.html

  * igt@i915_selftest@live@mman:
    - bat-atsm-1:         [PASS][37] -> [DMESG-FAIL][38] ([i915#14204])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/bat-atsm-1/igt@i915_selftest@live@mman.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/bat-atsm-1/igt@i915_selftest@live@mman.html

  * igt@i915_selftest@live@workarounds:
    - bat-arlh-3:         [PASS][39] -> [DMESG-FAIL][40] ([i915#12061]) +1 other test dmesg-fail
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/bat-arlh-3/igt@i915_selftest@live@workarounds.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html
    - bat-arls-5:         [PASS][41] -> [DMESG-FAIL][42] ([i915#12061]) +1 other test dmesg-fail
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/bat-arls-5/igt@i915_selftest@live@workarounds.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/bat-arls-5/igt@i915_selftest@live@workarounds.html

  * igt@intel_hwmon@hwmon-read:
    - bat-adls-6:         NOTRUN -> [SKIP][43] ([i915#7707]) +1 other test skip
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/bat-adls-6/igt@intel_hwmon@hwmon-read.html

  * igt@kms_busy@basic@modeset:
    - fi-kbl-7567u:       [PASS][44] -> [INCOMPLETE][45] ([i915#10056])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-kbl-7567u/igt@kms_busy@basic@modeset.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-kbl-7567u/igt@kms_busy@basic@modeset.html
    - bat-jsl-5:          [PASS][46] -> [INCOMPLETE][47] ([i915#10056])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/bat-jsl-5/igt@kms_busy@basic@modeset.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/bat-jsl-5/igt@kms_busy@basic@modeset.html
    - fi-cfl-8109u:       [PASS][48] -> [INCOMPLETE][49] ([i915#10056])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-cfl-8109u/igt@kms_busy@basic@modeset.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-cfl-8109u/igt@kms_busy@basic@modeset.html

  
#### Possible fixes ####

  * igt@i915_selftest@live:
    - fi-skl-6600u:       [INCOMPLETE][50] ([i915#15859]) -> [PASS][51]
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-skl-6600u/igt@i915_selftest@live.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-skl-6600u/igt@i915_selftest@live.html

  * igt@i915_selftest@live@gem_contexts:
    - fi-skl-6600u:       [INCOMPLETE][52] -> [PASS][53]
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html

  
#### Warnings ####

  * igt@i915_selftest@live:
    - bat-atsm-1:         [DMESG-FAIL][54] ([i915#12061]) -> [DMESG-FAIL][55] ([i915#12061] / [i915#14204])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/bat-atsm-1/igt@i915_selftest@live.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/bat-atsm-1/igt@i915_selftest@live.html

  
  [i915#10056]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056
  [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
  [i915#14204]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
  [i915#15656]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15656
  [i915#15859]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15859
  [i915#7707]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707


Build changes
-------------

  * Linux: CI_DRM_18256 -> Patchwork_164182v1

  CI-20190529: 20190529
  CI_DRM_18256: 779129c7868f4c7205901d6e57b25de52b411d1c @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_8839: 8839
  Patchwork_164182v1: 779129c7868f4c7205901d6e57b25de52b411d1c @ git://anongit.freedesktop.org/gfx-ci/linux

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/index.html

--===============3550875754714276609==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915: Track fence region ID in plane state</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/164182/">https://patchwork.freedesktop.org/series/164182/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_18256 -&gt; Patchwork_164182v1</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_164182v1 absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_164182v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<p>External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/index.html</p>
<h2>Participating hosts (41 -&gt; 40)</h2>
<p>Additional (1): bat-adls-6 <br />
  Missing    (2): bat-dg2-13 fi-snb-2520m </p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_164182v1:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_busy@basic:</p>
<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-pnv-d510/igt@kms_busy@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-pnv-d510/igt@kms_busy@basic.html">ABORT</a></li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@flip:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-cfl-8700k/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-cfl-8700k/igt@kms_busy@basic@flip.html">DMESG-WARN</a></li>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/bat-adls-6/igt@kms_busy@basic@flip.html">DMESG-WARN</a></li>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-pnv-d510/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-pnv-d510/igt@kms_busy@basic@flip.html">DMESG-WARN</a></li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/bat-rpls-4/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/bat-rpls-4/igt@kms_busy@basic@flip.html">DMESG-WARN</a></li>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-kbl-7567u/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-kbl-7567u/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/bat-jsl-5/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/bat-jsl-5/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-tgl-1115g4/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-tgl-1115g4/igt@kms_busy@basic@flip.html">DMESG-WARN</a></li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-cfl-guc/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-cfl-guc/igt@kms_busy@basic@flip.html">DMESG-WARN</a></li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-cfl-8109u/igt@kms_busy@basic@flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-cfl-8109u/igt@kms_busy@basic@flip.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>fi-cfl-8700k:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-cfl-8700k/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-cfl-8700k/igt@kms_busy@basic@modeset.html">ABORT</a> +1 other test abort</li>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/bat-adls-6/igt@kms_busy@basic@modeset.html">ABORT</a> +1 other test abort</li>
<li>fi-glk-j4005:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-glk-j4005/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-glk-j4005/igt@kms_busy@basic@modeset.html">ABORT</a> +1 other test abort</li>
<li>bat-rpls-4:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/bat-rpls-4/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/bat-rpls-4/igt@kms_busy@basic@modeset.html">ABORT</a> +1 other test abort</li>
<li>fi-tgl-1115g4:      <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-tgl-1115g4/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-tgl-1115g4/igt@kms_busy@basic@modeset.html">ABORT</a> +1 other test abort</li>
<li>fi-cfl-guc:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-cfl-guc/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-cfl-guc/igt@kms_busy@basic@modeset.html">ABORT</a> +1 other test abort</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@kms_busy@basic@modeset:<ul>
<li>fi-pnv-d510:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-pnv-d510/igt@kms_busy@basic@modeset.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-pnv-d510/igt@kms_busy@basic@modeset.html">ABORT</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_18256 and Patchwork_164182v1:</p>
<h3>New IGT tests (60)</h3>
<ul>
<li>
<p>igt@kms_busy@addfb25-4-tiled:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@addfb25-bad-modifier:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@addfb25-framebuffer-vs-set-tiling:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@addfb25-modifier-no-flag:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@addfb25-x-tiled-legacy:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@addfb25-x-tiled-mismatch-legacy:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@addfb25-y-tiled-legacy:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@addfb25-y-tiled-small-legacy:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@addfb25-yf-tiled-legacy:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@bad-close:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@bad-flink:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@bad-open:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@bad-pitch-0:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@bad-pitch-1024:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@bad-pitch-128:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@bad-pitch-256:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@bad-pitch-32:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@bad-pitch-63:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@bad-pitch-65536:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@bad-pitch-999:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic-all:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic-await:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic-each:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic-eu-total:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic-process:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic-subslice-total:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic-x-tiled-legacy:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic-y-tiled-legacy:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@bo-too-small:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@bo-too-small-due-to-tiling:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@busy:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@clobberred-modifier:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@create-fd-close:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@double-flink:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@engines:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@error-state-basic:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@flink-lifetime:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@framebuffer-vs-set-tiling:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@info:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@invalid-get-prop:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@invalid-get-prop-any:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@invalid-set-prop:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@invalid-set-prop-any:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@nb-await:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@no-handle:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@nullptr:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@read:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@read-all-entries:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@safe-alignment:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@size-max:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@small-bo:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@tile-pitch-mismatch:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@too-high:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@too-wide:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@unused-handle:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@unused-modifier:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@unused-offsets:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@unused-pitches:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@wait:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
<li>
<p>igt@kms_busy@write:</p>
<ul>
<li>Statuses :</li>
<li>Exec time: [None] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_164182v1 that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@dmabuf@all-tests@dma_fence_chain:</p>
<ul>
<li>fi-skl-6600u:       NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-skl-6600u/igt@dmabuf@all-tests@dma_fence_chain.html">SKIP</a></li>
</ul>
</li>
<li>
<p>igt@gem_tiled_pread_basic@basic:</p>
<ul>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/bat-adls-6/igt@gem_tiled_pread_basic@basic.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15656">i915#15656</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>bat-dg2-8:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/bat-dg2-8/igt@i915_selftest@live.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/bat-dg2-8/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@mman:</p>
<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/bat-atsm-1/igt@i915_selftest@live@mman.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/bat-atsm-1/igt@i915_selftest@live@mman.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>bat-arlh-3:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/bat-arlh-3/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/bat-arlh-3/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
<li>bat-arls-5:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/bat-arls-5/igt@i915_selftest@live@workarounds.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/bat-arls-5/igt@i915_selftest@live@workarounds.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) +1 other test dmesg-fail</li>
</ul>
</li>
<li>
<p>igt@intel_hwmon@hwmon-read:</p>
<ul>
<li>bat-adls-6:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/bat-adls-6/igt@intel_hwmon@hwmon-read.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7707">i915#7707</a>) +1 other test skip</li>
</ul>
</li>
<li>
<p>igt@kms_busy@basic@modeset:</p>
<ul>
<li>fi-kbl-7567u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-kbl-7567u/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-kbl-7567u/igt@kms_busy@basic@modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056">i915#10056</a>)</li>
<li>bat-jsl-5:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/bat-jsl-5/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/bat-jsl-5/igt@kms_busy@basic@modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056">i915#10056</a>)</li>
<li>fi-cfl-8109u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-cfl-8109u/igt@kms_busy@basic@modeset.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-cfl-8109u/igt@kms_busy@basic@modeset.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10056">i915#10056</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@i915_selftest@live:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-skl-6600u/igt@i915_selftest@live.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15859">i915#15859</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-skl-6600u/igt@i915_selftest@live.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gem_contexts:</p>
<ul>
<li>fi-skl-6600u:       <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/fi-skl-6600u/igt@i915_selftest@live@gem_contexts.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>igt@i915_selftest@live:<ul>
<li>bat-atsm-1:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_18256/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_164182v1/bat-atsm-1/igt@i915_selftest@live.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204">i915#14204</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_18256 -&gt; Patchwork_164182v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_18256: 779129c7868f4c7205901d6e57b25de52b411d1c @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGT_8839: 8839<br />
  Patchwork_164182v1: 779129c7868f4c7205901d6e57b25de52b411d1c @ git://anongit.freedesktop.org/gfx-ci/linux</p>

</body>
</html>

--===============3550875754714276609==--
